#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub Closing()
		  App.SDP_Database.Close
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Self.AllowAutoQuit = True
		  Database_ConnectToFile
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub Database_ConnectToFile()
		  Try
		    
		    If SpecialFolder.UserHome.Child(UserHomeFolder) <> Nil Then
		      
		      If Not SpecialFolder.UserHome.Child(UserHomeFolder).Exists Then
		        
		        SpecialFolder.UserHome.Child(UserHomeFolder).CreateFolder
		        
		      End If
		      
		    Else
		      
		      Quit
		      
		    End If
		    
		    App.SDP_Database = New SQLiteDatabase
		    App.SDP_Database.DatabaseFile = SpecialFolder.UserHome.Child(UserHomeFolder).Child("SDP_Database.db")
		    
		    If App.SDP_Database.DatabaseFile = Nil Or Not App.SDP_Database.DatabaseFile.Exists Then
		      
		      App.Database_CreateNew
		      
		    End If
		    
		    If App.SDP_Database.DatabaseFile <> Nil And App.SDP_Database.DatabaseFile.Exists Then
		      
		      
		      App.SDP_Database.Connect
		      
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

	#tag Method, Flags = &h21
		Private Sub Database_CreateNew()
		  Try
		    
		    App.SDP_Database.CreateDatabase
		    
		    // -- CREATE TABLE "category" -------------------------------------
		    App.SDP_Database.ExecuteSQL("CREATE TABLE category (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "label Text Not NULL, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ) );")
		    
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Subject');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Medium');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Style');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Artist');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Website');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Resolution');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Color');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Lighting');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Additional Details');")
		    App.SDP_Database.ExecuteSQL("INSERT INTO category (label) VALUES ('Camera Angle');")
		    
		    // -- CREATE TABLE "keyword" --------------------------------------
		    App.SDP_Database.ExecuteSQL("CREATE TABLE  keyword (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "words Text Not NULL, " + _
		    "id_category Integer Not NULL, " + _
		    "weight Double DEFAULT '1', " + _
		    "negative Integer DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ) );")
		    
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('a sorceres',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('nsfw',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('blurry',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('out of focus',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('logo',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('username',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('picture frame',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('smudges',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('borderline',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('duplicate',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('error',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('ugly',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('deformed',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('bad-artist',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('out of frame',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('watermark',6,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('signature',6,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('grayscale',7,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('monochrome',7,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('bad hands',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('bad anatomy',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('lowres',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('normal quality',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('low quality',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('worst quality',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('badhandv4',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('full body',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('sexy pose',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('sky is blue',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('sun is shining',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('ripped blue jeans',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('latin sexy woman',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('seductive smile',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('traditional russian clothing',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('slim curvy body',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('female siberian Russian concubine',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('small breasts',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category,negative) VALUES ('nude',1,1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('native american woman',1);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('digital painting',2);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('digital art',2);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('3d rendering',2);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('steampunk',3);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('biopunk',3);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('clock-punk',3);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('hyperrealistic',3);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('masterpiece',3);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('realistic',3);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('resembling the works of Stanley Artgerm Lau and Alphonse Mucha',4);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('resembling the works of Jules Verne',4);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('art by Jarosław Jaśnikowski',4);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('art by Emery Hawkins',4);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('artstation',5);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('highly detailed',6);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('iridescent gold',7);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('polaroid',2);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('film grain',6);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('8k',6);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('vibrant colors and shadows',7);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('cinematic lighting',8);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('lighting is warm and atmospheric',8);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('rays of sunlight',8);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('lighting is cold',8);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('stunningly beautiful',9);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('over the shoulder shot',10);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('from behind',10);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('medium shot',10);")
		    App.SDP_Database.ExecuteSQL("INSERT INTO keyword (words,id_category) VALUES ('photographed from {up close:front:behind}',10);")
		    
		    // -- CREATE TABLE "keyword_category" -----------------------------
		    App.SDP_Database.ExecuteSQL("CREATE TABLE keyword_category (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "id_keyword Integer Not NULL, " + _
		    "id_category Integer Not NULL, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ), " + _
		    "CONSTRAINT unique_id_keyword UNIQUE ( id_keyword ) );")
		    
		    // -- CREATE TABLE "preset" ---------------------------------------
		    App.SDP_Database.ExecuteSQL("CREATE TABLE preset (id Integer Not NULL PRIMARY KEY AUTOINCREMENT, " + _
		    "label Text Not NULL, " + _
		    "image BLOB, " + _
		    "model Text, " + _
		    "steps Integer DEFAULT 20, " + _
		    "guidance_scale Double DEFAULT 7, " + _
		    "seed Text DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE ( id ), " + _
		    "CONSTRAINT unique_label UNIQUE ( label ) );")
		    
		    App.SDP_Database.ExecuteSQL("INSERT INTO preset (label) VALUES ('_AUTOSAVE');")
		    
		    // -- CREATE TABLE "preset_keyword" -------------------------------
		    App.SDP_Database.ExecuteSQL("CREATE TABLE preset_keyword (id Integer PRIMARY KEY, " + _
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


	#tag Property, Flags = &h0
		SDP_Database As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private UserHomeFolder As String = "Stable Diffusion Prompter"
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
