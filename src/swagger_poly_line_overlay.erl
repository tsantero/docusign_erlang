-module(swagger_poly_line_overlay).

-export([encode/1]).

-export_type([swagger_poly_line_overlay/0]).

-type swagger_poly_line_overlay() ::
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
       'conditionalParentLabel' => binary(),
       'conditionalParentLabelMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'conditionalParentValue' => binary(),
       'conditionalParentValueMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'customTabId' => binary(),
       'customTabIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'documentId' => binary(),
       'documentIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'formOrder' => binary(),
       'formOrderMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'formPageLabel' => binary(),
       'formPageLabelMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'formPageNumber' => binary(),
       'formPageNumberMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'graphicsContext' => swagger_graphics_context:swagger_graphics_context(),
       'height' => binary(),
       'heightMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'locked' => binary(),
       'lockedMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'mergeField' => swagger_merge_field:swagger_merge_field(),
       'overlayType' => binary(),
       'overlayTypeMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'pageNumber' => binary(),
       'pageNumberMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'polyLines' => list(),
       'recipientId' => binary(),
       'recipientIdGuid' => binary(),
       'recipientIdGuidMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'recipientIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'shared' => binary(),
       'sharedMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'status' => binary(),
       'statusMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tabGroupLabels' => list(),
       'tabGroupLabelsMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tabId' => binary(),
       'tabIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'tabLabel' => binary(),
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
          'conditionalParentLabel' := ConditionalParentLabel,
          'conditionalParentLabelMetadata' := ConditionalParentLabelMetadata,
          'conditionalParentValue' := ConditionalParentValue,
          'conditionalParentValueMetadata' := ConditionalParentValueMetadata,
          'customTabId' := CustomTabId,
          'customTabIdMetadata' := CustomTabIdMetadata,
          'documentId' := DocumentId,
          'documentIdMetadata' := DocumentIdMetadata,
          'errorDetails' := ErrorDetails,
          'formOrder' := FormOrder,
          'formOrderMetadata' := FormOrderMetadata,
          'formPageLabel' := FormPageLabel,
          'formPageLabelMetadata' := FormPageLabelMetadata,
          'formPageNumber' := FormPageNumber,
          'formPageNumberMetadata' := FormPageNumberMetadata,
          'graphicsContext' := GraphicsContext,
          'height' := Height,
          'heightMetadata' := HeightMetadata,
          'locked' := Locked,
          'lockedMetadata' := LockedMetadata,
          'mergeField' := MergeField,
          'overlayType' := OverlayType,
          'overlayTypeMetadata' := OverlayTypeMetadata,
          'pageNumber' := PageNumber,
          'pageNumberMetadata' := PageNumberMetadata,
          'polyLines' := PolyLines,
          'recipientId' := RecipientId,
          'recipientIdGuid' := RecipientIdGuid,
          'recipientIdGuidMetadata' := RecipientIdGuidMetadata,
          'recipientIdMetadata' := RecipientIdMetadata,
          'shared' := Shared,
          'sharedMetadata' := SharedMetadata,
          'status' := Status,
          'statusMetadata' := StatusMetadata,
          'tabGroupLabels' := TabGroupLabels,
          'tabGroupLabelsMetadata' := TabGroupLabelsMetadata,
          'tabId' := TabId,
          'tabIdMetadata' := TabIdMetadata,
          'tabLabel' := TabLabel,
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
       'conditionalParentLabel' => ConditionalParentLabel,
       'conditionalParentLabelMetadata' => ConditionalParentLabelMetadata,
       'conditionalParentValue' => ConditionalParentValue,
       'conditionalParentValueMetadata' => ConditionalParentValueMetadata,
       'customTabId' => CustomTabId,
       'customTabIdMetadata' => CustomTabIdMetadata,
       'documentId' => DocumentId,
       'documentIdMetadata' => DocumentIdMetadata,
       'errorDetails' => ErrorDetails,
       'formOrder' => FormOrder,
       'formOrderMetadata' => FormOrderMetadata,
       'formPageLabel' => FormPageLabel,
       'formPageLabelMetadata' => FormPageLabelMetadata,
       'formPageNumber' => FormPageNumber,
       'formPageNumberMetadata' => FormPageNumberMetadata,
       'graphicsContext' => GraphicsContext,
       'height' => Height,
       'heightMetadata' => HeightMetadata,
       'locked' => Locked,
       'lockedMetadata' => LockedMetadata,
       'mergeField' => MergeField,
       'overlayType' => OverlayType,
       'overlayTypeMetadata' => OverlayTypeMetadata,
       'pageNumber' => PageNumber,
       'pageNumberMetadata' => PageNumberMetadata,
       'polyLines' => PolyLines,
       'recipientId' => RecipientId,
       'recipientIdGuid' => RecipientIdGuid,
       'recipientIdGuidMetadata' => RecipientIdGuidMetadata,
       'recipientIdMetadata' => RecipientIdMetadata,
       'shared' => Shared,
       'sharedMetadata' => SharedMetadata,
       'status' => Status,
       'statusMetadata' => StatusMetadata,
       'tabGroupLabels' => TabGroupLabels,
       'tabGroupLabelsMetadata' => TabGroupLabelsMetadata,
       'tabId' => TabId,
       'tabIdMetadata' => TabIdMetadata,
       'tabLabel' => TabLabel,
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
       'width' => Width,
       'widthMetadata' => WidthMetadata,
       'xPosition' => XPosition,
       'xPositionMetadata' => XPositionMetadata,
       'yPosition' => YPosition,
       'yPositionMetadata' => YPositionMetadata
     }.
