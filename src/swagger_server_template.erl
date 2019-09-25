-module(swagger_server_template).

-export([encode/1]).

-export_type([swagger_server_template/0]).

-type swagger_server_template() ::
    #{ 'sequence' => binary(),
       'templateId' => binary()
     }.

encode(#{ 'sequence' := Sequence,
          'templateId' := TemplateId
        }) ->
    #{ 'sequence' => Sequence,
       'templateId' => TemplateId
     }.
