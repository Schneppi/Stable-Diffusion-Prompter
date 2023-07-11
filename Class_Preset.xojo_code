#tag Class
Protected Class Class_Preset
	#tag Method, Flags = &h0
		Function Delete() As Boolean
		  If Self.DatabaseID>0 Then
		    
		    Try
		      
		      App.SDP_Database.ExecuteSQL("DELETE FROM preset WHERE id=?",Self.DatabaseID)
		      App.SDP_Database.ExecuteSQL("DELETE FROM preset_keyword WHERE id_preset=?", Self.DatabaseID)
		      
		      Return True
		      
		    Catch err As DatabaseException
		      
		      System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		      
		    End Try
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load() As Boolean
		  If Self.DatabaseID=0 Then Return False
		  
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM preset WHERE id=?", Self.DatabaseID)
		    
		    If RS<>Nil And Not RS.AfterLastRow Then
		      
		      If RS.Column("image").PictureValue<>Nil Then
		        
		        Self.Sample = RS.Column("image").PictureValue
		        
		      Else
		        
		        Self.Sample = New Picture(200,200)
		        
		      End If
		      
		      Self.Diffusion_Model = RS.Column("model").StringValue
		      Self.Seed = RS.Column("seed").DoubleValue
		      Self.Steps = RS.Column("steps").IntegerValue
		      Self.Guidance_Scale = RS.Column("guidance_scale").IntegerValue
		      
		    End If
		    
		    RS = App.SDP_Database.SelectSQL("SELECT * FROM preset_keyword WHERE id_preset=?", Self.DatabaseID)
		    
		    If RS <> Nil Then
		      
		      While Not RS.AfterLastRow
		        
		        Var KW As New Class_Keyword
		        
		        KW.DatabaseID = RS.Column("id_keyword").IntegerValue
		        
		        If KW.Load Then
		          
		          Self.Keywords.Add KW
		          
		        End If
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save() As Boolean
		  Try
		    
		    If Self.Sample=Nil Then Self.Sample= New Picture(200,200)
		    Var MB As MemoryBlock = Self.Sample.ToData(Picture.Formats.PNG)
		    
		    If DatabaseID = 0 Then
		      
		      App.SDP_Database.ExecuteSQL("INSERT INTO preset (label,image,model,seed,steps,guidance_scale) VALUES (?,?,?,?,?,?)", _
		      Self.Label,MB,Self.Diffusion_Model,Self.Seed,Self.Steps,Self.Guidance_Scale)
		      
		    Else
		      
		      App.SDP_Database.ExecuteSQL("UPDATE preset SET image=?,model=?,seed=?,steps=?,guidance_scale=? WHERE id=?",MB,Self.Diffusion_Model,Self.Seed,Self.Steps,Self.Guidance_Scale,Self.DatabaseID)
		      
		    End If
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT id FROM preset WHERE label=?",Self.Label)
		    
		    If RS <> Nil And Not RS.AfterLastRow Then
		      
		      Self.DatabaseID = RS.Column("id").IntegerValue
		      
		    End If
		    
		    App.SDP_Database.ExecuteSQL("DELETE FROM preset_keyword WHERE id_preset=?", Self.DatabaseID)
		    
		    For Each KW As Class_Keyword In Self.Keywords
		      
		      App.SDP_Database.ExecuteSQL("INSERT INTO preset_keyword (id_keyword,id_preset,negative,weight,position) VALUES " + _
		      "(?,?,?,?,?)", _
		      KW.DatabaseID, _
		      Self.DatabaseID, _
		      KW.Negative, _
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
		Diffusion_Model As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Guidance_Scale As Integer = 7.00
	#tag EndProperty

	#tag Property, Flags = &h0
		Keywords() As Class_Keyword
	#tag EndProperty

	#tag Property, Flags = &h0
		Label As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Sample As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		Seed As Double = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		Steps As Integer = 22
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
			Name="Diffusion_Model"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Guidance_Scale"
			Visible=false
			Group="Behavior"
			InitialValue="7.00"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Label"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sample"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Seed"
			Visible=false
			Group="Behavior"
			InitialValue="-1"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Steps"
			Visible=false
			Group="Behavior"
			InitialValue="22"
			Type="Integer"
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
