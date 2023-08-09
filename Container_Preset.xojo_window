#tag DesktopWindow
Begin DesktopContainer Container_Preset
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   486
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   314
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
      Left            =   0
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
      Top             =   0
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
      Left            =   62
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
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
      Top             =   0
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   164
   End
   Begin PushButtonSized PushButton_Save_Preset
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "💾"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   238
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Save the currently selected keywords as a new preset under the name entered on the left.\r\n\r\nIf you change the name shown at left of a previously selected preset, the preset will be saved as a new preset with the new name."
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   32
   End
   Begin PushButtonSized PushButton_Delete_Preset
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "🗑️"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   282
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Delete the current preset."
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   32
   End
   Begin DesktopListBoxDM ListBox_Presets
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
      Height          =   160
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      NegativeColumn  =   3
      RequiresSelection=   True
      RowSelectionType=   0
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   34
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   314
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopTabPanel TabPanel_Preset
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   280
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   2
      SmallTabs       =   False
      TabDefinition   =   "Example Image\rSettings"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   206
      Transparent     =   False
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   314
      Begin DesktopCanvas Canvas_Sample
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   True
         AllowTabs       =   False
         Backdrop        =   0
         Enabled         =   True
         Height          =   222
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Preset"
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   False
         Tooltip         =   "Drop an image here or click here with the primary mouse button to add an example image.\r\n\r\nClick with the secondary mouse button to view the example image in a separate Window."
         Top             =   244
         Transparent     =   False
         Visible         =   True
         Width           =   274
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
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Top             =   346
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   182
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
         Left            =   20
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
         Text            =   "Scale / CFG:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "Controls how much the image generation process follows the text prompt. The higher the value, the more the image sticks to the given text input."
         Top             =   346
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
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Top             =   312
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   182
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
         InitialParent   =   "TabPanel_Preset"
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
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   "Steps:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "Controls the number of denoising steps. Usually, higher is better but only to a certain degree."
         Top             =   312
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
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Top             =   278
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   182
      End
      Begin DesktopLabel Label_PresetInfo
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   5
         InitialParent   =   "TabPanel_Preset"
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
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   "Seed:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "A number used to initialize the Generation. The seed can help to generate reproducible Images."
         Top             =   278
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin DesktopLabel Label_PresetInfo
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   6
         InitialParent   =   "TabPanel_Preset"
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
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   "Model:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "The Model menu allows you to add models and their recommended prompts."
         Top             =   244
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin DesktopComboBox ComboBox_PresetModel
         AllowAutoComplete=   False
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Preset"
         InitialValue    =   ""
         Italic          =   False
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   244
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   182
      End
      Begin DesktopLabel Label_PresetInfo
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   7
         InitialParent   =   "TabPanel_Preset"
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
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   False
         Text            =   "Notes:"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   380
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin DesktopTextArea TextArea_ModelNotes
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   False
         AllowStyledText =   True
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   80
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel_Preset"
         Italic          =   False
         Left            =   112
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   2
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   "Notes on the selected model preset."
         Top             =   386
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   1
         ValidationMask  =   ""
         Visible         =   True
         Width           =   182
      End
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Resized()
		  Var BoxHeight As Integer = Self.Height / 3
		  ListBox_Presets.Height = BoxHeight
		  TabPanel_Preset.Top = ListBox_Presets.Top + BoxHeight + 14
		  TabPanel_Preset.Height = (BoxHeight * 2) - 48
		  Self.Refresh
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub Model_Load()
		  TextArea_ModelNotes.Text = ""
		  
		  Try
		    
		    Var RS As RowSet = App.SDP_Database.SelectSQL("SELECT notes FROM model WHERE name=?", ComboBox_PresetModel.Text.Trim)
		    
		    If RS<>Nil And Not RS.AfterLastRow Then
		      
		      TextArea_ModelNotes.Text = RS.Column("notes").StringValue
		      
		    End If
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Presets_List()
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

	#tag Method, Flags = &h0
		Sub Preset_AddExampleImage()
		  Var f As New FolderItem
		  f = FolderItem.ShowOpenFileDialog("")
		  
		  If f<>Nil And f.Exists Then
		    
		    CurrentPreset.Sample = Picture.Open(f)
		    Canvas_Sample.Refresh
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Preset_Delete()
		  If ListBox_Presets.SelectedRowIndex=-1 Then Return
		  
		  If Show_MessageDialog(MessageDialog.IconTypes.Caution, "Delete Preset", "Cancel", "Delete Preset", _
		    "Are you sure you want to delete the Preset named " + ListBox_Presets.SelectedRowValue + " ?") Then
		    
		    Var PS As New Class_Preset(ListBox_Presets.RowTagAt(ListBox_Presets.SelectedRowIndex).IntegerValue)
		    
		    Var SelectedRowIndex As Integer = ListBox_Presets.SelectedRowIndex
		    If PS.Delete Then
		      
		      CurrentPreset.Sample = Nil
		      Canvas_Sample.Refresh
		      
		      Presets_List
		      
		    End If
		    If SelectedRowIndex<ListBox_Presets.RowCount Then ListBox_Presets.SelectedRowIndex=SelectedRowIndex
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Preset_Load(DatabaseID As Integer)
		  TextField_PresetName.Enabled = False
		  CurrentPreset = New Class_Preset(DatabaseID)
		  If CurrentPreset.DatabaseID>1 Then
		    TextField_PresetName.Text = CurrentPreset.Label
		    ComboBox_PresetModel.Text = CurrentPreset.Diffusion_Model.Name
		    TextField_PresetSeed.Text = CurrentPreset.Seed
		    TextField_PresetSteps.Text = CurrentPreset.Steps.ToString
		    TextField_PresetScale.Text = Format(CurrentPreset.Guidance_Scale, "0.00")
		    Model_Load
		    Canvas_Sample.Refresh
		  End If
		  TextField_PresetName.Enabled = True
		  
		  Window_Main.Cont_Keyword.Keywords_List
		  Window_Main.Cont_Keyword.Prompt_Show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Preset_Save()
		  If ListBox_Presets.SelectedRowIndex=-1 Then CurrentPreset.DatabaseID=0
		  
		  Window_Main.Cont_Keyword.Keywords_PositionUpdate
		  
		  If CurrentPreset.Save Then
		    
		    Presets_List
		    
		    For X As Integer = 0 To ListBox_Presets.LastRowIndex
		      
		      If ListBox_Presets.RowTagAt(X).IntegerValue = CurrentPreset.DatabaseID Then
		        
		        ListBox_Presets.SelectedRowIndex=X
		        
		        Exit For X
		        
		      End If
		      
		    Next
		    
		  End If
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events TextField_PresetName
	#tag Event
		Sub TextChanged()
		  If Not Me.Enabled Then Return
		  
		  CurrentPreset.Label = Me.Text.Trim
		  CurrentPreset.DatabaseID=0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Save_Preset
	#tag Event
		Sub Action()
		  Preset_Save
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton_Delete_Preset
	#tag Event
		Sub Action()
		  Preset_Delete
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ListBox_Presets
	#tag Event
		Sub SelectionChanged()
		  If Me.SelectedRowIndex=-1 Then Return
		  
		  Preset_Load(Me.RowTagAt(Me.SelectedRowIndex))
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
#tag Events TabPanel_Preset
	#tag Event
		Sub PanelChanged()
		  ComboBox_PresetModel.Load_Models
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Canvas_Sample
	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.ClearRectangle(0,0,g.Width,g.Height)
		  
		  If CurrentPreset=Nil Or CurrentPreset.Sample=Nil Then
		    
		    If Color.IsDarkMode Then
		      
		      #If TargetWindows Then
		        g.DrawingColor=&c21212100
		      #Else
		        g.DrawingColor=&c2F2F2E00
		      #EndIf
		      g.FillRectangle(0,0,g.Width,g.Height)
		      g.DrawingColor=&c43434300
		      g.DrawRectangle(0,0,g.Width,g.Height)
		      g.DrawingColor = &cA9A9A900
		      
		    Else
		      
		      #If TargetWindows Then
		        g.DrawingColor=&cFFFFFF00
		      #Else
		        g.DrawingColor=&cE4E4E400
		      #EndIf
		      g.FillRectangle(0,0,g.Width,g.Height)
		      g.DrawingColor=&cB6B6B600
		      g.DrawRectangle(0,0,g.Width,g.Height)
		      g.DrawingColor = &c99999900
		      
		    End If
		    
		    g.Bold = True
		    
		    If g.Width<g.Height Then
		      g.FontSize = g.Width/18
		    Else
		      g.FontSize = g.Height/16
		    End If
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
#tag Events ComboBox_PresetModel
	#tag Event
		Sub TextChanged()
		  CurrentPreset.Diffusion_Model.Name=Me.Text.Trim
		  CurrentPreset.Diffusion_Model.Load
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  CurrentPreset.Diffusion_Model.Name=Me.Text
		  CurrentPreset.Diffusion_Model.Load
		  TextArea_ModelNotes.Text=CurrentPreset.Diffusion_Model.Note
		  Window_Main.Cont_Keyword.Prompt_Show
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
		Name="Super"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
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
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composited"
		Visible=true
		Group="Window Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
