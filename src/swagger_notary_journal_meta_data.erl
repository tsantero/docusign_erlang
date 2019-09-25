-module(swagger_notary_journal_meta_data).

-export([encode/1]).

-export_type([swagger_notary_journal_meta_data/0]).

-type swagger_notary_journal_meta_data() ::
    #{ 'comment' => binary(),
       'credibleWitnesses' => list(),
       'signatureImage' => binary(),
       'signerIdType' => binary()
     }.

encode(#{ 'comment' := Comment,
          'credibleWitnesses' := CredibleWitnesses,
          'signatureImage' := SignatureImage,
          'signerIdType' := SignerIdType
        }) ->
    #{ 'comment' => Comment,
       'credibleWitnesses' => CredibleWitnesses,
       'signatureImage' => SignatureImage,
       'signerIdType' => SignerIdType
     }.
