#tag Class
Protected Class Class_Text2Image_API
Inherits URLConnection
	#tag Method, Flags = &h0
		Function SendPrompt(Prompt As String, NegativePrompt As String, Optional Steps As Integer, Optional Width As Integer, Optional Height As Integer, Optional Model As String, Optional Sampler As String, Optional Seed As Integer) As String
		  // Request
		  
		  // NOTE: Starting with Xojo 2018r4, use of insecure connections
		  // in a macOS app requires the addition of the following plist key:
		  // <key>NSAppTransportSecurity</key>
		  // <dict><key>NSAllowsArbitraryLoads</key><true/></dict>
		  
		  // Set up the socket
		  Dim mySocket As New URLConnection
		  
		  // JSON
		  Dim js As New JSONItem
		  js.value("prompt") = Prompt
		  If Height > 0 Then js.value("height") = Height
		  If Steps > 0 Then js.value("steps") = Steps
		  If Sampler.Trim <> "" Then js.value("sampler") = Sampler
		  If Model.Trim <> "" Then js.value("model") = Model
		  If NegativePrompt.Trim <> "" Then js.value("negative_prompt") = NegativePrompt
		  If Seed > -1 Then js.value("seed") = Seed
		  If Width > 0 Then js.value("width") = Width
		  js.value("batch_count") = Self.BatchCount
		  
		  Dim data As String = js.toString()
		  
		  // Assign to the Request's Content
		  mySocket.SetRequestContent(data,"application/json")
		  
		  // Set the URL
		  Dim url As String = "http://" + Self.HostAddress + ":" + HostPort + HostAPIPath
		  
		  // Send Synchronous Request
		  Return mySocket.SendSync("POST", url, 30)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		BatchCount As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		HostAddress As String = "127.0.0.1"
	#tag EndProperty

	#tag Property, Flags = &h0
		HostAPIPath As String = "/sdapi/v1/txt2img"
	#tag EndProperty

	#tag Property, Flags = &h0
		HostPort As String = "8080"
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
			Name="AllowCertificateValidation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HTTPStatusCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HostAddress"
			Visible=false
			Group="Behavior"
			InitialValue="127.0.0.1"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HostPort"
			Visible=false
			Group="Behavior"
			InitialValue="8080"
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HostAPIPath"
			Visible=false
			Group="Behavior"
			InitialValue="/sdapi/v1/txt2img"
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BatchCount"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
