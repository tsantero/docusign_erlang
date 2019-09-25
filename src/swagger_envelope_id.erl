-module(swagger_envelope_id).

-export([encode/1]).

-export_type([swagger_envelope_id/0]).

-type swagger_envelope_id() ::
    #{ 'anchorCaseSensitive' => binary(),
       'anchorCaseSensitiveMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'anchorHorizontalAlignment' => binary(),
       'anchorHorizontalAlignmentMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'anchorIgnoreIfNotPresent' => binary(),
       'anchorIgnoreIfNotPresentMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'anchorMatchWholeWord' => binary(),
       'anchorMatchWholeWordMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'anchorString' => binary(),
       'anchorStringMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'anchorTabProcessorVersion' => binary(),
       'anchorTabProcessorVersionMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'anchorUnits' => binary(),
       'anchorUnitsMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'anchorXOffset' => binary(),
       'anchorXOffsetMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'anchorYOffset' => binary(),
       'anchorYOffsetMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'bold' => binary(),
       'boldMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'conditionalParentLabel' => binary(),
       'conditionalParentLabelMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'conditionalParentValue' => binary(),
       'conditionalParentValueMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'customTabId' => binary(),
       'customTabIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'documentId' => binary(),
       'documentIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'font' => binary(),
       'fontColor' => binary(),
       'fontColorMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'fontMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'fontSize' => binary(),
       'fontSizeMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'formOrder' => binary(),
       'formOrderMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'formPageLabel' => binary(),
       'formPageLabelMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'formPageNumber' => binary(),
       'formPageNumberMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'height' => binary(),
       'heightMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'italic' => binary(),
       'italicMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'localePolicy' => swagger_locale_policy_tab:swagger_locale_policy_tab(),
       'mergeField' => swagger_merge_field:swagger_merge_field(),
       'name' => binary(),
       'nameMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'pageNumber' => binary(),
       'pageNumberMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'recipientId' => binary(),
       'recipientIdGuid' => binary(),
       'recipientIdGuidMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'recipientIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'status' => binary(),
       'statusMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tabGroupLabels' => list(),
       'tabGroupLabelsMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tabId' => binary(),
       'tabIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tabLabel' => binary(),
       'tabLabelMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tabOrder' => binary(),
       'tabOrderMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tabType' => binary(),
       'tabTypeMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'templateLocked' => binary(),
       'templateLockedMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'templateRequired' => binary(),
       'templateRequiredMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tooltip' => binary(),
       'toolTipMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'underline' => binary(),
       'underlineMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'width' => binary(),
       'widthMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'xPosition' => binary(),
       'xPositionMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'yPosition' => binary(),
       'yPositionMetadata' => swagger_property_metadata:swagger_property_metadata()
     }.

