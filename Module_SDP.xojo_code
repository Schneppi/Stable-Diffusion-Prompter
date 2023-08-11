#tag Module
Protected Module Module_SDP
	#tag Method, Flags = &h0
		Function CalculateTokenCount(Prompt As String) As Integer
		  Var i As Integer
		  Var s As String
		  
		  Dim rx As New RegEx
		  rx.SearchPattern = "(?mi-Us)[a-zA-Z]"
		  
		  Dim rxOptions As RegExOptions = rx.Options
		  rxOptions.LineEndType = 4
		  
		  Dim match As RegExMatch = rx.Search( Prompt )
		  While match IsA RegExMatch
		    
		    s = s + match.SubExpressionString(0)
		    
		    match = rx.Search // Fetch the next match
		  Wend
		  
		  i = s.Trim.Length
		  
		  i = i / 4 // A rule of thumb is that one token generally corresponds to approximately 4 characters of text for common English text
		  
		  Return i
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Connect_SDP_Database(Extends DB AS SQLiteDatabase)
		  Try
		    
		    If SpecialFolder.UserHome.Child(UserHomeFolder) <> Nil Then
		      
		      If Not SpecialFolder.UserHome.Child(UserHomeFolder).Exists Then
		        
		        SpecialFolder.UserHome.Child(UserHomeFolder).CreateFolder
		        
		      End If
		      
		    Else
		      
		      Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "Missing Folder", "Folder " + SpecialFolder.UserHome.Child(UserHomeFolder).NativePath + _
		      " could not be accessed. The App will now shutdown. ")
		      
		      Quit
		      
		    End If
		    
		    DB.DatabaseFile = SpecialFolder.UserHome.Child(UserHomeFolder).Child("SDP_Database.db")
		    
		    If DB.DatabaseFile = Nil Or Not DB.DatabaseFile.Exists Then
		      
		      DB.Create_SDP_Database
		      
		    End If
		    
		    If DB.DatabaseFile <> Nil And DB.DatabaseFile.Exists Then
		      
		      
		      DB.Connect
		      
		    Else
		      
		      Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "Can't connect to the Database", "The App could not connect to the Database File at " + SpecialFolder.UserHome.Child(UserHomeFolder).NativePath + _
		      " and will now shutdown.")
		      
		      Quit
		      
		    End If
		    
		    If Not App.SDP_Database.Table_Exists("preferences") Then App.SDP_Database.Table_Create("preferences")
		    
		  Catch err As IOException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "Database could not be opened", "The Database File at " + Chr(34) + _
		    SpecialFolder.UserHome.Child(UserHomeFolder).Child("SDP_Database.db").NativePath + Chr(34) + _
		    " could not be opened.")
		    
		    Quit
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "There was an error while accessing the Database", _
		    "Error Code: " + Str(err.ErrorNumber) + ", Error Message: " + err.Message)
		    
		    Quit
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Create_SDP_Database(Extends DB AS SQLiteDatabase)
		  Try
		    
		    DB.CreateDatabase
		    
		    // -- CREATE TABLE "preferences" ----------------------------------
		    DB.ExecuteSQL("CREATE TABLE preferences (" + _
		    "id Integer Not NULL PRIMARY KEY AUTOINCREMENT, " + _
		    "pref_name Text Not NULL, " + _
		    "pref_setting Text Not NULL DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE (id))")
		    
		    // -- CREATE TABLE "category" -------------------------------------
		    DB.ExecuteSQL("CREATE TABLE category (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "label Text Not NULL, " + _
		    "CONSTRAINT unique_id UNIQUE (id))")
		    
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Subject')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Medium')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Style')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Artist')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Website')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Resolution')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Color')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Lighting')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Additional Details')")
		    DB.ExecuteSQL("INSERT INTO category (label) VALUES ('Camera Angle')")
		    
		    // -- CREATE TABLE "keyword" --------------------------------------
		    DB.ExecuteSQL("CREATE TABLE keyword (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "words Text Not NULL, " + _
		    "id_category Integer Not NULL, " + _
		    "weight Double DEFAULT '1', " + _
		    "negative Integer DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE (id), " + _
		    "CONSTRAINT unique_words UNIQUE (words))")
		    
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('16mm',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('3d rendering',0.3,0,2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('8k',1,0,6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('8k high resolution',1,0,6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('90s japan',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('Amidst a deep dark forest',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('Hyperrealism',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('London',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('RAW candid cinema',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('RAW image',1,0,6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('Unreal Engine 5',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('Victorian man',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('and skin adorned with iridescent scales',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('anime aesthetic',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('anime vibes',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('anime vintage colors',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Agnes Cecile',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Alphonse Mucha',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Artgerm',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Boris Vallejo',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Ed Blinkey',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Emery Hawkins',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Gary Panter and Loish',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Gerald Brom',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Greg Rutkowski',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('art by Jarosław Jaśnikowski',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('artstation',1,0,5);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('at dawn during autumn',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('at night',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('autumn lights',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('bad anatomy',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('bad hands',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('bad-artist',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('badhandv4',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('beautiful',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('best quality',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('biopunk',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('blurry',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('bokeh',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('borderline',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('breathtaking',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('brutalist grimdark fantasy',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('by Jorge Aguilar-Agon and Isol',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('chainmail',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('cinematic film still',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('cinematic lighting',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('cinematic still',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('clock-punk',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('cloudy',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('color graded Portra 400 film',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('colorful aesthetic',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('complementary colors',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('cyber background',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('deformed',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('dehazed',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('depth of field',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('detailed',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('digital art',1,0,2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('digital painting',1,0,2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('dramatic',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('duplicate',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('during summer',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('dystopian',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('error',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('extremely detailed',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('eyes gleaming like embers',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('far away castle',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('featuring Economical architecture',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('film grain',1,0,6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('filmed by Guillermo del Toro',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('from behind',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('full body',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('grayscale',1,1,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('hair ribbons',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('half body portrait',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('hdr',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('high quality',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('highly detailed',1,0,6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('highres',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('hyperrealistic',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('in lush jungle with flowers',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('in the 1960s',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('in the format of anime screencap',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('in the style of Antipodeans',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('in the style of DayGlo and Ballet Academia',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('iridescent gold',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('landscape',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('lighting is cold',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('lighting is warm and atmospheric',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('lo-fi colors',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('logo',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('lomo effect',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('low quality',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('lowres',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('masterpiece',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('matte painting',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('medieval armor',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('medium shot',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('metal reflections',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('microscopic',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('monochrome',1,1,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('motion blur',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('natural skin texture',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('neon tokyo',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('no humans',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('normal quality',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('nostalgiacore',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('nsfw',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('nude',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('octane render',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('oil on matte canvas',1,0,2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('out of focus',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('out of frame',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('outdoors',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('over the shoulder shot',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('pastel colors',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('photo realistic',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('photographed from {up close:front:behind}',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('photography',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('photorealistic',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('picture frame',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('polaroid',1,0,2);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('post-apocalypticpunk',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('primitivism',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('ray tracing',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('rays of sunlight',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('realistic',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('resembling the works of Alphonse Mucha',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('resembling the works of Jules Verne',1,0,4);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('ripped blue jeans',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('rule of thirds golden ratio',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('scifi',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('sharp focus',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('signature',1,1,6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('sky is blue',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('smudges',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('soft light',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('steampunk',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('studio photograph',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('stunning environment',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('stunningly beautiful',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('subsurface scattering',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('sun is shining',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('sunset',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('timeless',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('traditional russian clothing',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('trending Pixiv Fanbox',1,0,5);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('trending on Behance HD',1,0,5);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('trending on CGSociety',1,0,5);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('trending on zbrushcentral',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('ugly',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('ultra detailed',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('ultra details',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('ultra realistic',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('upper body',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('username',1,1,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('using diffraction spikes technique',1,0,1);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('vibrant colors and shadows',1,0,7);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('volumetric lighting',1,0,8);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('watercolor',1,0,3);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('watermark',0.3,1,6);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('wide-angle',1,0,10);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('with vines for hair',1,0,9);")
		    DB.ExecuteSQL("INSERT INTO keyword (words,weight,negative,id_category) VALUES ('worst quality',1,1,1);")
		    
		    // -- CREATE TABLE "keyword_category" -----------------------------
		    DB.ExecuteSQL("CREATE TABLE keyword_category (id Integer PRIMARY KEY AUTOINCREMENT, " + _
		    "id_keyword Integer Not NULL, " + _
		    "id_category Integer Not NULL, " + _
		    "CONSTRAINT unique_id UNIQUE (id), " + _
		    "CONSTRAINT unique_id_keyword UNIQUE (id_keyword))")
		    
		    // -- CREATE TABLE "preset" ---------------------------------------
		    DB.ExecuteSQL("CREATE TABLE preset (id Integer Not NULL PRIMARY KEY AUTOINCREMENT, " + _
		    "label Text Not NULL, " + _
		    "image BLOB, " + _
		    "model Text, " + _
		    "steps Integer DEFAULT 20, " + _
		    "guidance_scale Double DEFAULT 7, " + _
		    "seed Text DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE (id), " + _
		    "CONSTRAINT unique_label UNIQUE (label))")
		    
		    DB.ExecuteSQL("INSERT INTO preset (label) VALUES ('_AUTOSAVE')")
		    
		    // -- CREATE TABLE "preset_keyword" -------------------------------
		    DB.ExecuteSQL("CREATE TABLE preset_keyword (id Integer PRIMARY KEY, " + _
		    "id_preset Integer Not NULL, " + _
		    "id_keyword Integer Not NULL, " + _
		    "weight Double DEFAULT '1', " + _
		    "negative Integer Not NULL DEFAULT 1, " + _
		    "position Integer DEFAULT 0, " + _
		    "CONSTRAINT unique_id UNIQUE (id))")
		    
		  Catch err As IOException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "Database File Error", "The Database File at " + Chr(34) + _
		    SpecialFolder.UserHome.Child(UserHomeFolder).Child("SDP_Database.db").NativePath + Chr(34) + " raised an issue and the App will now shutdown." + _
		    EndOfLine + EndOfLine + "Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Quit
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "There was an error while accessing the Database", _
		    "The App will now shutdown." + EndOfLine + EndOfLine + "Error Code: " + Str(err.ErrorNumber) + ", Error Message: " + err.Message)
		    
		    Quit
		    
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
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - File Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Ok", "Export Error", "There's an issue while creating the output file. Maybe try again with another save location?")
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Ok", "Data Error", "There's an issue while pulling data from the Database. You should verify the output file contents.")
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Export_KeywordsCode(Extends DB AS SQLiteDatabase) As Boolean
		  Try
		    
		    Var KeywordNegative As String
		    Var RS As RowSet
		    RS = DB.SelectSQL("SELECT keyword.id,keyword.words,category.id As CatId,keyword.negative,keyword.weight " + _
		    "FROM category " + _
		    "INNER Join keyword ON category.id = keyword.id_category " + _
		    "ORDER BY keyword.words")
		    
		    
		    If RS <> Nil Then
		      
		      Var f As FolderItem
		      Var t As TextOutputStream
		      f = FolderItem.ShowSaveFileDialog(FileTypes_Text.SQLCode,"Keywords.sql")
		      
		      If f <> Nil Then
		        
		        t = TextOutputStream.Open(f)
		        
		        While Not RS.AfterLastRow
		          
		          If RS.Column("negative").BooleanValue Then
		            KeywordNegative="1"
		          Else
		            KeywordNegative="0"
		          End If
		          
		          t.Write "DB.ExecuteSQL(" + Chr(34) + "INSERT INTO keyword (words,weight,negative,id_category) VALUES ('" + RS.Column("words").StringValue + "'," + _
		          RS.Column("weight").DoubleValue.ToString + "," + _
		          KeywordNegative + "," + _
		          RS.Column("CatId").IntegerValue.ToString + ");" + Chr(34) + ")" + EndOfLine
		          
		          RS.MoveToNextRow
		          
		        Wend
		        
		        t.Close
		        
		      End If
		      
		      Return True
		      
		    End If
		    
		  Catch err As IOException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Ok", "File Error", "There's an issue while creating the output file. Maybe try again with another save location?")
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Ok", "Data Error", "There's an issue while pulling data from the Database. You should verify the output file contents.")
		    
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
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Ok", "File Error", "There's an issue while reading the input file. Maybe try again with another file(name) or from another location?")
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Ok", "Data Error", "There's an issue while importing data from the File. You should verify the input file contents.")
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load_Categorys(Extends PUM As DesktopPopupMenu)
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM category ORDER by label")
		    
		    If RS <> Nil Then
		      
		      PUM.RemoveAllRows
		      PUM.AddRow ""
		      PUM.RowTagAt(0)=0
		      
		      While Not RS.AfterLastRow
		        
		        PUM.AddRow(RS.Column("label").StringValue)
		        PUM.RowTagAt(PUM.LastAddedRowIndex) = RS.Column("id").IntegerValue
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		      PUM.SelectedRowIndex = 0
		      
		    End If
		    
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Load_ModelPrompts(ModelName As String) As String()
		  Var s(1) As String
		  
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM model WHERE name=?", ModelName)
		    
		    If RS<>Nil And Not RS.AfterLastRow Then
		      
		      s(0) = ", " + RS.Column("recommended_positive").StringValue
		      s(1) = ", " + RS.Column("recommended_negative").StringValue
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Load_Models(Extends CBX As DesktopComboBox)
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM model ORDER by name")
		    
		    If RS <> Nil Then
		      
		      CBX.RemoveAllRows
		      
		      While Not RS.AfterLastRow
		        
		        CBX.AddRow(RS.Column("name").StringValue)
		        CBX.RowTagAt(CBX.LastAddedRowIndex) = RS.Column("id").IntegerValue
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Scale_Proportional(Pic as Picture, Width as integer, Height as Integer) As Picture
		  If pic=Nil Then Return Nil
		  
		  // calculate the scale factor
		  Dim factor As Double = Min( Height / Pic.Height, Width / Pic.Width )
		  
		  // Calculate new size
		  dim w as integer = Pic.Width * factor
		  dim h as integer = Pic.Height * factor
		  
		  // create new picture
		  Dim NewPic As New Picture( w, h )
		  
		  // draw picture in the new size
		  NewPic.Graphics.DrawPicture( Pic, 0, 0, w, h, 0, 0, Pic.Width, Pic.Height )
		  
		  // return scaled image
		  Return NewPic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Show_MessageDialog(Icon As MessageDialog.IconTypes, ActionButtonCaption As String, CancelButtonCaption As String, Message As String, Explanation As String) As Boolean
		  Var d As New MessageDialog
		  Var b As MessageDialogButton
		  d.IconType = MessageDialog.IconTypes.Caution
		  d.ActionButton.Caption = ActionButtonCaption
		  d.CancelButton.Caption = CancelButtonCaption
		  d.CancelButton.Visible = True
		  d.Message = Message
		  d.Explanation = Explanation
		  
		  b = d.ShowModal
		  Select Case b
		  Case d.ActionButton
		    Return True
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show_MessageDialogSimple(Icon As MessageDialog.IconTypes, ActionButtonCaption As String, Message As String, Explanation As String)
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

	#tag Method, Flags = &h0
		Sub Table_Create(Extends DB As SQLiteDatabase, TableName As String)
		  Try
		    
		    Select Case TableName
		      
		    Case "preferences"
		      
		      DB.ExecuteSQL("CREATE TABLE preferences (" + _
		      "id Integer Not NULL PRIMARY KEY AUTOINCREMENT, " + _
		      "pref_name Text Not NULL, " + _
		      "pref_setting Text Not NULL DEFAULT 0, " + _
		      "CONSTRAINT unique_id UNIQUE (id))")
		      
		    End Select
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "There was an error while accessing the Database", _
		    "Error Code: " + Str(err.ErrorNumber) + ", Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Table_Exists(Extends DB As SQLiteDatabase, TableName As String) As Boolean
		  Try
		    
		    Var rs As RowSet
		    rs = App.SDP_Database.SelectSQL("SELECT name FROM sqlite_master WHERE type='table' AND name=?",TableName)
		    
		    If rs<>Nil And Not rs.AfterLastRow Then Return True
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "There was an error while accessing the Database", _
		    "Error Code: " + Str(err.ErrorNumber) + ", Error Message: " + err.Message)
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Update_SDP_Database(Extends DB AS SQLiteDatabase)
		  Try
		    
		    If DB.Connect Then
		      
		      #Pragma BreakOnExceptions False
		      
		      // -- CREATE TABLE "model" ----------------------------------------
		      DB.ExecuteSQL("CREATE TABLE model (" + _
		      "id Integer PRIMARY KEY AUTOINCREMENT, " + _
		      "name Text Not NULL, " + _
		      "recommended_positive Text, " + _
		      "recommended_negative Text, " + _
		      "notes Text, " + _
		      "CONSTRAINT unique_id UNIQUE ( id ), " + _
		      "CONSTRAINT unique_name UNIQUE ( name ))")
		      
		      DB.ExecuteSQL("INSERT INTO model (name,recommended_positive,recommended_negative,notes) VALUES (?,?,?,?);", "Template", "Hyperrealism", "bad anatomy", "Create a template for testing new models. So you can easily compare the results of different models with each other.")
		      
		      #Pragma BreakOnExceptions True
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		    If Not err.Message.IndexOf("already exists")=-1 Then
		      
		      Show_MessageDialogSimple(MessageDialog.IconTypes.Stop, "Quit", "There was an error while accessing the Database", _
		      "The App will now shutdown." + EndOfLine + EndOfLine + "Error Code: " + Str(err.ErrorNumber) + ", Error Message: " + err.Message)
		      
		      Quit
		      
		    End If
		    
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CurrentPreset As Class_Preset
	#tag EndProperty

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
		#tag ViewProperty
			Name="UserHomeFolder"
			Visible=false
			Group="Behavior"
			InitialValue="Stable Diffusion Prompter"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
