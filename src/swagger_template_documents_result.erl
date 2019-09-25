-module(swagger_template_documents_result).

-export([encode/1]).

-export_type([swagger_template_documents_result/0]).

-type swagger_template_documents_result() ::
    #{ 'templateDocuments' => list(),
       'templateId' => binary()
     }.

encode(#{ 'templateDocuments' := TemplateDocuments,
          'templateId' := TemplateId
        }) ->
    #{ 'templateDocuments' => TemplateDocuments,
       'templateId' => TemplateId
     }.
