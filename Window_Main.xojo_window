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
   Height          =   526
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1549287423
   MenuBarVisible  =   False
   MinimumHeight   =   526
   MinimumWidth    =   900
   Resizeable      =   True
   Title           =   "Stable Diffusion Prompter"
   Type            =   0
   Visible         =   True
   Width           =   900
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
      Height          =   252
      Index           =   -2147483648
      InitialValue    =   " 	Keyword(s)	Weight	Negative	Category	Position in Prompt"
      Italic          =   False
      Left            =   380
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   True
      RowSelectionType=   1
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "The order of the keywords can be changed using drag & drop.\r\nDouble Click to move an activated Keyword to the top of the list."
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   500
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopTextArea TextArea_PromptPositive
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
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
      Height          =   152
      HideSelection   =   False
      Index           =   -2147483648
      Italic          =   False
      Left            =   380
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "In the ""Edit"" Menu, you will find additional functions like the Import of Keywords from a Prompt in the System Clipboard."
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   "This text field cannot be edited directly by the user, since the user's input would be lost if keywords were changed."
      Top             =   318
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   246
   End
   Begin DesktopTextArea TextArea_PromptNegative
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
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
      Height          =   152
      HideSelection   =   False
      Index           =   -2147483648
      Italic          =   False
      Left            =   638
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   "This text field cannot be edited directly by the user, since the user's input would be lost if keywords were changed."
      Top             =   318
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   242
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
      Left            =   380
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumRecentItems=   -1
      PanelIndex      =   0
      RecentItemsValue=   "Recent Searches"
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      Text            =   ""
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Visible         =   True
      Width           =   240
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopPopupMenu PopupMenu_Category
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   700
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Select a Keyword Category.\r\nCategories are for organization only and do not affect the image generation of your prompt."
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   180
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
      Left            =   632
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
      Tooltip         =   "Save the text entered in the prompt filter as new keyword, in the selected category."
      Top             =   20
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
      Left            =   380
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   14
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Copy the text above this button to the clipboard so you can paste it elsewhere."
      Top             =   484
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   246
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
      Left            =   638
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   17
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Copy the text above this button to the clipboard so you can paste it elsewhere."
      Top             =   484
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   242
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopBevelButton BevelButton_Delete_Keyword
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
      Icon            =   28030975
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   666
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Delete the keyword marked in the list below from the database."
      Top             =   20
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
   Begin DesktopSeparator Separator_Vertical
      Active          =   False
      AllowAutoDeactivate=   False
      AllowTabStop    =   False
      Enabled         =   False
      Height          =   486
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   348
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Visible         =   True
      Width           =   20
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin DesktopTabPanel TabPanel_Preset
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   316
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Panels          =   ""
      Scope           =   2
      SmallTabs       =   False
      TabDefinition   =   "Example Image\rSettings"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   190
      Transparent     =   False
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   316
      Begin DesktopCanvas Canvas_Sample
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   258
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Preset"
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   False
         Tooltip         =   "Drop an image here or click here with the primary mouse button to add an example image.\r\n\r\nClick with the secondary mouse button to view the example image in a separate Window."
         Top             =   228
         Transparent     =   False
         Visible         =   True
         Width           =   276
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
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   132
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "Enter the guidance Scale valueused for the example image here."
         Top             =   330
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   184
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
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   "Guidance:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   330
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   132
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "Enter the Diffusion Steps value used for the example image here."
         Top             =   296
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   184
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
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   "Steps:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   296
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   132
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "Enter the seed value used for the example image here."
         Top             =   262
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   184
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
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   "Seed:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   262
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
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
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   132
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "Enter the name of the model used for the example image here."
         Top             =   228
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   184
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
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   "Model:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   228
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
   Begin DesktopListBox ListBox_Presets
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   False
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   1
      ColumnWidths    =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   124
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   True
      RowSelectionType=   0
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   316
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopBevelButton BevelButton_Delete_Preset
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
      Icon            =   28030975
      IconAlignment   =   1
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   314
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Delete the current preset."
      Top             =   20
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
      Left            =   280
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Save the currently selected keywords as a new preset under the name entered on the left.\r\n\r\nIf you change the name shown at left of a previously selected preset, the preset will be saved as a new preset with the new name."
      Top             =   20
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
   Begin DesktopLabel Label_Preset
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Preset:"
      TextAlignment   =   3
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   50
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
      Hint            =   "Preset Name"
      Index           =   -2147483648
      Italic          =   False
      Left            =   82
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   186
   End
   Begin DesktopLabel Label_PositivePrompt_Length
      AllowAutoDeactivate=   False
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   9.0
      FontUnit        =   0
      Height          =   12
      Index           =   -2147483648
      Italic          =   False
      Left            =   380
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Length: 0"
      TextAlignment   =   2
      TextColor       =   &c5C5C5C00
      Tooltip         =   ""
      Top             =   471
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   246
   End
   Begin DesktopLabel Label_NegativePrompt_Length
      AllowAutoDeactivate=   False
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   9.0
      FontUnit        =   0
      Height          =   12
      Index           =   -2147483648
      Italic          =   False
      Left            =   638
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Length: 0"
      TextAlignment   =   2
      TextColor       =   &c5C5C5C00
      Tooltip         =   ""
      Top             =   471
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   242
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
		  CurrentPreset = New Class_Preset(0)
		  Show_Keywords_All("",0)
		  Load_Preset_All
		  Load_Preset(1)
		  
		  If Not DebugBuild Then FileMenu.RemoveMenuAt(2)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resized()
		  Var TextAreaWidth As Integer = (Self.Width - 412) / 2
		  TextArea_PromptPositive.Width = TextAreaWidth
		  BevelButton_Copy_PromptPositive.Width = TextAreaWidth
		  Label_PositivePrompt_Length.Width = TextAreaWidth
		  TextArea_PromptNegative.Left = TextArea_PromptPositive.Left + TextArea_PromptPositive.Width + 12
		  TextArea_PromptNegative.Width = TextAreaWidth
		  BevelButton_Copy_PromptNegative.Left = TextArea_PromptNegative.Left
		  BevelButton_Copy_PromptNegative.Width = TextAreaWidth
		  Label_NegativePrompt_Length.Left = TextArea_PromptNegative.Left
		  Label_NegativePrompt_Length.Width = TextAreaWidth
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
		    
		    Show_Keywords_All("",0)
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KeywordDelete() As Boolean Handles KeywordDelete.Action
		  Delete_Keyword
		  
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KeywordImportFromPrompt() As Boolean Handles KeywordImportFromPrompt.Action
		  Window_PromptImporter.Show
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KeywordSave() As Boolean Handles KeywordSave.Action
		  Save_Keyword
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KeywordUsualOrder() As Boolean Handles KeywordUsualOrder.Action
		  CurrentPreset.Keywords_Positions_Preferred(ListBox_PromptWords)
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PresetAddExampleImage() As Boolean Handles PresetAddExampleImage.Action
		  Var f As New FolderItem
		  f = FolderItem.ShowOpenFileDialog("")
		  
		  If f<>Nil And f.Exists Then
		    
		    CurrentPreset.Sample = Picture.Open(f)
		    Canvas_Sample.Refresh
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PresetDelete() As Boolean Handles PresetDelete.Action
		  Delete_Preset
		  
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
		Private Sub Delete_Keyword()
		  If ListBox_PromptWords.SelectedRowIndex = -1 Then Return
		  
		  If ListBox_PromptWords.SelectedRowCount>1 Then
		    
		    If Not Show_MessageDialog(MessageDialog.IconTypes.Question, "Delete selected Keywords", "Cancel", "Delete selected Keyword(s)", _
		    "Are you sure you want to delete the selected " + ListBox_PromptWords.SelectedRowCount.ToString + " Keywords?") Then Return
		    
		  End If
		  
		  // If the DesktopListBox is in multiple-row selection mode,
		  // then the number of the lowest selected row is returned.
		  // For example, if rows 1 and 4 are selected, it returns a 1.
		  Var SelectedIndex As Integer = ListBox_PromptWords.SelectedRowIndex
		  
		  For X As Integer = ListBox_PromptWords.LastRowIndex DownTo 0
		    
		    If ListBox_PromptWords.RowSelectedAt(X) Then
		      
		      Var KW As New Class_Keyword(ListBox_PromptWords.RowTagAt(X).IntegerValue)
		      
		      Call KW.Delete
		      
		    End If
		    
		  Next
		  
		  Show_Keywords_All(SearchField_Filter.Text.Trim, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		  If SelectedIndex>0 Then ListBox_PromptWords.SelectedRowIndex = SelectedIndex-1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Delete_Preset()
		  If ListBox_Presets.SelectedRowIndex=-1 Then Return
		  
		  If Show_MessageDialog(MessageDialog.IconTypes.Caution, "Delete Preset", "Cancel", "Delete Preset", _
		    "Are you sure you want to delete the Preset named " + ListBox_Presets.SelectedRowValue + " ?") Then
		    
		    Var PS As New Class_Preset(ListBox_Presets.RowTagAt(ListBox_Presets.SelectedRowIndex).IntegerValue)
		    
		    If PS.Delete Then
		      
		      CurrentPreset.Sample = Nil
		      Canvas_Sample.Refresh
		      
		      Load_Preset_All
		      
		    End If
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load_Preset(DatabaseID As Integer)
		  CurrentPreset = New Class_Preset(DatabaseID)
		  If CurrentPreset.DatabaseID>1 Then
		    TextField_PresetName.Text = CurrentPreset.Label
		    TextField_PresetModel.Text = CurrentPreset.Diffusion_Model
		    TextField_PresetSeed.Text = CurrentPreset.Seed
		    TextField_PresetSteps.Text = CurrentPreset.Steps.ToString
		    TextField_PresetScale.Text = Format(CurrentPreset.Guidance_Scale, "0.00")
		    Canvas_Sample.Refresh
		  End If
		  Show_Keywords_All(SearchField_Filter.Text.Trim, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		  Show_Prompt
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Load_Preset_All()
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM preset ORDER by label")
		    
		    If RS <> Nil Then
		      
		      ListBox_Presets.RemoveAllRows
		      
		      While Not RS.AfterLastRow
		        
		        If RS.Column("label").StringValue<>"_AUTOSAVE" Then
		          
		          ListBox_Presets.AddRow(RS.Column("label").StringValue)," "," " // We need to add a Space to each Column, so that PaintCellText fires.
		          ListBox_Presets.RowTagAt(ListBox_Presets.LastAddedRowIndex) = RS.Column("id").IntegerValue
		          
		        End If
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Save_Keyword()
		  If PopupMenu_Category.SelectedRowIndex=0 Then PopupMenu_Category.SelectedRowIndex=1
		  
		  Var KW As New Class_Keyword(0)
		  KW.Keyword=SearchField_Filter.Text.Trim
		  KW.CategoryID=PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue
		  
		  
		  If KW.Save Then
		    
		    Show_Keywords_All(SearchField_Filter.Text.Trim, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Save_Preset()
		  If ListBox_Presets.SelectedRowIndex=-1 Then CurrentPreset.DatabaseID=0
		  
		  CurrentPreset.Keywords_Positions_Update(ListBox_PromptWords)
		  
		  If CurrentPreset.Save Then
		    
		    Load_Preset_All
		    
		    For X As Integer = 0 To ListBox_Presets.LastRowIndex
		      
		      If ListBox_Presets.RowTagAt(X).IntegerValue = CurrentPreset.DatabaseID Then
		        
		        ListBox_Presets.SelectedRowIndex=X
		        
		        Exit For X
		        
		      End If
		      
		    Next
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show_Keywords_All(Filter As String, CategoryID As Integer)
		  If CategoryID = 0 Then
		    
		    ListBox_PromptWords.ColumnSortDirectionAt(5) = DesktopListBox.SortDirections.Ascending
		    ListBox_PromptWords.AllowRowReordering=True
		    
		  Else
		    
		    ListBox_PromptWords.ColumnSortDirectionAt(5) = DesktopListBox.SortDirections.None
		    ListBox_PromptWords.AllowRowReordering=False
		    
		  End If
		  
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
		        
		        ListBox_PromptWords.AddRow("", RS.Column("words").StringValue, Format(RS.Column("weight").DoubleValue, "0.0"), "", RS.Column("label").StringValue,"999999")
		        ListBox_PromptWords.CellCheckBoxValueAt(ListBox_PromptWords.LastAddedRowIndex,3) = RS.Column("negative").BooleanValue
		        If CurrentPreset<>Nil Then
		          ListBox_PromptWords.CellTextAt(ListBox_PromptWords.LastAddedRowIndex,5) = Format(CurrentPreset.Keyword_Position_Get(RS.Column("id").IntegerValue), "000000")
		        End If
		        If ListBox_PromptWords.CellTextAt(ListBox_PromptWords.LastAddedRowIndex,5) <> "999999" Then
		          ListBox_PromptWords.CellCheckBoxValueAt(ListBox_PromptWords.LastAddedRowIndex,0) = True
		        End If
		        ListBox_PromptWords.RowTagAt(ListBox_PromptWords.LastAddedRowIndex) = RS.Column("id").IntegerValue
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		      If ListBox_PromptWords.RowCount>0 Then ListBox_PromptWords.SelectedRowIndex=0
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		  
		  ListBox_PromptWords.Sort
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Show_Prompt()
		  Var s(1) As String = CurrentPreset.Prompt_Generate
		  TextArea_PromptPositive.Text = s(0)
		  TextArea_PromptNegative.Text = s(1)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CurrentPreset As Class_Preset
	#tag EndProperty


#tag EndWindowCode

#tag Events ListBox_PromptWords
	#tag Event
		Sub Opening()
		  Me.ColumnTypeAt(0) = DesktopListBox.CellTypes.CheckBox
		  Me.ColumnTypeAt(1) = DesktopListBox.CellTypes.TextField
		  Me.ColumnTypeAt(2) = DesktopListBox.CellTypes.TextField
		  Me.ColumnTypeAt(3) = DesktopListBox.CellTypes.CheckBox
		  Me.ColumnAlignmentAt(2) = DesktopListBox.Alignments.Decimal
		  Me.ColumnAlignmentAt(3) = DesktopListBox.Alignments.Center
		  Me.ColumnAlignmentOffsetAt(2) = -Me.ColumnAttributesAt(2).WidthActual/2
		  
		  Me.ColumnSortDirectionAt(-1) = DesktopListbox.SortDirections.None
		  Me.SortingColumn=5
		  Me.ColumnSortDirectionAt(5) = DesktopListbox.SortDirections.Ascending
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If row>-1 And row<Me.RowCount Then
		    
		    Var KW As New Class_Keyword(Me.RowTagAt(row).IntegerValue)
		    KW.Keyword = Me.CellTextAt(row,1).Trim
		    KW.Weight = Me.CellTextAt(row,2).ToDouble
		    KW.Negative = Me.CellCheckBoxValueAt(row,3)
		    KW.Position = row
		    Call KW.Save
		    
		    If KW.DatabaseID>0 Then
		      
		      If Me.CellCheckBoxValueAt(row,0) Then
		        
		        CurrentPreset.Keyword_Add(KW)
		        
		      Else
		        
		        CurrentPreset.Keyword_Remove(KW)
		        
		      End If
		      
		      Me.Refresh
		      
		      Show_Prompt
		      
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
		      
		      If Me.CellCheckBoxValueAt(X,0) Then
		        
		        CurrentPreset.Keyword_Remove(Me.RowTagAt(X).IntegerValue)
		        Me.CellCheckBoxValueAt(X,0) = False
		        
		      End If
		      
		    Next
		    
		  End Select
		End Function
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
		          
		          CurrentPreset.Keyword_Add(KW)
		          
		        Else
		          
		          CurrentPreset.Keyword_Remove(KW)
		          
		        End If
		        
		        Show_Prompt
		        
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
	#tag Event
		Sub DoublePressed()
		  If Not Me.CellCheckBoxValueAt(Me.SelectedRowIndex,0) Then Return
		  If PopupMenu_Category.SelectedRowIndex>0 Then Return
		  
		  Me.AddRowAt(0, "")
		  Me.CellCheckBoxValueAt(0,0)=True
		  Me.CellTextAt(0,1)=Me.CellTextAt(Me.SelectedRowIndex,1)
		  Me.CellTextAt(0,2)=Me.CellTextAt(Me.SelectedRowIndex,2)
		  Me.CellCheckBoxValueAt(0,3)=Me.CellCheckBoxValueAt(Me.SelectedRowIndex,3)
		  Me.CellTextAt(0,4)=Me.CellTextAt(Me.SelectedRowIndex,4)
		  Me.CellTagAt(0,4)=Me.CellTagAt(Me.SelectedRowIndex,4).IntegerValue
		  Me.RowTagAt(0)=Me.RowTagAt(Me.SelectedRowIndex)
		  Me.RemoveRowAt(Me.SelectedRowIndex)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextArea_PromptPositive
	#tag Event
		Sub TextChanged()
		  Label_PositivePrompt_Length.Text = "Length: " + Me.Text.Length.ToString
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextArea_PromptNegative
	#tag Event
		Sub TextChanged()
		  Label_NegativePrompt_Length.Text = "Length: " + Me.Text.Length.ToString
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchField_Filter
	#tag Event
		Sub Pressed()
		  Show_Keywords_All(Me.Text, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  Show_Keywords_All(Me.Text, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Category
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Show_Keywords_All(SearchField_Filter.Text, Me.RowTagAt(Me.SelectedRowIndex).IntegerValue)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.Load_Categorys
		  Me.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Save_Keyword
	#tag Event
		Sub Pressed()
		  Save_Keyword
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Copy_PromptPositive
	#tag Event
		Sub Pressed()
		  Var c As New Clipboard
		  c.Text = TextArea_PromptPositive.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Copy_PromptNegative
	#tag Event
		Sub Pressed()
		  Var c As New Clipboard
		  c.Text = TextArea_PromptNegative.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Delete_Keyword
	#tag Event
		Sub Pressed()
		  Delete_Keyword
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Sample
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.ClearRectangle(0,0,g.Width,g.Height)
		  
		  If CurrentPreset=Nil Or CurrentPreset.Sample=Nil Then
		    
		    g.DrawingColor=&cE4E4E400
		    g.FillRectangle(0,0,g.Width,g.Height)
		    g.DrawingColor=&cB6B6B600
		    g.DrawRectangle(0,0,g.Width,g.Height)
		    g.DrawingColor = &c99999900
		    g.Bold = True
		    g.FontSize = g.Width/18
		    g.DrawText("Drop an image here or click here with the primary mouse button to add an example image." + EndOfLine + EndOfLine + _
		    "Click with the secondary mouse button to view the example image in a separate Window.",16,30,g.Width-32)
		    
		  Else
		    
		    Var p As Picture
		    p = Scale_Proportional(CurrentPreset.Sample,g.Width,g.Height)
		    
		    If p.Width<p.Height Then
		      
		      g.DrawPicture(p,(g.Width/2)-(p.Width/2),0)
		      
		    Else
		      
		      g.DrawPicture(p,0,(g.Height/2)-(p.Height/2))
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  If IsContextualClick Then
		    
		    If CurrentPreset.Sample<>Nil Then
		      
		      Window_PresetSample.Show
		      Window_PresetSample.PresetSample = CurrentPreset.Sample
		      
		    End If
		    
		  Else
		    
		    Var f As New FolderItem
		    f = FolderItem.ShowOpenFileDialog("")
		    
		    If f<>Nil And f.Exists Then
		      
		      CurrentPreset.Sample = Picture.Open(f)
		      Me.Refresh
		      
		    End If
		    
		  End If
		  
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
		    Me.Refresh
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetScale
	#tag Event
		Sub TextChanged()
		  CurrentPreset.Guidance_Scale=CDbl(Me.Text)
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
#tag Events TextField_PresetSeed
	#tag Event
		Sub TextChanged()
		  CurrentPreset.Seed=Me.Text.Trim
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
#tag Events ListBox_Presets
	#tag Event
		Sub SelectionChanged()
		  If Me.SelectedRowIndex=-1 Then Return
		  
		  Load_Preset(Me.RowTagAt(Me.SelectedRowIndex))
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseMove(x As Integer, y As Integer)
		  Var xLocal,yLocal,row As Integer
		  xLocal = System.MouseX - Me.Left - Self.Left
		  yLocal = System.MouseY - Me.Top - Self.Top
		  row = Me.RowFromXY(xLocal,yLocal)
		  
		  If row=-1 Or row>Me.LastRowIndex Then Return
		  
		  Me.Tooltip = Me.CellTextAt(row,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Delete_Preset
	#tag Event
		Sub Pressed()
		  Delete_Preset
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BevelButton_Save_Preset
	#tag Event
		Sub Pressed()
		  Save_Preset
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
