-module(swagger_template_documents).

-export([encode/1]).

-export_type([swagger_template_documents/0]).

-type swagger_template_documents() ::
    #{ 'templateDocuments' => list(),
       'templateId' => binary()
     }.

encode(#{ 'templateDocuments' := TemplateDocuments,
          'templateId' := TemplateId
        }) ->
    #{ 'templateDocuments' => TemplateDocuments,
       'templateId' => TemplateId
     }.