encode(#{ 'anchorCaseSensitive' := AnchorCaseSensitive,
          'anchorCaseSensitiveMetadata' := AnchorCaseSensitiveMetadata,
          'anchorHorizontalAlignment' := AnchorHorizontalAlignment,
          'anchorHorizontalAlignmentMetadata' := AnchorHorizontalAlignmentMetadata,
          'anchorIgnoreIfNotPresent' := AnchorIgnoreIfNotPresent,
          'anchorIgnoreIfNotPresentMetadata' := AnchorIgnoreIfNotPresentMetadata,
          'anchorMatchWholeWord' := AnchorMatchWholeWord,
          'anchorMatchWholeWordMetadata' := AnchorMatchWholeWordMetadata,
          'anchorString' := AnchorString,
          'anchorStringMetadata' := AnchorStringMetadata,
          'anchorTabProcessorVersion' := AnchorTabProcessorVersion,
          'anchorTabProcessorVersionMetadata' := AnchorTabProcessorVersionMetadata,
          'anchorUnits' := AnchorUnits,
          'anchorUnitsMetadata' := AnchorUnitsMetadata,
          'anchorXOffset' := AnchorXOffset,
          'anchorXOffsetMetadata' := AnchorXOffsetMetadata,
          'anchorYOffset' := AnchorYOffset,
          'anchorYOffsetMetadata' := AnchorYOffsetMetadata,
          'bold' := Bold,
          'boldMetadata' := BoldMetadata,
          'conditionalParentLabel' := ConditionalParentLabel,
          'conditionalParentLabelMetadata' := ConditionalParentLabelMetadata,
          'conditionalParentValue' := ConditionalParentValue,
          'conditionalParentValueMetadata' := ConditionalParentValueMetadata,
          'customTabId' := CustomTabId,
          'customTabIdMetadata' := CustomTabIdMetadata,
          'documentId' := DocumentId,
          'documentIdMetadata' := DocumentIdMetadata,
          'errorDetails' := ErrorDetails,
          'font' := Font,
          'fontColor' := FontColor,
          'fontColorMetadata' := FontColorMetadata,
          'fontMetadata' := FontMetadata,
          'fontSize' := FontSize,
          'fontSizeMetadata' := FontSizeMetadata,
          'formOrder' := FormOrder,
          'formOrderMetadata' := FormOrderMetadata,
          'formPageLabel' := FormPageLabel,
          'formPageLabelMetadata' := FormPageLabelMetadata,
          'formPageNumber' := FormPageNumber,
          'formPageNumberMetadata' := FormPageNumberMetadata,
          'height' := Height,
          'heightMetadata' := HeightMetadata,
          'italic' := Italic,
          'italicMetadata' := ItalicMetadata,
          'localePolicy' := LocalePolicy,
          'mergeField' := MergeField,
          'name' := Name,
          'nameMetadata' := NameMetadata,
          'pageNumber' := PageNumber,
          'pageNumberMetadata' := PageNumberMetadata,
          'recipientId' := RecipientId,
          'recipientIdGuid' := RecipientIdGuid,
          'recipientIdGuidMetadata' := RecipientIdGuidMetadata,
          'recipientIdMetadata' := RecipientIdMetadata,
          'status' := Status,
          'statusMetadata' := StatusMetadata,
          'tabGroupLabels' := TabGroupLabels,
          'tabGroupLabelsMetadata' := TabGroupLabelsMetadata,
          'tabId' := TabId,
          'tabIdMetadata' := TabIdMetadata,
          'tabLabel' := TabLabel,
          'tabLabelMetadata' := TabLabelMetadata,
          'tabOrder' := TabOrder,
          'tabOrderMetadata' := TabOrderMetadata,
          'tabType' := TabType,
          'tabTypeMetadata' := TabTypeMetadata,
          'templateLocked' := TemplateLocked,
          'templateLockedMetadata' := TemplateLockedMetadata,
          'templateRequired' := TemplateRequired,
          'templateRequiredMetadata' := TemplateRequiredMetadata,
          'tooltip' := Tooltip,
          'toolTipMetadata' := ToolTipMetadata,
          'underline' := Underline,
          'underlineMetadata' := UnderlineMetadata,
          'width' := Width,
          'widthMetadata' := WidthMetadata,
          'xPosition' := XPosition,
          'xPositionMetadata' := XPositionMetadata,
          'yPosition' := YPosition,
          'yPositionMetadata' := YPositionMetadata
        }) ->
    #{ 'anchorCaseSensitive' => AnchorCaseSensitive,
       'anchorCaseSensitiveMetadata' => AnchorCaseSensitiveMetadata,
       'anchorHorizontalAlignment' => AnchorHorizontalAlignment,
       'anchorHorizontalAlignmentMetadata' => AnchorHorizontalAlignmentMetadata,
       'anchorIgnoreIfNotPresent' => AnchorIgnoreIfNotPresent,
       'anchorIgnoreIfNotPresentMetadata' => AnchorIgnoreIfNotPresentMetadata,
       'anchorMatchWholeWord' => AnchorMatchWholeWord,
       'anchorMatchWholeWordMetadata' => AnchorMatchWholeWordMetadata,
       'anchorString' => AnchorString,
       'anchorStringMetadata' => AnchorStringMetadata,
       'anchorTabProcessorVersion' => AnchorTabProcessorVersion,
       'anchorTabProcessorVersionMetadata' => AnchorTabProcessorVersionMetadata,
       'anchorUnits' => AnchorUnits,
       'anchorUnitsMetadata' => AnchorUnitsMetadata,
       'anchorXOffset' => AnchorXOffset,
       'anchorXOffsetMetadata' => AnchorXOffsetMetadata,
       'anchorYOffset' => AnchorYOffset,
       'anchorYOffsetMetadata' => AnchorYOffsetMetadata,
       'bold' => Bold,
       'boldMetadata' => BoldMetadata,
       'conditionalParentLabel' => ConditionalParentLabel,
       'conditionalParentLabelMetadata' => ConditionalParentLabelMetadata,
       'conditionalParentValue' => ConditionalParentValue,
       'conditionalParentValueMetadata' => ConditionalParentValueMetadata,
       'customTabId' => CustomTabId,
       'customTabIdMetadata' => CustomTabIdMetadata,
       'documentId' => DocumentId,
       'documentIdMetadata' => DocumentIdMetadata,
       'errorDetails' => ErrorDetails,
       'font' => Font,
       'fontColor' => FontColor,
       'fontColorMetadata' => FontColorMetadata,
       'fontMetadata' => FontMetadata,
       'fontSize' => FontSize,
       'fontSizeMetadata' => FontSizeMetadata,
       'formOrder' => FormOrder,
       'formOrderMetadata' => FormOrderMetadata,
       'formPageLabel' => FormPageLabel,
       'formPageLabelMetadata' => FormPageLabelMetadata,
       'formPageNumber' => FormPageNumber,
       'formPageNumberMetadata' => FormPageNumberMetadata,
       'height' => Height,
       'heightMetadata' => HeightMetadata,
       'italic' => Italic,
       'italicMetadata' => ItalicMetadata,
       'localePolicy' => LocalePolicy,
       'mergeField' => MergeField,
       'name' => Name,
       'nameMetadata' => NameMetadata,
       'pageNumber' => PageNumber,
       'pageNumberMetadata' => PageNumberMetadata,
       'recipientId' => RecipientId,
       'recipientIdGuid' => RecipientIdGuid,
       'recipientIdGuidMetadata' => RecipientIdGuidMetadata,
       'recipientIdMetadata' => RecipientIdMetadata,
       'status' => Status,
       'statusMetadata' => StatusMetadata,
       'tabGroupLabels' => TabGroupLabels,
       'tabGroupLabelsMetadata' => TabGroupLabelsMetadata,
       'tabId' => TabId,
       'tabIdMetadata' => TabIdMetadata,
       'tabLabel' => TabLabel,
       'tabLabelMetadata' => TabLabelMetadata,
       'tabOrder' => TabOrder,
       'tabOrderMetadata' => TabOrderMetadata,
       'tabType' => TabType,
       'tabTypeMetadata' => TabTypeMetadata,
       'templateLocked' => TemplateLocked,
       'templateLockedMetadata' => TemplateLockedMetadata,
       'templateRequired' => TemplateRequired,
       'templateRequiredMetadata' => TemplateRequiredMetadata,
       'tooltip' => Tooltip,
       'toolTipMetadata' => ToolTipMetadata,
       'underline' => Underline,
       'underlineMetadata' => UnderlineMetadata,
       'width' => Width,
       'widthMetadata' => WidthMetadata,
       'xPosition' => XPosition,
       'xPositionMetadata' => XPositionMetadata,
       'yPosition' => YPosition,
       'yPositionMetadata' => YPositionMetadata
     }.
