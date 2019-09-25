-module(swagger_composite_template).

-export([encode/1]).

-export_type([swagger_composite_template/0]).

-type swagger_composite_template() ::
    #{ 'compositeTemplateId' => binary(),
       'document' => swagger_document:swagger_document(),
       'inlineTemplates' => list(),
       'pdfMetaDataTemplateSequence' => binary(),
       'serverTemplates' => list()
     }.

encode(#{ 'compositeTemplateId' := CompositeTemplateId,
          'document' := Document,
          'inlineTemplates' := InlineTemplates,
          'pdfMetaDataTemplateSequence' := PdfMetaDataTemplateSequence,
          'serverTemplates' := ServerTemplates
        }) ->
    #{ 'compositeTemplateId' => CompositeTemplateId,
       'document' => Document,
       'inlineTemplates' => InlineTemplates,
       'pdfMetaDataTemplateSequence' => PdfMetaDataTemplateSequence,
       'serverTemplates' => ServerTemplates
     }.
