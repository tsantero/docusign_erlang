-module(swagger_document_security_store).

-export([encode/1]).

-export_type([swagger_document_security_store/0]).

-type swagger_document_security_store() ::
    #{ 'certificates' => list(),
       'crls' => list(),
       'ocsps' => list()
     }.

encode(#{ 'certificates' := Certificates,
          'crls' := Crls,
          'ocsps' := Ocsps
        }) ->
    #{ 'certificates' => Certificates,
       'crls' => Crls,
       'ocsps' => Ocsps
     }.
