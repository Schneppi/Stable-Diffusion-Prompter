#tag DesktopWindow
Begin DesktopWindow Window_PromptImporter
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   1
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   400
   MinimumWidth    =   800
   Resizeable      =   True
   Title           =   "Prompt Importer"
   Type            =   0
   Visible         =   True
   Width           =   800
   Begin KeywordsTextArea TextArea_Prompt
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   True
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   292
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#Example"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   "Paste here your Prompt"
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   360
   End
   Begin DesktopListBoxDM ListBox_Keywords
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   4
      ColumnWidths    =   "40,*,65,120"
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   258
      Index           =   -2147483648
      InitialValue    =   "Add	Keyword	Negative	Category"
      Italic          =   False
      Left            =   392
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      NegativeColumn  =   2
      RequiresSelection=   False
      RowSelectionType=   1
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Select one or more Keywords and change the Category by using the Popup Menu below."
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   388
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopButton Button_Analyze
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Analyze above Prompt"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Split the above Prompt into individual Keywords and add them to the list on the right."
      Top             =   358
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   360
   End
   Begin DesktopButton Button_Import
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Import into Keywords"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   392
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Import all checked Keywords into the Keyword Database. Duplicates are sorted out automatically."
      Top             =   358
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   388
   End
   Begin DesktopPopupMenu PopupMenu_Category
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   392
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Change the Category of the above selected Keywords."
      Top             =   290
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   388
   End
   Begin DesktopButton Button_CopyFromClipboard
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Import Prompt from System Clipboard"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Paste text from the clipboard into the text field above to analyze it afterwards."
      Top             =   324
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   360
   End
   Begin DesktopCheckBox CheckBox_SelectFoundKeywords
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Select found Keywords (and close this Importer)"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   392
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Check this box if you want to include all keywords found in the prompt in the list of checked keywords in the main window. The previous selection of keywords in the main window will be lost!"
      Top             =   324
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   388
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  Window_Main.Cont_Keyword.Keywords_List
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  #If TargetCocoa Then
		    Declare Function setFrameAutosaveName Lib "cocoa" Selector "setFrameAutosaveName:" ( NSWindowHandle As Ptr, AutosaveName As CFStringRef ) As Boolean
		    Call setFrameAutosaveName( Me.Handle, Self.Title + " v" + App.MajorVersion.ToString + App.MinorVersion.ToString)
		  #EndIf
		End Sub
	#tag EndEvent


	#tag Constant, Name = Example, Type = String, Dynamic = False, Default = \"This is an example\x2C[keyword1:keyword2:factor]\x2C (((test)))\x2C (test2: 0.5)\x2C <lora:more_details:0.36>.", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events ListBox_Keywords
	#tag Event
		Sub Opening()
		  Me.ColumnTypeAt(0) = DesktopListBox.CellTypes.CheckBox
		  Me.ColumnTypeAt(1) = DesktopListBox.CellTypes.TextField
		  Me.ColumnTypeAt(2) = DesktopListBox.CellTypes.CheckBox
		  Me.ColumnAlignmentAt(0) = DesktopListBox.Alignments.Center
		  Me.ColumnAlignmentAt(2) = DesktopListBox.Alignments.Center
		  Me.ColumnAlignmentAt(3) = DesktopListBox.Alignments.Center
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  If Me.SelectedRowIndex=-1 Then Return
		  If PopupMenu_Category.RowCount=0 Then Return
		  
		  For X As Integer = 0 To PopupMenu_Category.LastRowIndex
		    
		    If PopupMenu_Category.RowTagAt(X).IntegerValue = Me.CellTagAt(Me.SelectedRowIndex,3).IntegerValue Then
		      
		      PopupMenu_Category.SelectedRowIndex = X
		      Exit For X
		      
		    End If
		    
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If row=-1 Or row>Me.LastRowIndex Then Return
		  
		  Me.SelectedRowIndex=row
		End Sub
	#tag EndEvent
	#tag Event
		Sub KeyUp(key As String)
		  If Me.SelectedRowIndex>-1 Then
		    
		    Var KW As New Class_Keyword(Me.RowTagAt(Me.SelectedRowIndex).IntegerValue)
		    
		    Select Case key.Asc
		      
		    Case 32
		      
		      Me.CellCheckBoxValueAt(Me.SelectedRowIndex,0) = Not Me.CellCheckBoxValueAt(Me.SelectedRowIndex,0)
		      
		    End Select
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button_Analyze
	#tag Event
		Sub Pressed()
		  Var Keywords() As String = TextArea_Prompt.CreateArrayOfKeywords
		  
		  If Keywords.Count>0 Then
		    
		    For X As Integer = 0 To Keywords.LastIndex
		      
		      ListBox_Keywords.AddRow "", Keywords(X), "", "Subject"
		      ListBox_Keywords.CellTagAt(ListBox_Keywords.LastAddedRowIndex,3) = 1
		      ListBox_Keywords.CellCheckBoxValueAt(ListBox_Keywords.LastAddedRowIndex,0) = True
		      
		    Next
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button_Import
	#tag Event
		Sub Pressed()
		  If ListBox_Keywords.RowCount=0 Then Return
		  
		  Var SuccessCounter As Integer
		  
		  For X As Integer=0 To ListBox_Keywords.LastRowIndex
		    
		    If ListBox_Keywords.CellCheckBoxValueAt(X,0) Then
		      
		      Var KW As New Class_Keyword(0)
		      KW.Keyword=ListBox_Keywords.CellTextAt(X,1)
		      KW.CategoryID=ListBox_Keywords.CellTagAt(X,3)
		      KW.Negative=ListBox_Keywords.CellCheckBoxValueAt(X,2)
		      
		      If KW.Save Then SuccessCounter=SuccessCounter+1
		      
		    End If
		    
		  Next
		  
		  If CheckBox_SelectFoundKeywords.Value Then
		    
		    TextArea_Prompt.Text = ""
		    
		    For X As Integer = 0 To ListBox_Keywords.LastRowIndex
		      
		      TextArea_Prompt.AddText ListBox_Keywords.CellTextAt(X,1) + ","
		      
		    Next
		    
		    Var Keywords() As String = TextArea_Prompt.CreateArrayOfKeywords
		    
		    If Keywords.Count>0 Then
		      
		      Window_Main.Cont_Keyword.Keywords_DeselectAll
		      Window_Main.Cont_Keyword.Keywords_List
		      Window_Main.Cont_Keyword.Keywords_Select(Keywords)
		      Window_Main.Cont_Keyword.Prompt_Show
		      
		      Self.Close
		      
		    End If
		    
		  Else
		    
		    If SuccessCounter>0 Then
		      
		      Show_MessageDialogSimple(MessageDialog.IconTypes.Note,"Ok",SuccessCounter.ToString + " new Keywords have been added to the Database.","")
		      
		    ElseIf SuccessCounter=1 Then
		      
		      Show_MessageDialogSimple(MessageDialog.IconTypes.Note,"Ok","1 new Keyword has been added to the Database.","")
		      
		    Else
		      
		      Show_MessageDialogSimple(MessageDialog.IconTypes.Note,"Ok"," No new Keywords have been added to the Database.","")
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Category
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If ListBox_Keywords.SelectedRowIndex=-1 Then Return
		  
		  For X As Integer = 0 To ListBox_Keywords.LastRowIndex
		    
		    If ListBox_Keywords.RowSelectedAt(X) Then
		      
		      ListBox_Keywords.CellTextAt(X,3) = Me.SelectedRowValue
		      ListBox_Keywords.CellTagAt(X,3) = Me.RowTagAt(Me.SelectedRowIndex).IntegerValue
		      
		    End If
		    
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.Load_Categorys
		  If Me.RowCount>9 Then Me.SelectedRowIndex=9
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button_CopyFromClipboard
	#tag Event
		Sub Pressed()
		  Var c As New Clipboard
		  If c.TextAvailable Then
		    
		    If TextArea_Prompt.Text = Self.Example Then
		      
		      TextArea_Prompt.Text = c.Text
		      
		    Else
		      
		      TextArea_Prompt.AddText c.Text
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
