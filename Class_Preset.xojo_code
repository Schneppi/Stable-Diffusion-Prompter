#tag Class
Protected Class Class_Preset
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
		  If Self.DatabaseID<1 Then Return False
		  
		  Try
		    
		    App.SDP_Database.ExecuteSQL("DELETE FROM preset WHERE id=?",Self.DatabaseID)
		    App.SDP_Database.ExecuteSQL("DELETE FROM preset_keyword WHERE id_preset=?", Self.DatabaseID)
		    
		    Return True
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Keyword_Add(Keyword As Class_Keyword)
		  If Self.Keywords.Count>0 Then
		    
		    For X As Integer = Self.Keywords.LastIndex DownTo 0
		      
		      If Self.Keywords(X).DatabaseID=Keyword.DatabaseID Then
		        
		        Self.Keywords(X).Weight = Keyword.Weight
		        Self.Keywords(X).Position = Keyword.Position
		        
		        Return
		        
		      End If
		    Next
		    
		  End If
		  
		  Self.Keywords.Add Keyword
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Keyword_Add(DatabaseID As Integer)
		  Var kw As New Class_Keyword(DatabaseID)
		  
		  If Self.Keywords.Count>0 Then
		    
		    For X As Integer = Self.Keywords.LastIndex DownTo 0
		      
		      If Self.Keywords(X).DatabaseID=kw.DatabaseID Then
		        
		        // Self.Keywords(X).Weight = kw.Weight
		        // Self.Keywords(X).Position = jw.Position
		        
		        Return
		        
		      End If
		    Next
		    
		  End If
		  
		  Self.Keywords.Add kw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Keyword_Position_Get(DatabaseID As Integer) As Integer
		  Var i As Integer = 999999
		  
		  For Each k As Class_Keyword In Self.Keywords
		    
		    If k.DatabaseID = DatabaseID Then
		      
		      i = k.Position
		      Exit
		      
		    End If
		    
		  Next
		  
		  Return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Keyword_Remove(Keyword As Class_Keyword)
		  If Self.Keywords.Count>0 Then
		    
		    For X As Integer = Self.Keywords.LastIndex DownTo 0
		      
		      If Self.Keywords(X).DatabaseID=Keyword.DatabaseID Then
		        
		        Self.Keywords.RemoveAt(X)
		        Return
		        
		      End If
		      
		    Next
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Keyword_Remove(DatabaseID As Integer)
		  If Self.Keywords.Count>0 Then
		    
		    For X As Integer = Self.Keywords.LastIndex DownTo 0
		      
		      If Self.Keywords(X).DatabaseID=DatabaseID Then
		        
		        Self.Keywords.RemoveAt(X)
		        Return
		        
		      End If
		      
		    Next
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load()
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM preset WHERE id=?", Self.DatabaseID)
		    
		    If RS<>Nil And Not RS.AfterLastRow Then
		      
		      Self.Label = RS.Column("label").StringValue
		      Self.Diffusion_Model = RS.Column("model").StringValue
		      Self.Seed = RS.Column("seed").StringValue
		      Self.Steps = RS.Column("steps").IntegerValue
		      Self.Guidance_Scale = RS.Column("guidance_scale").DoubleValue
		      
		      If RS.Column("image").PictureValue<>Nil Then
		        
		        Self.Sample = RS.Column("image").PictureValue
		        
		      End If
		      
		    End If
		    
		    Self.Keywords.RemoveAll
		    RS = App.SDP_Database.SelectSQL("SELECT * FROM preset_keyword WHERE id_preset=? ORDER BY position", Self.DatabaseID)
		    
		    If RS <> Nil Then
		      
		      While Not RS.AfterLastRow
		        
		        Var KW As New Class_Keyword(RS.Column("id_keyword").IntegerValue,Self.DatabaseID)
		        If KW.DatabaseID>0 Then
		          
		          Self.Keywords.Add KW
		          
		        End If
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Prompt_Generate() As String()
		  Var Prompt(1) As String
		  
		  For Each KW As Class_Keyword In Self.Keywords
		    
		    KW.Refresh
		    
		    If KW.Negative Then
		      
		      If KW.Weight <> 1 Then
		        
		        Prompt(1) = Prompt(1) + "(" + KW.Keyword + ":" + KW.Weight.ToString + "), "
		        
		      Else
		        
		        Prompt(1) = Prompt(1) + KW.Keyword + ", "
		        
		      End If
		      
		    Else
		      
		      If KW.Weight <> 1 Then
		        
		        Prompt(0) = Prompt(0) + "(" + KW.Keyword + ":" + KW.Weight.ToString + "), "
		        
		      Else
		        
		        Prompt(0) = Prompt(0) + KW.Keyword + ", "
		        
		      End If
		      
		    End If
		    
		  Next
		  
		  Prompt(0) = Prompt(0).Left(Prompt(0).Length-2)
		  Prompt(1) = Prompt(1).Left(Prompt(1).Length-2)
		  
		  Return Prompt
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save() As Boolean
		  If Self.Label.Trim.Length=0 Then Return False
		  
		  Var MB As MemoryBlock
		  // Database Preset ID is always 1 and we do not want to save the current displayed image in it
		  If Self.Sample<>Nil And Self.DatabaseID <> 1 Then MB = Self.Sample.ToData(Picture.Formats.PNG)
		  
		  Try
		    
		    If Self.DatabaseID = 0 Then
		      
		      App.SDP_Database.ExecuteSQL("INSERT INTO preset (label,image,model,seed,steps,guidance_scale) VALUES (?,?,?,?,?,?)", _
		      Self.Label,MB,Self.Diffusion_Model,Self.Seed,Self.Steps,Self.Guidance_Scale)
		      
		      Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT id FROM preset WHERE label=?",Self.Label)
		      
		      If RS <> Nil And Not RS.AfterLastRow Then
		        
		        Self.DatabaseID = RS.Column("id").IntegerValue
		        
		      Else
		        
		        Return False
		        
		      End If
		      
		    Else
		      
		      App.SDP_Database.ExecuteSQL("UPDATE preset SET image=?,model=?,seed=?,steps=?,guidance_scale=? WHERE id=?",MB,Self.Diffusion_Model,Self.Seed,Self.Steps,Self.Guidance_Scale,Self.DatabaseID)
		      
		    End If
		    
		    If Self.DatabaseID<1 Then Return False
		    
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
		Guidance_Scale As Double = 7.00
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
		Seed As String
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
			Type="Double"
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
			Type="String"
			EditorType="MultiLineEditor"
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
