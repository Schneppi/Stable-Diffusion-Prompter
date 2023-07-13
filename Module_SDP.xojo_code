#tag Module
Protected Module Module_SDP
	#tag Method, Flags = &h0
		Function Export_Keywords(Extends DB AS SQLiteDatabase) As Boolean
		  Try
		    
		    Var RS As RowSet
		    RS = DB.SelectSQL("SELECT keyword.id,keyword.words,category.id As CatId,keyword.negative,keyword.weight " + _
		    "FROM category " + _
		    "INNER Join keyword ON category.id = keyword.id_category " + _
		    "ORDER BY keyword.words")
		    
		    
		    If RS <> Nil Then
		      
		      Var f As FolderItem
		      Var t As TextOutputStream
		      f = FolderItem.ShowSaveFileDialog(FileTypes_Text.Text,"Keywords.csv")
		      
		      If f <> Nil Then
		        
		        t = TextOutputStream.Open(f)
		        
		        While Not RS.AfterLastRow
		          
		          t.Write RS.Column("words").StringValue + ";" + _
		          RS.Column("weight").DoubleValue.ToString + ";" + _
		          RS.Column("negative").BooleanValue.ToString + ";" + _
		          RS.Column("CatId").IntegerValue.ToString + EndOfLine
		          
		          RS.MoveToNextRow
		          
		        Wend
		        
		        t.Close
		        
		      End If
		      
		      Return True
		      
		    End If
		    
		  Catch err As IOException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Import_Keywords(Extends DB As SQLiteDatabase) As Boolean
		  Try
		    
		    Var f As FolderItem
		    Var t As TextInputStream
		    Var CellsFromLine() As String
		    Var b As Boolean
		    Var RS As RowSet
		    
		    f = FolderItem.ShowOpenFileDialog(FileTypes_Text.Text)
		    
		    If f <> Nil Then
		      
		      t = TextInputStream.Open(f)
		      t.Encoding = Encodings.UTF8
		      
		      Do
		        
		        CellsFromLine = t.ReadLine.DefineEncoding(Encodings.UTF8).Split(";")
		        
		        If CellsFromLine.Count=4 Then
		          
		          If CellsFromLine(2) = "True" Then
		            b = True
		          Else
		            b = False
		          End If
		          
		          // We could Try...Catch Error 19 in Database Exceptions, to prevent trying to import doubles. But...
		          RS = DB.SelectSQL("SELECT * FROM keyword WHERE words=?", CellsFromLine(0))
		          
		          If RS<>Nil And RS.AfterLastRow Then
		            
		            DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES (?,?,?,?)", _
		            CellsFromLine(0), _
		            CellsFromLine(1).ToDouble, _
		            b, _
		            CellsFromLine(3).ToInteger)
		            
		          End If
		          
		        End If
		        
		      Loop Until t.EndOfFile
		      
		      t.Close
		      
		    End If
		    
		    Return True
		    
		  Catch err As IOException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ProportionalScale(Pic as Picture, Width as integer, Height as Integer) As Picture
		  If pic=Nil Then Return Nil
		  
		  // calculate the scale factor
		  Dim factor As Double = Min( Height / Pic.Height, Width / Pic.Width )
		  
		  // Calculate new size
		  dim w as integer = Pic.Width * factor
		  dim h as integer = Pic.Height * factor
		  
		  // create new picture
		  dim NewPic as new Picture( w, h, 32 )
		  
		  // draw picture in the new size
		  NewPic.Graphics.DrawPicture( Pic, 0, 0, w, h, 0, 0, Pic.Width, Pic.Height )
		  
		  // return scaled image
		  Return NewPic
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowSimpleMessageDialog(Icon As MessageDialog.IconTypes, ActionButtonCaption As String, Message As String, Explanation As String)
		  Var d As New MessageDialog
		  Var b As MessageDialogButton
		  d.IconType = Icon
		  d.ActionButton.Caption = ActionButtonCaption
		  d.CancelButton.Visible = False
		  d.Message = Message
		  d.Explanation = Explanation
		  
		  b = d.ShowModal
		End Sub
	#tag EndMethod


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
End Module
#tag EndModule
