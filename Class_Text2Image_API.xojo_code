#tag Class
Protected Class Class_Text2Image_API
Inherits URLConnection
	#tag Event
		Function AuthenticationRequested(realm As String, ByRef name As String, ByRef password As String) As Boolean
		  #Pragma unused password
		  #Pragma unused name
		  #pragma unused realm
		  
		  Break
		End Function
	#tag EndEvent

	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #Pragma unused URL
		  
		  If HTTPStatus <> 200 Then
		    
		    MessageBox "HTTP Status: " + HTTPStatus.ToString + EndOfLine + EndOfLine + "Message: " + content.DefineEncoding(Encodings.UTF8)
		    
		  End If
		  
		  // Break
		End Sub
	#tag EndEvent

	#tag Event
		Sub Error(e As RuntimeException)
		  If e.ErrorNumber = -1004 Then
		    
		    MessageBox "Error: Could not reach Stable Diffusion Host."
		    
		  End If
		  
		  Break
		End Sub
	#tag EndEvent

	#tag Event
		Sub FileReceived(URL As String, HTTPStatus As Integer, file As FolderItem)
		  #Pragma unused file
		  #Pragma unused HTTPStatus
		  #pragma unused URL
		  
		  Break
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SendPrompt(PositivePrompt As String, Optional NegativePrompt As String)
		  // NOTE: Starting with Xojo 2018r4, use of insecure connections
		  // in a macOS app requires the addition of the following plist key:
		  // <key>NSAppTransportSecurity</key>
		  // <dict><key>NSAllowsArbitraryLoads</key><true/></dict>
		  // This note highlights a requirement for enabling insecure connections in macOS apps 
		  // using Xojo. This is necessary to allow non-secure (HTTP) requests.
		  
		  // Set up the socket
		  // This section initializes and configures the JSON payload for the HTTP request.
		  
		  // Create a JSONItem instance to store the request data
		  Dim js As New JSONItem
		  
		  // Add a key-value pair for the prompt (positive input)
		  js.value("prompt") = PositivePrompt
		  
		  // Add a key-value pair for the negative prompt if it is not empty
		  If NegativePrompt.Trim <> "" Then js.value("negative_prompt") = NegativePrompt
		  
		  // Add other request parameters as needed (commented out parameters can be enabled if required)
		  // Example: Uncomment these lines to include image dimensions, sampler, or model details
		  // js.value("height") = Self.Height
		  // js.value("width") = Self.Width
		  
		  // Add the number of steps to the request
		  js.value("steps") = Self.Steps
		  
		  // Optionally include the sampler or model configuration
		  // js.value("sampler") = Self.Sampler
		  If self.Use_Model Then js.value("model") = Self.Model
		  
		  // Include the random seed value for reproducibility of results
		  js.value("seed") = Self.Seed
		  
		  // Optionally include the batch count (number of requests to process in parallel)
		  // js.value("batch_count") = Self.BatchCount
		  
		  // Convert the JSONItem to a JSON-formatted string to send as the request body
		  Dim data As String = js.toString()
		  
		  // Assign to the Request's Content
		  // This sets the prepared JSON string as the content of the HTTP request and specifies 
		  // that the content type is "application/json".
		  Self.SetRequestContent(data, "application/json")
		  
		  // Send Request
		  // This sends the HTTP POST request to the specified server endpoint.
		  // The URL is constructed using the HostAddress, HostPort, and API path.
		  // - "POST" indicates the HTTP method.
		  // - "-1" specifies that no timeout is set for the request.
		  Self.Send("POST", "http://" + Self.HostAddress + ":" + HostPort.ToString + HostAPIPath, -1)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BatchCount As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Height As Integer = 512
	#tag EndProperty

	#tag Property, Flags = &h0
		HostAddress As String = "127.0.0.1"
	#tag EndProperty

	#tag Property, Flags = &h0
		HostAPIPath As String = "/sdapi/v1/txt2img"
	#tag EndProperty

	#tag Property, Flags = &h0
		HostPort As Integer = 8080
	#tag EndProperty

	#tag Property, Flags = &h0
		Model As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Sampler As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Seed As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h0
		Steps As Integer = 20
	#tag EndProperty

	#tag Property, Flags = &h0
		Use_Model As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Width As Integer = 512
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
			Type="Integer"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HostAPIPath"
			Visible=false
			Group="Behavior"
			InitialValue="/sdapi/v1/txt2img"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BatchCount"
			Visible=false
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=false
			Group="Behavior"
			InitialValue="512"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=false
			Group="Behavior"
			InitialValue="512"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Steps"
			Visible=false
			Group="Behavior"
			InitialValue="20"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Seed"
			Visible=false
			Group="Behavior"
			InitialValue="-1"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Model"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Sampler"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
