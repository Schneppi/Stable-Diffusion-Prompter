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
		  App.SDP_Database = New SQLiteDatabase
		  App.SDP_Database.Connect_SDP_Database
		  App.SDP_Database.Update_SDP_Database
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		SDP_Database As SQLiteDatabase
	#tag EndProperty


	#tag Constant, Name = Color_DarkMode_Green1, Type = Color, Dynamic = False, Default = \"&c008F00", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Color_DarkMode_Green2, Type = Color, Dynamic = False, Default = \"&c388F38", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Color_DarkMode_Red1, Type = Color, Dynamic = False, Default = \"&c942B1D", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Color_DarkMode_Red2, Type = Color, Dynamic = False, Default = \"&c94453B", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Color_LightMode_Green1, Type = Color, Dynamic = False, Default = \"&cA3FCA7", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Color_LightMode_Green2, Type = Color, Dynamic = False, Default = \"&cC8FACA", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Color_LightMode_Red1, Type = Color, Dynamic = False, Default = \"&cFFBDBB", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Color_LightMode_Red2, Type = Color, Dynamic = False, Default = \"&cFFCDCB", Scope = Public
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
