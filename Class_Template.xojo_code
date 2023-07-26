#tag Class
Protected Class Class_Template
	#tag Method, Flags = &h21
		Private Function CreateUpdate_Template() As Boolean
		  If Self.Title.Trim.Length=0 Then Return False
		  
		  Try
		    
		    If Self.DatabaseID = 0 Then
		      
		      App.SDP_Database.ExecuteSQL("INSERT INTO template (title,negative) VALUES (?,?)", _
		      Self.Title,Self.Negative)
		      
		    Else
		      
		      App.SDP_Database.ExecuteSQL("UPDATE template SET title=? WHERE id=?",Self.Title,Self.DatabaseID)
		      
		    End If
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT id FROM template WHERE title=?",Self.Title)
		    
		    If RS <> Nil And Not RS.AfterLastRow Then
		      
		      Self.DatabaseID = RS.Column("id").IntegerValue
		      
		    Else
		      
		      Return False
		      
		    End If
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save() As Boolean
		  If Not Self.CreateUpdate_Template Then Return False
		  
		  If Self.DatabaseID<1 Then Return False
		  
		  Try
		    
		    App.SDP_Database.ExecuteSQL("DELETE FROM keyword_template WHERE template_id=?", Self.DatabaseID)
		    
		    For Each KW As Class_Keyword In Self.Keywords
		      
		      App.SDP_Database.ExecuteSQL("INSERT INTO keyword_template (keyword_id,template_id,weight,position) VALUES " + _
		      "(?,?,?,?)", _
		      KW.DatabaseID, _
		      Self.DatabaseID, _
		      KW.Weight, _
		      KW.Position)
		      
		    Next
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		DatabaseID As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Keywords() As Class_Keyword
	#tag EndProperty

	#tag Property, Flags = &h0
		Negative As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Title As String
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
	#tag EndViewBehavior
End Class
#tag EndClass
