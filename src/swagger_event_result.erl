-module(swagger_event_result).

-export([encode/1]).

-export_type([swagger_event_result/0]).

-type swagger_event_result() ::
    #{ 'eventTimestamp' => binary(),
       'failureDescription' => binary(),
       'status' => binary(),
       'vendorFailureStatusCode' => binary()
     }.

encode(#{ 'eventTimestamp' := EventTimestamp,
          'failureDescription' := FailureDescription,
          'status' := Status,
          'vendorFailureStatusCode' := VendorFailureStatusCode
        }) ->
    #{ 'eventTimestamp' => EventTimestamp,
       'failureDescription' => FailureDescription,
       'status' => Status,
       'vendorFailureStatusCode' => VendorFailureStatusCode
     }.
