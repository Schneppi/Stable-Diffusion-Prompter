#tag DesktopWindow
Begin DesktopContainer Container_Keyword
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
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   564
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
      Left            =   0
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
      Top             =   0
      Transparent     =   False
      Visible         =   True
      Width           =   304
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
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
      Left            =   316
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Save the text entered in the prompt filter as new keyword, in the selected category."
      Top             =   0
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
      Left            =   350
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Delete the keyword marked in the list below from the database."
      Top             =   0
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
      Left            =   384
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Select a Keyword Category.\r\nCategories are for organization only and do not affect the image generation of your prompt."
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   180
   End
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
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   True
      RowSelectionType=   1
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "The order of the keywords can be changed using drag & drop.\r\nDouble Click to move an activated Keyword to the top of the list."
      Top             =   34
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   564
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin KeywordsTextArea TextArea_PromptPositive
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
      Left            =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   298
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   280
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
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Length: 0"
      TextAlignment   =   2
      TextColor       =   &c5C5C5C00
      Tooltip         =   ""
      Top             =   451
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   278
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
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Copy the text above this button to the clipboard so you can paste it elsewhere."
      Top             =   464
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   278
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
   Begin KeywordsTextArea TextArea_PromptNegative
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
      Left            =   292
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
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   298
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   272
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
      Left            =   292
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Length: 0"
      TextAlignment   =   2
      TextColor       =   &c5C5C5C00
      Tooltip         =   ""
      Top             =   451
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   272
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
      Left            =   292
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   0
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   10
      TabPanelIndex   =   0
      TextColor       =   &c00000000
      Tooltip         =   "Copy the text above this button to the clipboard so you can paste it elsewhere."
      Top             =   464
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   272
      _mIndex         =   0
      _mInitialParent =   ""
      _mName          =   ""
      _mPanelIndex    =   0
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Resized()
		  Var TextAreaWidth As Integer = (Self.Width / 2) - 6
		  TextArea_PromptPositive.Width = TextAreaWidth
		  BevelButton_Copy_PromptPositive.Width = TextAreaWidth
		  Label_PositivePrompt_Length.Width = TextAreaWidth
		  TextArea_PromptNegative.Left = TextAreaWidth + 12
		  TextArea_PromptNegative.Width = TextAreaWidth
		  BevelButton_Copy_PromptNegative.Left = TextArea_PromptNegative.Left
		  BevelButton_Copy_PromptNegative.Width = TextAreaWidth
		  Label_NegativePrompt_Length.Left = TextArea_PromptNegative.Left
		  Label_NegativePrompt_Length.Width = TextAreaWidth
		  Self.Refresh
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Delete_Keyword()
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
		      
		      CurrentPreset.Keyword_Remove(KW)
		      Call KW.Delete
		      
		    End If
		    
		  Next
		  
		  Show_Keywords_All(SearchField_Filter.Text.Trim)
		  If SelectedIndex<ListBox_PromptWords.RowCount Then ListBox_PromptWords.SelectedRowIndex=SelectedIndex
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function KeywordFilter() As String
		  Return SearchField_Filter.Text.Trim
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub KeywordList_DeselectAll()
		  If ListBox_PromptWords.RowCount=0 Then Return
		  
		  For X As Integer = 0 To ListBox_PromptWords.LastRowIndex
		    
		    If ListBox_PromptWords.CellCheckBoxValueAt(X,0) Then
		      
		      CurrentPreset.Keyword_Remove(ListBox_PromptWords.RowTagAt(X).IntegerValue)
		      ListBox_PromptWords.CellCheckBoxValueAt(X,0) = False
		      
		    End If
		    
		  Next
		  
		  Show_Prompt
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub KeywordList_SelectKeywords(Keywords() As String)
		  If Keywords.Count=0 Then Return
		  If ListBox_PromptWords.RowCount=0 Then Return
		  
		  For Y As Integer = 0 To Keywords.LastIndex
		    
		    For X As Integer = 0 To ListBox_PromptWords.LastRowIndex
		      
		      If ListBox_PromptWords.CellTextAt(X,1)=Keywords(Y) Then
		        
		        CurrentPreset.Keyword_Add(ListBox_PromptWords.RowTagAt(X).IntegerValue)
		        ListBox_PromptWords.CellCheckBoxValueAt(X,0)=True
		        
		      End If
		      
		    Next
		    
		  Next
		  
		  Show_Prompt
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Keywords_Positions_Preferred()
		  If ListBox_PromptWords.RowCount=0 Then Return
		  
		  Var x,y As Integer
		  Var rs As RowSet
		  
		  Try
		    
		    rs = App.SDP_Database.SelectSQL("SELECT preset_keyword.id_keyword As id, " + _
		    "AVG( preset_keyword.position ) As position , " + _
		    "keyword.negative As negative " + _
		    "FROM preset " + _
		    "INNER JOIN preset_keyword ON preset.id = preset_keyword.id_preset " + _
		    "INNER JOIN keyword ON keyword.id = preset_keyword.id_keyword " + _
		    "GROUP BY position " + _
		    "ORDER BY negative,position")
		    
		    If rs=Nil Then Return
		    
		    While Not rs.AfterLastRow
		      
		      For Y = 0 To CurrentPreset.Keywords.LastIndex
		        
		        If rs.Column("id").IntegerValue=CurrentPreset.Keywords(Y).DatabaseID Then
		          
		          CurrentPreset.Keywords(Y).Position = X
		          
		          X = X + 1
		          Exit For Y
		          
		        End If
		        
		      Next
		      
		      rs.MoveToNextRow
		      
		    Wend
		    
		    For X = 0 To ListBox_PromptWords.LastRowIndex
		      
		      ListBox_PromptWords.CellTextAt(X,5)="999999"
		      
		      For Y = 0 To CurrentPreset.Keywords.LastIndex
		        
		        If CurrentPreset.Keywords(Y).DatabaseID = ListBox_PromptWords.RowTagAt(X) Then
		          
		          ListBox_PromptWords.CellTextAt(X,5)=Format(CurrentPreset.Keywords(Y).Position, "000000")
		          ListBox_PromptWords.CellTextAt(X,2)=Format(CurrentPreset.Keywords(Y).Weight, "0.0")
		          Exit For Y
		          
		        End If
		        
		      Next
		      
		    Next
		    
		    ListBox_PromptWords.Sort
		    
		    Keywords_Positions_Update
		    
		  Catch err As DatabaseException
		    
		    System.Log(System.LogLevelError, CurrentMethodName + " - Error Code: " + err.ErrorNumber.ToString + EndOfLine + "Error Message: " + err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Keywords_Positions_Update()
		  If ListBox_PromptWords.RowCount=0 Then Return
		  
		  For Y As Integer = 0 To CurrentPreset.Keywords.LastIndex
		    
		    For X As Integer = 0 To ListBox_PromptWords.LastRowIndex
		      
		      If ListBox_PromptWords.RowTagAt(X).IntegerValue=CurrentPreset.Keywords(Y).DatabaseID Then
		        
		        CurrentPreset.Keywords(Y).Position = X
		        
		        Exit For X
		        
		      End If
		      
		    Next
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub List_UsualOrder()
		  Keywords_Positions_Preferred
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Remove_Tooltip_KeywordList()
		  ListBox_PromptWords.Tooltip=""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save_Keyword()
		  If PopupMenu_Category.SelectedRowIndex=0 Then PopupMenu_Category.SelectedRowIndex=1
		  
		  Var KW As New Class_Keyword(0)
		  KW.Keyword=SearchField_Filter.Text.Trim
		  KW.CategoryID=PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue
		  
		  
		  If KW.Save Then
		    
		    Show_Keywords_All(SearchField_Filter.Text.Trim)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show_Keywords_All(Filter As String)
		  If PopupMenu_Category.SelectedRowIndex=0 Then
		    
		    ListBox_PromptWords.ColumnSortDirectionAt(5) = DesktopListBox.SortDirections.Ascending
		    ListBox_PromptWords.AllowRowReordering=True
		    
		  Else
		    
		    ListBox_PromptWords.ColumnSortDirectionAt(5) = DesktopListBox.SortDirections.None
		    ListBox_PromptWords.AllowRowReordering=False
		    
		  End If
		  
		  Try
		    
		    Var RS As RowSet
		    
		    If Filter.Trim.Length=0 Then
		      
		      If PopupMenu_Category.SelectedRowIndex=0 Then
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative,keyword.weight " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "ORDER BY keyword.words")
		        
		      Else
		        
		        RS = App.SDP_Database.SelectSQL("SELECT keyword.id,keyword.words,category.label,keyword.negative,keyword.weight " + _
		        "FROM category " + _
		        "INNER Join keyword ON category.id = keyword.id_category " + _
		        "WHERE id_category=? " + _
		        "ORDER BY keyword.words", PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		        
		      End If
		      
		    Else
		      
		      Filter = "%" + Filter.ReplaceAll(" ","%") + "%"
		      
		      If PopupMenu_Category.SelectedRowIndex=0 Then
		        
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
		        "ORDER BY keyword.words", Filter, PopupMenu_Category.RowTagAt(PopupMenu_Category.SelectedRowIndex).IntegerValue)
		        
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

	#tag Method, Flags = &h0
		Sub Show_Prompt()
		  Var s(1) As String = CurrentPreset.Prompt_Generate
		  TextArea_PromptPositive.Text = s(0)
		  TextArea_PromptNegative.Text = s(1)
		  
		  If TextArea_PromptPositive.Text.Length=0 Then
		    TextArea_PromptPositive.Text = "In the Edit Menu, you will find additional functions like the Import of Keywords from a Prompt in the System Clipboard."
		  End If
		  // If TextArea_PromptNegative.Text.Length=0 Then
		  // 
		  // End If
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events SearchField_Filter
	#tag Event
		Sub Pressed()
		  Show_Keywords_All(Me.Text)
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChanged()
		  Show_Keywords_All(Me.Text)
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
#tag Events BevelButton_Delete_Keyword
	#tag Event
		Sub Pressed()
		  Delete_Keyword
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PopupMenu_Category
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Show_Keywords_All(SearchField_Filter.Text)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.Load_Categorys
		  Me.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
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
		    
		    Me.SelectedRowIndex=row
		    
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
		  base.AddMenu(New DesktopMenuItem(DesktopMenuItem.TextSeparator))
		  base.AddMenu(New DesktopMenuItem("Delete Keyword"))
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  Select Case selectedItem.Text
		    
		  Case "Deselect all"
		    
		    KeywordList_DeselectAll
		    
		  Case "Delete Keyword"
		    
		    Delete_Keyword
		    
		  End Select
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
	#tag Event
		Sub MouseEnter()
		  Timer.CallLater(30000, AddressOf Remove_Tooltip_KeywordList)
		End Sub
	#tag EndEvent
	#tag Event
		Sub KeyUp(key As String)
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
#tag Events BevelButton_Copy_PromptPositive
	#tag Event
		Sub Pressed()
		  Var c As New Clipboard
		  c.Text = TextArea_PromptPositive.Text.Trim
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
#tag Events BevelButton_Copy_PromptNegative
	#tag Event
		Sub Pressed()
		  Var c As New Clipboard
		  c.Text = TextArea_PromptNegative.Text.Trim
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
