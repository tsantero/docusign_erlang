-module(swagger_document_html_collapsible_display_settings).

-export([encode/1]).

-export_type([swagger_document_html_collapsible_display_settings/0]).

-type swagger_document_html_collapsible_display_settings() ::
    #{ 'arrowClosed' => binary(),
       'arrowColor' => binary(),
       'arrowLocation' => binary(),
       'arrowOpen' => binary(),
       'arrowSize' => binary(),
       'arrowStyle' => binary(),
       'containerStyle' => binary(),
       'labelStyle' => binary(),
       'onlyArrowIsClickable' => boolean(),
       'outerLabelAndArrowStyle' => binary()
     }.

encode(#{ 'arrowClosed' := ArrowClosed,
          'arrowColor' := ArrowColor,
          'arrowLocation' := ArrowLocation,
          'arrowOpen' := ArrowOpen,
          'arrowSize' := ArrowSize,
          'arrowStyle' := ArrowStyle,
          'containerStyle' := ContainerStyle,
          'labelStyle' := LabelStyle,
          'onlyArrowIsClickable' := OnlyArrowIsClickable,
          'outerLabelAndArrowStyle' := OuterLabelAndArrowStyle
        }) ->
    #{ 'arrowClosed' => ArrowClosed,
       'arrowColor' => ArrowColor,
       'arrowLocation' => ArrowLocation,
       'arrowOpen' => ArrowOpen,
       'arrowSize' => ArrowSize,
       'arrowStyle' => ArrowStyle,
       'containerStyle' => ContainerStyle,
       'labelStyle' => LabelStyle,
       'onlyArrowIsClickable' => OnlyArrowIsClickable,
       'outerLabelAndArrowStyle' => OuterLabelAndArrowStyle
     }.
