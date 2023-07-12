#tag Class
Protected Class Class_Keyword
	#tag Method, Flags = &h0
		Sub Constructor(DatabaseID As Integer)
		  If DatabaseID>0 Then
		    
		    Self.DatabaseID=DatabaseID
		    Self.Load
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Delete() As Boolean
		  If Self.DatabaseID>0 Then
		    
		    Try
		      
		      App.SDP_Database.ExecuteSQL("DELETE FROM keyword WHERE id=?",Self.DatabaseID)
		      App.SDP_Database.ExecuteSQL("DELETE FROM preset_keyword WHERE id_keyword=?", Self.DatabaseID)
		      
		      Return True
		      
		    Catch err As DatabaseException
		      
		      System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		      
		    End Try
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load()
		  If Self.DatabaseID=0 Then Return
		  
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM keyword WHERE id=? ",Self.DatabaseID)
		    
		    If RS <> Nil And Not RS.AfterLastRow Then
		      
		      Self.Keyword = RS.Column("words").StringValue
		      Self.CategoryID = RS.Column("id_category").IntegerValue
		      Self.Negative = RS.Column("negative").BooleanValue
		      Self.Weight = RS.Column("weight").DoubleValue
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save() As Boolean
		  If Self.Keyword.Trim.Length=0 Then Return False
		  
		  Try
		    
		    If Self.DatabaseID = 0 Then
		      
		      App.SDP_Database.ExecuteSQL("INSERT INTO keyword (id_category,words,weight,negative) VALUES (?,?,?,?)", _
		      Self.CategoryID,Self.Keyword,Self.Weight,Self.Negative)
		      
		    Else
		      
		      App.SDP_Database.ExecuteSQL("UPDATE keyword SET weight=?,negative=? WHERE id=?",Self.Weight,Self.Negative,Self.DatabaseID)
		      
		    End If
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		CategoryID As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		DatabaseID As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Keyword As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Negative As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Position As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		Weight As Double = 1.00
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Keyword"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CategoryID"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Negative"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Position"
			Visible=false
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Weight"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DatabaseID"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
