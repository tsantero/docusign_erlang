-module(swagger_cloud_storage_provider).

-export([encode/1]).

-export_type([swagger_cloud_storage_provider/0]).

-type swagger_cloud_storage_provider() ::
    #{ 'authenticationUrl' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'redirectUrl' => binary(),
       'service' => binary(),
       'serviceId' => binary()
     }.

encode(#{ 'authenticationUrl' := AuthenticationUrl,
          'errorDetails' := ErrorDetails,
          'redirectUrl' := RedirectUrl,
          'service' := Service,
          'serviceId' := ServiceId
        }) ->
    #{ 'authenticationUrl' => AuthenticationUrl,
       'errorDetails' => ErrorDetails,
       'redirectUrl' => RedirectUrl,
       'service' => Service,
       'serviceId' => ServiceId
     }.
