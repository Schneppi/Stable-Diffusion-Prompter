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
   Height          =   538
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1549287423
   MenuBarVisible  =   False
   MinimumHeight   =   538
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
      ColumnCount     =   5
      ColumnWidths    =   "16,*,50,65,120"
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
      Height          =   254
      Index           =   -2147483648
      InitialValue    =   "Use	Prompt	Weight	Negative	Category"
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
      TabIndex        =   0
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
      Height          =   116
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   370
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   266
   End
   Begin DesktopComboBox ComboBox_PresetName
      AllowAutoComplete=   True
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Hint            =   "Preset Name"
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
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
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
      Height          =   116
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
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   370
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
      TabIndex        =   9
      TabPanelIndex   =   0
      Text            =   ""
      Tooltip         =   ""
      Top             =   18
      Transparent     =   False
      Visible         =   True
      Width           =   416
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   318
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
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   448
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   120
   End
   Begin DesktopButton Button_PositivePrompt
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Copy positive prompt"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   498
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   266
   End
   Begin DesktopButton Button_CopyNegativePrompt
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Copy negative prompt"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   302
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   498
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   266
   End
   Begin DesktopLabel Label_PresetInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
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
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Diffusion Model:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   52
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
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   84
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
      Height          =   20
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
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Seed Number:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   118
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
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   150
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
      Height          =   20
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
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Diffusion Steps:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   184
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
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   216
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
      Height          =   20
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
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Guidance Scale:"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   250
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
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   282
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   200
   End
   Begin DesktopLabel Label_Information
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   40
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
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   318
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   548
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  CurrentPreset.DatabaseID = 1
		  
		  If Not CurrentPreset.Save() Then
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  CurrentPreset = New Class_Preset
		  
		  Load_Categorys
		  Show_Keywords(SearchField_Filter.Text.Trim,PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		  Load_Presets
		  
		  CurrentPreset.DatabaseID=1
		  If CurrentPreset.Load Then
		    
		    TextField_PresetModel.Text = CurrentPreset.Diffusion_Model
		    TextField_PresetSeed.Text = CurrentPreset.Seed.ToString
		    TextField_PresetSteps.Text = CurrentPreset.Steps.ToString
		    TextField_PresetScale.Text = CurrentPreset.Guidance_Scale.ToString
		    Canvas_Sample.Backdrop=ProportionalScale(CurrentPreset.Sample,200,200)
		    
		    For X As Integer = 0 To ListBox_PromptWords.LastRowIndex
		      
		      For Each KW As Class_Keyword In CurrentPreset.Keywords
		        
		        If KW.DatabaseID=ListBox_PromptWords.RowTagAt(X).IntegerValue Then
		          
		          ListBox_PromptWords.CellCheckBoxValueAt(X,0) = True
		          ListBox_PromptWords.CellTextAt(X,2) = KW.Weight.ToString
		          ListBox_PromptWords.CellCheckBoxValueAt(X,3)=KW.Negative
		          
		          Exit
		          
		        End If
		        
		      Next
		      
		    Next
		    
		  End If
		  
		  GeneratePrompt
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function KeywordAdd() As Boolean Handles KeywordAdd.Action
		  If PopupMenu_Category.SelectedRowIndex=0 Then PopupMenu_Category.SelectedRowIndex=1
		  
		  Var KW As New Class_Keyword
		  KW.Keyword=SearchField_Filter.Text.Trim
		  KW.CategoryID=PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue
		  
		  If KW.Save Then
		    
		    Show_Keywords(SearchField_Filter.Text.Trim, _
		    PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function KeywordRemove() As Boolean Handles KeywordRemove.Action
		  If ListBox_PromptWords.SelectedRowIndex = -1 Then Return False
		  
		  Var KW As New Class_Keyword
		  KW.DatabaseID=ListBox_PromptWords.RowTagAt(ListBox_PromptWords.SelectedRowIndex).IntegerValue
		  
		  If KW.Delete Then
		    
		    Show_Keywords(SearchField_Filter.Text.Trim, _
		    PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		    
		  End If
		  
		  Return True
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PresetAddsampleImage() As Boolean Handles PresetAddsampleImage.Action
		  Var f As New FolderItem
		  f = FolderItem.ShowOpenFileDialog("")
		  
		  If f<>Nil And f.Exists Then
		    
		    CurrentPreset.Sample = Picture.Open(f)
		    Canvas_Sample.Backdrop = ProportionalScale(CurrentPreset.Sample,200,200)
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PresetDelete() As Boolean Handles PresetDelete.Action
		  Var PS As New Class_Preset
		  PS.DatabaseID=ComboBox_PresetName.RowTagAt(ComboBox_PresetName.SelectedRowIndex).IntegerValue
		  
		  If PS.Delete Then
		    
		    Load_Presets
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function PresetSave() As Boolean Handles PresetSave.Action
		  If CurrentPreset.Save Then
		    
		    Load_Presets
		    
		  End If
		  
		  Return True
		  
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub GeneratePrompt()
		  TextArea_PromptPositive.Text = ""
		  TextArea_PromptNegative.Text = ""
		  
		  For X As Integer = 0 To ListBox_PromptWords.RowCount-1
		    
		    If ListBox_PromptWords.CellCheckBoxValueAt(X,0) And ListBox_PromptWords.CellTextAt(X,1).Trim.Length>0 Then
		      
		      If ListBox_PromptWords.CellCheckBoxValueAt(X,3) Then
		        
		        If ListBox_PromptWords.CellTextAt(X,2).ToDouble <> 1 Then
		          
		          TextArea_PromptNegative.AddText "(" + ListBox_PromptWords.CellTextAt(X,1) + ":" + ListBox_PromptWords.CellTextAt(X,2).Replace(",",".") + "), "
		          
		        Else
		          
		          TextArea_PromptNegative.AddText ListBox_PromptWords.CellTextAt(X,1) + ", "
		          
		        End If
		        
		      Else
		        
		        If ListBox_PromptWords.CellTextAt(X,2).ToDouble <> 1 Then
		          
		          TextArea_PromptPositive.AddText "(" + ListBox_PromptWords.CellTextAt(X,1) + ":" + ListBox_PromptWords.CellTextAt(X,2).Replace(",",".") + "), "
		          
		        Else
		          
		          TextArea_PromptPositive.AddText ListBox_PromptWords.CellTextAt(X,1) + ", "
		          
		        End If
		        
		      End If
		      
		    End If
		    
		  Next
		  
		  TextArea_PromptPositive.Text = TextArea_PromptPositive.Text.Left(TextArea_PromptPositive.Text.Length-2)
		  TextArea_PromptNegative.Text = TextArea_PromptNegative.Text.Left(TextArea_PromptNegative.Text.Length-2)
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
		Private Sub Load_Presets()
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT * FROM preset ORDER by label")
		    
		    If RS <> Nil Then
		      
		      ComboBox_PresetName.RemoveAllRows
		      
		      While Not RS.AfterLastRow
		        
		        If RS.Column("label").StringValue<>"_AUTOSAVE" Then
		          
		          ComboBox_PresetName.AddRow(RS.Column("label").StringValue)
		          ComboBox_PresetName.RowTagAt(ComboBox_PresetName.LastAddedRowIndex) = RS.Column("id").IntegerValue
		          
		        End If
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		    End If
		    
		    ComboBox_PresetName.SelectedRowIndex=-1
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Show_Keywords(Filter As String, CategoryID As Integer)
		  Try
		    
		    Var RS As RowSet
		    
		    If Filter.Trim.Length=0 Then
		      
		      If CategoryID=0 Then
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "ORDER BY keyword.words")
		        
		      Else
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "WHERE id_category=? " + _
		        "ORDER BY keyword.words", CategoryID)
		        
		      End If
		      
		    Else
		      
		      Filter = "%" + Filter.ReplaceAll(" ","%") + "%"
		      
		      If CategoryID=0 Then
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "WHERE keyword.words LIKE ? " + _
		        "ORDER BY keyword.words", Filter)
		        
		      Else
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "WHERE keyword.words LIKE ? AND id_category=? " + _
		        "ORDER BY keyword.words", Filter, CategoryID)
		        
		      End If
		      
		    End If
		    
		    If RS <> Nil Then
		      
		      ListBox_PromptWords.RemoveAllRows
		      
		      While Not RS.AfterLastRow
		        
		        ListBox_PromptWords.AddRow("", RS.Column("words").StringValue, "1", "", RS.Column("label").StringValue)
		        ListBox_PromptWords.CellCheckBoxValueAt(ListBox_PromptWords.LastAddedRowIndex,3) = RS.Column("negative").BooleanValue
		        ListBox_PromptWords.RowTagAt(ListBox_PromptWords.LastAddedRowIndex) = RS.Column("id").IntegerValue
		        
		        RS.MoveToNextRow
		        
		      Wend
		      
		      If ListBox_PromptWords.RowCount>0 Then ListBox_PromptWords.SelectedRowIndex=0
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UIEnabled(State As Boolean = True)
		  ComboBox_PresetName.Enabled = State
		  TextField_PresetModel.Enabled = State
		  TextField_PresetSeed.Enabled = State
		  TextField_PresetSteps.Enabled = State
		  TextField_PresetScale.Enabled = State
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Update_SelectedKeywords(Optional Action As String, Optional ID As Integer)
		  Select Case Action
		    
		  Case "Add"
		    
		    If  SelectedKeywordIDs.IndexOf(ID)=-1 Then
		      
		      SelectedKeywordIDs.Add(ID)
		      
		    End If
		    
		  Case "Del"
		    
		    If SelectedKeywordIDs.IndexOf(ID)>-1 Then
		      
		      SelectedKeywordIDs.RemoveAt(SelectedKeywordIDs.IndexOf(ID))
		      
		    End If
		    
		  Else
		    
		    If ListBox_PromptWords.RowCount>0 Then
		      
		      If CurrentPreset.DatabaseID>0 Then
		        
		        For Each KW As Class_Keyword In CurrentPreset.Keywords
		          
		          If SelectedKeywordIDs.IndexOf(KW.DatabaseID)=-1 Then
		            
		            SelectedKeywordIDs.Add KW.DatabaseID
		            
		          End If
		          
		        Next
		        
		      End If
		      
		      For X As Integer = 0 To ListBox_PromptWords.LastRowIndex
		        
		        If SelectedKeywordIDs.IndexOf(ListBox_PromptWords.RowTagAt(X).IntegerValue)>-1 Then
		          
		          ListBox_PromptWords.CellCheckBoxValueAt(X,0) = True
		          
		        Else
		          
		          ListBox_PromptWords.CellCheckBoxValueAt(X,0) = False
		          
		        End If
		        
		      Next
		      
		    End If
		    
		  End Select
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CurrentPreset As Class_Preset
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SelectedKeywordIDs() As Integer
	#tag EndProperty


	#tag Constant, Name = StandardInformation, Type = String, Dynamic = False, Default = \"The prompts will be generated using the information taken from the list above\x2C they are NOT part of the saved preset!", Scope = Private
	#tag EndConstant


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
		  Me.ColumnAlignmentOffsetAt(2) = -16
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If row>-1 Then
		    
		    Var KW As New Class_Keyword
		    KW.DatabaseID=Me.RowTagAt(row).IntegerValue
		    
		    If KW.Load Then
		      
		      KW.Keyword=Me.CellTextAt(row,1).Trim
		      KW.CategoryID=PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue
		      KW.Weight=Me.CellTextAt(row, 2).ToInteger
		      KW.Negative=Me.CellCheckBoxValueAt(row,3)
		      
		      If Not KW.Save Then
		        
		      End If
		      
		    End If
		    
		    If Me.CellCheckBoxValueAt(row,0) Then
		      
		      Update_SelectedKeywords("Add", Me.RowTagAt(row).IntegerValue)
		      
		    Else
		      
		      Update_SelectedKeywords("Del", Me.RowTagAt(row).IntegerValue)
		      
		    End If
		    
		  End If
		  
		  GeneratePrompt
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
#tag EndEvents
#tag Events ComboBox_PresetName
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  If Me.RowTagAt(Me.SelectedRowIndex) = -1 Then Return
		  
		  UIEnabled(False)
		  
		  CurrentPreset.DatabaseID=Me.RowTagAt(Me.SelectedRowIndex).IntegerValue
		  If CurrentPreset.Load Then
		    
		    TextField_PresetModel.Text = CurrentPreset.Diffusion_Model
		    TextField_PresetSeed.Text = CurrentPreset.Seed.ToString
		    TextField_PresetSteps.Text = CurrentPreset.Steps.ToString
		    TextField_PresetScale.Text = CurrentPreset.Guidance_Scale.ToString
		    Canvas_Sample.Backdrop=ProportionalScale(CurrentPreset.Sample,200,200)
		    
		    For X As Integer = 0 To ListBox_PromptWords.LastRowIndex
		      
		      For Each KW As Class_Keyword In CurrentPreset.Keywords
		        
		        If KW.DatabaseID=ListBox_PromptWords.RowTagAt(X).IntegerValue Then
		          
		          ListBox_PromptWords.CellCheckBoxValueAt(X,0) = True
		          ListBox_PromptWords.CellTextAt(X,2) = KW.Weight.ToString
		          ListBox_PromptWords.CellCheckBoxValueAt(X,3)=KW.Negative
		          
		          Exit
		          
		        End If
		        
		      Next
		      
		    Next
		    
		  End If
		  
		  UIEnabled
		  
		  GeneratePrompt
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  If Me.Enabled Then
		    
		    CurrentPreset.DatabaseID=0
		    CurrentPreset.Label=Me.Text.Trim
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchField_Filter
	#tag Event
		Sub TextChanged()
		  Show_Keywords(Me.Text.Trim, _
		  PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Sample
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.DrawRectangle(0,0,g.Width,g.Height)
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  Var f As New FolderItem
		  f = FolderItem.ShowOpenFileDialog("")
		  
		  If f<>Nil And f.Exists Then
		    
		    CurrentPreset.Sample = Picture.Open(f)
		    Canvas_Sample.Backdrop = ProportionalScale(CurrentPreset.Sample,200,200)
		    
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
		    Me.Backdrop = ProportionalScale(CurrentPreset.Sample,200,200)
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Category
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Show_Keywords(SearchField_Filter.Text.Trim, _
		  Me.RowTagAt(Me.SelectedRowIndex).IntegerValue)
		  
		  Update_SelectedKeywords
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button_PositivePrompt
	#tag Event
		Sub Pressed()
		  Var c As New Clipboard
		  c.Text = TextArea_PromptPositive.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button_CopyNegativePrompt
	#tag Event
		Sub Pressed()
		  Var c As New Clipboard
		  c.Text = TextArea_PromptNegative.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetModel
	#tag Event
		Sub TextChanged()
		  If Me.Enabled Then CurrentPreset.Diffusion_Model=Me.Text.Trim
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetSeed
	#tag Event
		Sub TextChanged()
		  If Me.Enabled Then CurrentPreset.Seed=Me.Text.Trim.ToDouble
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetSteps
	#tag Event
		Sub TextChanged()
		  If Me.Enabled Then CurrentPreset.Steps=Me.Text.Trim.ToInteger
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextField_PresetScale
	#tag Event
		Sub TextChanged()
		  If Me.Enabled Then CurrentPreset.Guidance_Scale=Me.Text.Trim.ToInteger
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
