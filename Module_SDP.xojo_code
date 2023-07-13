#tag Module
Protected Module Module_SDP
	#tag Method, Flags = &h0
		Sub ConnectToFile(Extends DB AS SQLiteDatabase)
		  Try
		    
		    If SpecialFolder.UserHome.Child(UserHomeFolder) <> Nil Then
		      
		      If Not SpecialFolder.UserHome.Child(UserHomeFolder).Exists Then
		        
		        SpecialFolder.UserHome.Child(UserHomeFolder).CreateFolder
		        
		      End If
		      
		    Else
		      
		      Quit
		      
		    End If
		    
		    DB.DatabaseFile = SpecialFolder.UserHome.Child(UserHomeFolder).Child("SDP_Database.db")
		    
		    If DB.DatabaseFile = Nil Or Not DB.DatabaseFile.Exists Then
		      
		      DB.CreateNew
		      
		    End If
		    
		    If DB.DatabaseFile <> Nil And DB.DatabaseFile.Exists Then
		      
		      
		      DB.Connect
		      
		    Else
		      
		      Quit
		      
		    End If
		    
		  Catch err As IOException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    ShowSimpleMessageDialog(MessageDialog.IconTypes.Stop, "Quit", "Database could not be opened", "The Database File at " + Chr(34) + _
		    SpecialFolder.UserHome.Child(UserHomeFolder).Child("SDP_Database.db").NativePath + Chr(34) + _
		    " could not be opened.")
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    ShowSimpleMessageDialog(MessageDialog.IconTypes.Stop, "Quit", "There was an error while accessing the Database", _
		    "Error Code: " + Str(err.ErrorNumber) + ", Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateNew(Extends DB AS SQLiteDatabase)
		  Try
		    
		    DB.CreateDatabase
		    
		    // -- CREATE TABLE "category" -------------------------------------
		    DB.ExecuteSQL("CREATE TABLE category (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "label Text Not NULL, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ) );")
		    
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Subject');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Medium');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Style');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Artist');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Website');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Resolution');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Color');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Lighting');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Additional Details');")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Camera Angle');")
		    
		    // -- CREATE TABLE "keyword" --------------------------------------
		    DB.ExecuteSQL("CREATE TABLE  keyword (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "words Text Not NULL, " + _
		    "id_category Integer Not NULL, " + _
		    "weight Double DEFAULT '1', " + _
		    "negative Integer DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ), " + _
		    "CONSTRAINT unique_words UNIQUE ( words ) );")
		    
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('a sorceres',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('nsfw',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('blurry',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('out of focus',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('logo',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('username',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('picture frame',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('smudges',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('borderline',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('duplicate',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('error',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('ugly',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('deformed',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('bad-artist',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('out of frame',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('watermark',6,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('signature',6,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('grayscale',7,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('monochrome',7,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('bad hands',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('bad anatomy',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('lowres',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('normal quality',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('low quality',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('worst quality',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('badhandv4',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('full body',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('sexy pose',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('sky is blue',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('sun is shining',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('ripped blue jeans',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('latin sexy woman',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('seductive smile',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('traditional russian clothing',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('slim curvy body',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('female siberian Russian concubine',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('small breasts',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('nude',1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('native american woman',1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('digital painting',2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('digital art',2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('3d rendering',2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('steampunk',3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('biopunk',3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('clock-punk',3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('hyperrealistic',3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('masterpiece',3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('realistic',3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('resembling the works of Stanley Artgerm Lau and Alphonse Mucha',4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('resembling the works of Jules Verne',4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('art by Jarosław Jaśnikowski',4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('art by Emery Hawkins',4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('artstation',5);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('highly detailed',6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('iridescent gold',7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('polaroid',2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('film grain',6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('8k',6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('vibrant colors and shadows',7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('cinematic lighting',8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('lighting is warm and atmospheric',8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('rays of sunlight',8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('lighting is cold',8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('stunningly beautiful',9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('over the shoulder shot',10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('from behind',10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('medium shot',10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('photographed from {up close:front:behind}',10);")
		    
		    // -- CREATE TABLE "keyword_category" -----------------------------
		    DB.ExecuteSQL("CREATE TABLE keyword_category (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "id_keyword Integer Not NULL, " + _
		    "id_category Integer Not NULL, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ), " + _
		    "CONSTRAINT unique_id_keyword UNIQUE ( id_keyword ) );")
		    
		    // -- CREATE TABLE "preset" ---------------------------------------
		    DB.ExecuteSQL("CREATE TABLE preset (id Integer Not NULL PRIMARY KEY AUTOINCREMENT, " + _
		    "label Text Not NULL, " + _
		    "image BLOB, " + _
		    "model Text, " + _
		    "steps Integer DEFAULT 20, " + _
		    "guidance_scale Double DEFAULT 7, " + _
		    "seed Text DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ), " + _
		    "CONSTRAINT unique_label UNIQUE ( label ) );")
		    
		    DB.ExecuteSQL("INSERT INTO preset (label) VALUES ('_AUTOSAVE');")
		    
		    // -- CREATE TABLE "preset_keyword" -------------------------------
		    DB.ExecuteSQL("CREATE TABLE preset_keyword (id Integer PRIMARY KEY, " + _
		    "id_preset Integer Not NULL, " + _
		    "id_keyword Integer Not NULL, " + _
		    "weight Double DEFAULT '1', " + _
		    "negative Integer Not NULL DEFAULT 1, " + _
		    "position Integer DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ) );")
		    
		  Catch err As IOException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

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


	#tag Property, Flags = &h0
		UserHomeFolder As String = "Stable Diffusion Prompter"
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
End Module
#tag EndModule
