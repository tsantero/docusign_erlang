-module(swagger_mobile_notifier_configuration).

-export([encode/1]).

-export_type([swagger_mobile_notifier_configuration/0]).

-type swagger_mobile_notifier_configuration() ::
    #{ 'deviceId' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'platform' => binary()
     }.

encode(#{ 'deviceId' := DeviceId,
          'errorDetails' := ErrorDetails,
          'platform' := Platform
        }) ->
    #{ 'deviceId' => DeviceId,
       'errorDetails' => ErrorDetails,
       'platform' => Platform
     }.
