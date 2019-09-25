-module(swagger_notary_journal_credible_witness).

-export([encode/1]).

-export_type([swagger_notary_journal_credible_witness/0]).

-type swagger_notary_journal_credible_witness() ::
    #{ 'address' => binary(),
       'name' => binary(),
       'signatureImage' => binary()
     }.

encode(#{ 'address' := Address,
          'name' := Name,
          'signatureImage' := SignatureImage
        }) ->
    #{ 'address' => Address,
       'name' => Name,
       'signatureImage' => SignatureImage
     }.
