#tag DesktopWindow
Begin DesktopWindow Window_Main
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   True
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   620
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1549287423
   MenuBarVisible  =   False
   MinimumHeight   =   620
   MinimumWidth    =   800
   Resizeable      =   True
   Title           =   "SDP"
   Type            =   0
   Visible         =   True
   Width           =   800
   Begin DesktopListBox ListBox_PromptWords
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   False
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   True
      Bold            =   False
      ColumnCount     =   6
      ColumnWidths    =   "22,*,50,65,120,0"
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
      Height          =   328
      Index           =   -2147483648
      InitialValue    =   " 	Keyword(s)	Weight	Negative	Category	Position in Prompt"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   True
      RowSelectionType=   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   548
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopTextArea TextArea_PromptPositive
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   False
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
      Height          =   166
      HideSelection   =   False
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   392
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   266
   End
   Begin DesktopPopupMenu PopupMenu_PresetName
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
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   18
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin DesktopTextArea TextArea_PromptNegative
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   True
      AllowStyledText =   False
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
      Height          =   166
      HideSelection   =   False
      Index           =   -2147483648
      Italic          =   False
      Left            =   302
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   392
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   266
   End
   Begin DesktopSearchField SearchField_Filter
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowRecentItems=   False
      AllowTabStop    =   True
      ClearMenuItemValue=   "Clear"
      Enabled         =   True
      Height          =   22
      Hint            =   "Prompt Filter"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumRecentItems=   -1
      PanelIndex      =   0
      RecentItemsValue=   "Recent Searches"
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      Text            =   ""
      Tooltip         =   ""
      Top             =   18
      Transparent     =   False
      Visible         =   True
      Width           =   382
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopCanvas Canvas_Sample
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   200
      Index           =   -2147483648
      Left            =   580
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   392
      Transparent     =   True
      Visible         =   True
      Width           =   200
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
      Left            =   414
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   18
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopLabel Label_PresetInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   0
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Diffusion Model:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   120
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin DesktopTextField TextField_PresetModel
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   154
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   200
   End
   Begin DesktopLabel Label_PresetInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   1
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Seed Number:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   188
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin DesktopTextField TextField_PresetSeed
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   222
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   200
   End
   Begin DesktopLabel Label_PresetInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   2
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Diffusion Steps:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   256
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin DesktopTextField TextField_PresetSteps
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   290
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   200
   End
   Begin DesktopLabel Label_PresetInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   3
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Guidance Scale:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   324
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin DesktopTextField TextField_PresetScale
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   358
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   200
   End
   Begin DesktopLabel Label_Information
      AllowAutoDeactivate=   True
      Bold            =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   10.0
      FontUnit        =   0
      Height          =   16
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   ""
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   604
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   760
   End
   Begin DesktopBevelButton BevelButton_Save_Keyword
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   1088702463
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   546
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   8
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Save Keyword"
      Top             =   18
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton BevelButton_Save_Preset
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   ""
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   1088702463
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   758
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   21
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Save Preset"
      Top             =   86
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   22
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton BevelButton_Copy_PromptPositive
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "Copy positive prompt"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   1229443071
      IconAlignment   =   3
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Copy positive prompt"
      Top             =   570
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   266
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton BevelButton_Copy_PromptNegative
      Active          =   False
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowTabStop    =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   1
      Bold            =   False
      ButtonStyle     =   0
      Caption         =   "Copy negative prompt"
      CaptionAlignment=   3
      CaptionDelta    =   0
      CaptionPosition =   1
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   22
      Icon            =   1229443071
      IconAlignment   =   3
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   302
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Copy negative prompt"
      Top             =   570
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   266
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopLabel Label_PresetInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   4
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Current Preset:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   200
   End
   Begin DesktopTextField TextField_PresetName
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   580
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   86
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   166
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  CurrentPreset.DatabaseID=1
		  CurrentPreset.Label="_AUTOSAVE"
		  Call CurrentPreset.Save
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  Load_Categorys
		  Show_Keywords("",0)
		  Load_Presets
		  Load_Preset(1)
		  
		  Generate_Prompt
		  
		  If Not DebugBuild Then FileMenu.RemoveMenuAt(2)
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileExportKeywords() As Boolean Handles FileExportKeywords.Action
		  If Not App.SDP_Database.Export_Keywords Then
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileExportKeywordsCode() As Boolean Handles FileExportKeywordsCode.Action
		  If Not App.SDP_Database.Export_KeywordsCode Then
		    
		  End If
		  
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileImportKeywords() As Boolean Handles FileImportKeywords.Action
		  If App.SDP_Database.Import_Keywords Then
		    
		    Show_Keywords("",0)
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KeywordAdd() As Boolean Handles KeywordAdd.Action
		  Add_KeywordToDatabase
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KeywordRemove() As Boolean Handles KeywordRemove.Action
		  If ListBox_PromptWords.SelectedRowIndex = -1 Then Return False
		  
		  Var KW As New Class_Keyword(ListBox_PromptWords.RowTagAt(ListBox_PromptWords.SelectedRowIndex).IntegerValue)
		  
		  If KW.Delete Then Show_Keywords(SearchField_Filter.Text.Trim, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		  
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PresetAddsampleImage() As Boolean Handles PresetAddsampleImage.Action
		  Var f As New FolderItem
		  f = FolderItem.ShowOpenFileDialog("")
		  
		  If f<>Nil And f.Exists Then
		    
		    CurrentPreset.Sample = Picture.Open(f)
		    Canvas_Sample.Backdrop = Scale_Proportional(CurrentPreset.Sample,200,200)
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PresetDelete() As Boolean Handles PresetDelete.Action
		  Var PS As New Class_Preset(PopupMenu_PresetName.RowTagAt(PopupMenu_PresetName.SelectedRowIndex).IntegerValue)
		  
		  If PS.Delete Then
		    
		    Load_Presets
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PresetSave() As Boolean Handles PresetSave.Action
		  Save_Preset
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub Add_KeywordToDatabase()
		  If PopupMenu_Category.SelectedRowIndex=0 Then PopupMenu_Category.SelectedRowIndex=1
		  
		  Var KW As New Class_Keyword(0)
		  KW.Keyword=SearchField_Filter.Text.Trim
		  KW.CategoryID=PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue
		  
		  
		  If KW.Save Then
		    
		    Show_Keywords(SearchField_Filter.Text.Trim, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Generate_Prompt()
		  CurrentPreset.Update_Positions(ListBox_PromptWords)
		  
		  Var s(1) As String = CurrentPreset.GeneratePrompt
		  TextArea_PromptPositive.Text = s(0)
		  TextArea_PromptNegative.Text = s(1)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load_Categorys()
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM category ORDER by label")
		    
		    If RS <> Nil Then
		      
		      PopupMenu_Category.RemoveAllRows
		      PopupMenu_Category.AddRow ""
		      PopupMenu_Category.RowTagAt(0)=0
		      
		      While Not RS.AfterLastRow
		        
		        PopupMenu_Category.AddRow(RS.Column("label").StringValue)
		        PopupMenu_Category.RowTagAt(PopupMenu_Category.LastAddedRowIndex) = RS.Column("id").IntegerValue
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		      PopupMenu_Category.SelectedRowIndex = 0
		      
		    End If
		    
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load_Preset(DatabaseID As Integer)
		  CurrentPreset = New Class_Preset(DatabaseID)
		  TextField_PresetName.Text = CurrentPreset.Label
		  TextField_PresetModel.Text = CurrentPreset.Diffusion_Model
		  TextField_PresetSeed.Text = CurrentPreset.Seed
		  TextField_PresetSteps.Text = CurrentPreset.Steps.ToString
		  TextField_PresetScale.Text = CurrentPreset.Guidance_Scale.ToString
		  Canvas_Sample.Backdrop=Scale_Proportional(CurrentPreset.Sample,200,200)
		  Show_KeywordsInPreset
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load_Presets()
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM preset ORDER by label")
		    
		    If RS <> Nil Then
		      
		      PopupMenu_PresetName.RemoveAllRows
		      
		      While Not RS.AfterLastRow
		        
		        If RS.Column("label").StringValue<>"_AUTOSAVE" Then
		          
		          PopupMenu_PresetName.AddRow(RS.Column("label").StringValue)
		          PopupMenu_PresetName.RowTagAt(PopupMenu_PresetName.LastAddedRowIndex) = RS.Column("id").IntegerValue
		          
		        End If
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		    PopupMenu_PresetName.SelectedRowIndex=-1
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Save_Preset()
		  If PopupMenu_PresetName.SelectedRowIndex=-1 Then
		    
		    CurrentPreset.DatabaseID=0
		    
		  Else
		    
		    If PopupMenu_PresetName.SelectedRowValue.Trim<>TextField_PresetName.Text.Trim Then CurrentPreset.DatabaseID=0
		    
		  End If
		  
		  CurrentPreset.Update_Positions(ListBox_PromptWords)
		  
		  If CurrentPreset.Save Then
		    
		    Load_Presets
		    
		    For X As Integer = 0 To PopupMenu_PresetName.LastRowIndex
		      
		      If PopupMenu_PresetName.RowTagAt(X).IntegerValue = CurrentPreset.DatabaseID Then
		        
		        PopupMenu_PresetName.SelectedRowIndex=X
		        
		        Exit For X
		        
		      End If
		      
		    Next
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Show_Keywords(Filter As String, CategoryID As Integer)
		  Try
		    
		    Var RS As RowSet
		    
		    If Filter.Trim.Length=0 Then
		      
		      If CategoryID=0 Then
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative,keyword.weight " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "ORDER BY keyword.words")
		        
		      Else
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative,keyword.weight " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "WHERE id_category=? " + _
		        "ORDER BY keyword.words", CategoryID)
		        
		      End If
		      
		    Else
		      
		      Filter = "%" + Filter.ReplaceAll(" ","%") + "%"
		      
		      If CategoryID=0 Then
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative,keyword.weight " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "WHERE keyword.words LIKE ? " + _
		        "ORDER BY keyword.words", Filter)
		        
		      Else
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative,keyword.weight " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "WHERE keyword.words LIKE ? AND id_category=? " + _
		        "ORDER BY keyword.words", Filter, CategoryID)
		        
		      End If
		      
		    End If
		    
		    If RS <> Nil Then
		      
		      ListBox_PromptWords.RemoveAllRows
		      
		      While Not RS.AfterLastRow
		        
		        ListBox_PromptWords.AddRow("", RS.Column("words").StringValue, Format(RS.Column("weight").DoubleValue, "0.0"), "", RS.Column("label").StringValue)
		        ListBox_PromptWords.CellCheckBoxValueAt(ListBox_PromptWords.LastAddedRowIndex,3) = RS.Column("negative").BooleanValue
		        ListBox_PromptWords.CellTextAt(ListBox_PromptWords.LastAddedRowIndex,5) = "9999999"
		        ListBox_PromptWords.RowTagAt(ListBox_PromptWords.LastAddedRowIndex) = RS.Column("id").IntegerValue
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		      If ListBox_PromptWords.RowCount>0 Then ListBox_PromptWords.SelectedRowIndex=0
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		  
		  Show_KeywordsInPreset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Show_KeywordsInPreset()
		  If ListBox_PromptWords.RowCount>0 Then
		    
		    For X As Integer = 0 To ListBox_PromptWords.LastRowIndex
		      
		      ListBox_PromptWords.CellCheckBoxValueAt(X,0) = False
		      ListBox_PromptWords.CellTextAt(X,5) = "999999"
		      
		      If CurrentPreset<>Nil Then
		        
		        For Each KW As Class_Keyword In CurrentPreset.Keywords
		          
		          If KW.DatabaseID=ListBox_PromptWords.RowTagAt(X).IntegerValue Then
		            
		            ListBox_PromptWords.CellCheckBoxValueAt(X,0) = True
		            ListBox_PromptWords.CellTextAt(X,2) = Format(KW.Weight, "0.0")
		            ListBox_PromptWords.CellCheckBoxValueAt(X,3)=KW.Negative
		            ListBox_PromptWords.CellTextAt(X,5) = KW.Position.ToString
		            
		            Exit
		            
		          End If
		          
		        Next
		        
		      End If
		      
		    Next
		    
		    ListBox_PromptWords.Sort
		    
		  End If
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CurrentPreset As Class_Preset
	#tag EndProperty


	#tag Constant, Name = StandardInformation, Type = String, Dynamic = False, Default = \"The prompts will be generated using the information taken from the list of keywords. Text you add manually to the prompt\x2C will not be saved within a preset!", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events ListBox_PromptWords
	#tag Event
		Sub Opening()
		  Me.ColumnTypeAt(0) = DesktopListBox.CellTypes.CheckBox
		  Me.ColumnTypeAt(2) = DesktopListBox.CellTypes.TextField
		  Me.ColumnTypeAt(3) = DesktopListBox.CellTypes.CheckBox
		  Me.ColumnAlignmentAt(2) = DesktopListBox.Alignments.Decimal
		  Me.ColumnAlignmentAt(3) = DesktopListBox.Alignments.Center
		  Me.ColumnAlignmentOffsetAt(2) = -Me.ColumnAttributesAt(2).WidthActual/2
		  
		  Me.ColumnSortDirectionAt(-1) = DesktopListbox.SortDirections.None
		  Me.ColumnSortDirectionAt(5) = DesktopListbox.SortDirections.Ascending
		  Me.SortingColumn=5
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If row>-1 And row<Me.RowCount Then
		    
		    Var KW As New Class_Keyword(Me.RowTagAt(row).IntegerValue)
		    
		    If KW.DatabaseID>0 Then
		      
		      If Me.CellCheckBoxValueAt(row,0) Then
		        
		        KW.Weight = Me.CellTextAt(row,2).ToDouble
		        KW.Negative = Me.CellCheckBoxValueAt(row,3)
		        KW.Position = row
		        
		        CurrentPreset.AddKeyword(KW)
		        
		      Else
		        
		        CurrentPreset.RemoveKeyword(KW)
		        
		      End If
		      
		      Me.Refresh
		      
		      Generate_Prompt
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  base.AddMenu(New DesktopMenuItem("Deselect all"))
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  Select Case selectedItem.Text
		    
		  Case "Deselect all"
		    
		    If Me.RowCount = 0 Then Return False
		    
		    For X As Integer = 0 To Me.LastRowIndex
		      
		      Me.CellCheckBoxValueAt(X,0) = False
		      
		    Next
		    
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Label_Information.Text = "Rows (Keyword order) can be reordered by drag && drop."
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Label_Information.Text = StandardInformation
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  If Me.SelectedRowIndex>-1 Then
		    
		    Var KW As New Class_Keyword(Me.RowTagAt(Me.SelectedRowIndex).IntegerValue)
		    
		    Select Case key.Asc
		      
		    Case 32
		      
		      Me.CellCheckBoxValueAt(Me.SelectedRowIndex,0) = Not Me.CellCheckBoxValueAt(Me.SelectedRowIndex,0)
		      
		      If KW.DatabaseID>0 Then
		        
		        KW.Weight = Me.CellTextAt(Me.SelectedRowIndex,2).ToDouble
		        KW.Negative = Me.CellCheckBoxValueAt(Me.SelectedRowIndex,3)
		        KW.Position = Me.SelectedRowIndex
		        
		        If Me.CellCheckBoxValueAt(Me.SelectedRowIndex,0) Then
		          
		          CurrentPreset.AddKeyword(KW)
		          
		        Else
		          
		          CurrentPreset.RemoveKeyword(KW)
		          
		        End If
		        
		        Generate_Prompt
		        
		      End If
		      
		    End Select
		    
		  End If
		End Function
	#tag EndEvent
	#tag Event
		Function PaintCellBackground(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row<0 Or row>Me.LastRowIndex Then Return False
		  
		  If Me.CellCheckBoxValueAt(row,3) Then
		    
		    g.DrawingColor=&cFFECEC00
		    
		  Else
		    
		    g.DrawingColor=&cE8FFE800
		    
		    
		  End If
		  
		  g.FillRectangle(0,0,g.Width,g.Height)
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_PresetName
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If Me.RowTagAt(Me.SelectedRowIndex)=-1 Then Return
		  
		  Load_Preset(Me.RowTagAt(Me.SelectedRowIndex).IntegerValue)
		  
		  Generate_Prompt
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Label_Information.Text = StandardInformation
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Label_Information.Text = "Use the " + Chr(34) + "Edit" + Chr(34) + " Menu to add/remove your own presets."
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchField_Filter
	#tag Event
		Sub MouseEnter()
		  Label_Information.Text = "Use the " + Chr(34) + "Edit" + Chr(34) + " Menu to add/remove your own keywords."
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Label_Information.Text = StandardInformation
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Show_Keywords(Me.Text, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  Show_Keywords(Me.Text, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Sample
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.DrawingColor=&cA7A7A700
		  g.DrawRectangle(0,0,g.Width,g.Height)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  Var f As New FolderItem
		  f = FolderItem.ShowOpenFileDialog("")
		  
		  If f<>Nil And f.Exists Then
		    
		    CurrentPreset.Sample = Picture.Open(f)
		    Canvas_Sample.Backdrop = Scale_Proportional(CurrentPreset.Sample,200,200)
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.AcceptPictureDrop
		End Sub
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As DragItem.Types)
		  If obj.PictureAvailable Then
		    CurrentPreset.Sample = obj.Picture
		    Me.Backdrop = Scale_Proportional(CurrentPreset.Sample,200,200)
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Label_Information.Text = StandardInformation
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Label_Information.Text = "Click here or drop an image into this field, to add a sample image to your current preset."
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Category
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Show_Keywords(SearchField_Filter.Text, Me.RowTagAt(Me.SelectedRowIndex).IntegerValue)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Label_Information.Text = StandardInformation
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Label_Information.Text = "Select the first (nameless) category to show keywords from all categories."
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetModel
	#tag Event
		Sub TextChanged()
		  CurrentPreset.Diffusion_Model=Me.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetSeed
	#tag Event
		Sub TextChanged()
		  CurrentPreset.Seed=Me.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetSteps
	#tag Event
		Sub TextChanged()
		  CurrentPreset.Steps=Me.Text.ToInteger
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetScale
	#tag Event
		Sub TextChanged()
		  CurrentPreset.Guidance_Scale=Me.Text.ToDouble
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label_Information
	#tag Event
		Sub Opening()
		  Me.Text=StandardInformation
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Save_Keyword
	#tag Event
		Sub Pressed()
		  Add_KeywordToDatabase
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Label_Information.Text = StandardInformation
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Label_Information.Text = "Add a new Keyword using the Text from the Filter Field and place it in the selected Category."
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Save_Preset
	#tag Event
		Sub Pressed()
		  Save_Preset
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  Label_Information.Text = StandardInformation
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  Label_Information.Text = "Updates the selected preset or saves a new preset if a new preset name has been entered."
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Copy_PromptPositive
	#tag Event
		Sub Pressed()
		  Generate_Prompt
		  
		  Var c As New Clipboard
		  c.Text = TextArea_PromptPositive.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Copy_PromptNegative
	#tag Event
		Sub Pressed()
		  Generate_Prompt
		  
		  Var c As New Clipboard
		  c.Text = TextArea_PromptNegative.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetName
	#tag Event
		Sub TextChanged()
		  If Me.Text.Trim="_AUTOSAVE" Then Me.Text=""
		  CurrentPreset.Label=Me.Text.Trim
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
			"9 - Metal Window"
			"11 - Modeless Dialog"
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
