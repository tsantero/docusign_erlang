-module(swagger_notary_journal).

-export([encode/1]).

-export_type([swagger_notary_journal/0]).

-type swagger_notary_journal() ::
    #{ 'createdDate' => binary(),
       'documentName' => binary(),
       'jurisdiction' => swagger_jurisdiction:swagger_jurisdiction(),
       'notaryJournalId' => binary(),
       'notaryJournalMetaData' => swagger_notary_journal_meta_data:swagger_notary_journal_meta_data(),
       'signerName' => binary()
     }.

encode(#{ 'createdDate' := CreatedDate,
          'documentName' := DocumentName,
          'jurisdiction' := Jurisdiction,
          'notaryJournalId' := NotaryJournalId,
          'notaryJournalMetaData' := NotaryJournalMetaData,
          'signerName' := SignerName
        }) ->
    #{ 'createdDate' => CreatedDate,
       'documentName' => DocumentName,
       'jurisdiction' => Jurisdiction,
       'notaryJournalId' => NotaryJournalId,
       'notaryJournalMetaData' => NotaryJournalMetaData,
       'signerName' => SignerName
     }.
