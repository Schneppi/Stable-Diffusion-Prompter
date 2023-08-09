#tag Class
Protected Class Class_Model
	#tag Method, Flags = &h0
		Sub Delete()
		  Try
		    
		    App.SDP_Database.ExecuteSQL("DELETE FROM model WHERE name=?", Self.Name)
		    
		    Self.Name = ""
		    Self.PositivePrompt = ""
		    Self.NegativePrompt = ""
		    Self.Note = ""
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load()
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM model WHERE name=?", Self.Name)
		    
		    If RS<>Nil And Not RS.AfterLastRow Then
		      
		      Self.DatabaseID = RS.Column("id").IntegerValue
		      Self.PositivePrompt = RS.Column("recommended_positive").StringValue
		      Self.NegativePrompt = RS.Column("recommended_negative").StringValue
		      Self.Note = RS.Column("notes").StringValue
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  Try
		    
		    #Pragma BreakOnExceptions False
		    
		    App.SDP_Database.ExecuteSQL("INSERT INTO model (name,recommended_positive,recommended_negative,notes) VALUES (?,?,?,?)", Self.Name,Self.PositivePrompt,Self.NegativePrompt,Self.Note)
		    
		    #Pragma BreakOnExceptions True
		    
		  Catch err As DatabaseException
		    
		    If err.Message="UNIQUE constraint failed: model.name" Then
		      
		      Update
		      
		    Else
		      
		      System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		      
		    End If
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update()
		  Try
		    
		    App.SDP_Database.ExecuteSQL("UPDATE model SET recommended_positive=?,recommended_negative=?,notes=? WHERE name=?", Self.PositivePrompt,Self.NegativePrompt,Self.Note,Self.Name)
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DatabaseID As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NegativePrompt As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Note As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PositivePrompt As String
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
			Name="PositivePrompt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NegativePrompt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Note"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
