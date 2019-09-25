-module(swagger_smart_section_display_settings).

-export([encode/1]).

-export_type([swagger_smart_section_display_settings/0]).

-type swagger_smart_section_display_settings() ::
    #{ 'cellStyle' => binary(),
       'collapsibleSettings' => swagger_smart_section_collapsible_display_settings:swagger_smart_section_collapsible_display_settings(),
       'display' => binary(),
       'displayLabel' => binary(),
       'displayOrder' => integer(),
       'displayPageNumber' => integer(),
       'hideLabelWhenOpened' => boolean(),
       'inlineOuterStyle' => binary(),
       'labelWhenOpened' => binary(),
       'scrollToTopWhenOpened' => boolean(),
       'tableStyle' => binary()
     }.

encode(#{ 'cellStyle' := CellStyle,
          'collapsibleSettings' := CollapsibleSettings,
          'display' := Display,
          'displayLabel' := DisplayLabel,
          'displayOrder' := DisplayOrder,
          'displayPageNumber' := DisplayPageNumber,
          'hideLabelWhenOpened' := HideLabelWhenOpened,
          'inlineOuterStyle' := InlineOuterStyle,
          'labelWhenOpened' := LabelWhenOpened,
          'scrollToTopWhenOpened' := ScrollToTopWhenOpened,
          'tableStyle' := TableStyle
        }) ->
    #{ 'cellStyle' => CellStyle,
       'collapsibleSettings' => CollapsibleSettings,
       'display' => Display,
       'displayLabel' => DisplayLabel,
       'displayOrder' => DisplayOrder,
       'displayPageNumber' => DisplayPageNumber,
       'hideLabelWhenOpened' => HideLabelWhenOpened,
       'inlineOuterStyle' => InlineOuterStyle,
       'labelWhenOpened' => LabelWhenOpened,
       'scrollToTopWhenOpened' => ScrollToTopWhenOpened,
       'tableStyle' => TableStyle
     }.
