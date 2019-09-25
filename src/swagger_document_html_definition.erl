-module(swagger_document_html_definition).

-export([encode/1]).

-export_type([swagger_document_html_definition/0]).

-type swagger_document_html_definition() ::
    #{ 'displayAnchorPrefix' => binary(),
       'displayAnchors' => list(),
       'displayOrder' => binary(),
       'displayPageNumber' => binary(),
       'documentGuid' => binary(),
       'documentId' => binary(),
       'headerLabel' => binary(),
       'maxScreenWidth' => binary(),
       'removeEmptyTags' => binary(),
       'showMobileOptimizedToggle' => binary(),
       'source' => binary()
     }.

encode(#{ 'displayAnchorPrefix' := DisplayAnchorPrefix,
          'displayAnchors' := DisplayAnchors,
          'displayOrder' := DisplayOrder,
          'displayPageNumber' := DisplayPageNumber,
          'documentGuid' := DocumentGuid,
          'documentId' := DocumentId,
          'headerLabel' := HeaderLabel,
          'maxScreenWidth' := MaxScreenWidth,
          'removeEmptyTags' := RemoveEmptyTags,
          'showMobileOptimizedToggle' := ShowMobileOptimizedToggle,
          'source' := Source
        }) ->
    #{ 'displayAnchorPrefix' => DisplayAnchorPrefix,
       'displayAnchors' => DisplayAnchors,
       'displayOrder' => DisplayOrder,
       'displayPageNumber' => DisplayPageNumber,
       'documentGuid' => DocumentGuid,
       'documentId' => DocumentId,
       'headerLabel' => HeaderLabel,
       'maxScreenWidth' => MaxScreenWidth,
       'removeEmptyTags' => RemoveEmptyTags,
       'showMobileOptimizedToggle' => ShowMobileOptimizedToggle,
       'source' => Source
     }.
