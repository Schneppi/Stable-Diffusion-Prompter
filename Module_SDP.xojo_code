#tag Module
Protected Module Module_SDP
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
