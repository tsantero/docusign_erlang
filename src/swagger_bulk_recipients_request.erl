-module(swagger_bulk_recipients_request).

-export([encode/1]).

-export_type([swagger_bulk_recipients_request/0]).

-type swagger_bulk_recipients_request() ::
    #{ 'bulkRecipients' => list()
     }.

encode(#{ 'bulkRecipients' := BulkRecipients
        }) ->
    #{ 'bulkRecipients' => BulkRecipients
     }.
