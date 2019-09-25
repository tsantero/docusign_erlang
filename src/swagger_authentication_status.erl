-module(swagger_authentication_status).

-export([encode/1]).

-export_type([swagger_authentication_status/0]).

-type swagger_authentication_status() ::
    #{ 'accessCodeResult' => swagger_event_result:swagger_event_result(),
       'ageVerifyResult' => swagger_event_result:swagger_event_result(),
       'anySocialIDResult' => swagger_event_result:swagger_event_result(),
       'facebookResult' => swagger_event_result:swagger_event_result(),
       'googleResult' => swagger_event_result:swagger_event_result(),
       'idLookupResult' => swagger_event_result:swagger_event_result(),
       'idQuestionsResult' => swagger_event_result:swagger_event_result(),
       'linkedinResult' => swagger_event_result:swagger_event_result(),
       'liveIDResult' => swagger_event_result:swagger_event_result(),
       'ofacResult' => swagger_event_result:swagger_event_result(),
       'openIDResult' => swagger_event_result:swagger_event_result(),
       'phoneAuthResult' => swagger_event_result:swagger_event_result(),
       'salesforceResult' => swagger_event_result:swagger_event_result(),
       'signatureProviderResult' => swagger_event_result:swagger_event_result(),
       'smsAuthResult' => swagger_event_result:swagger_event_result(),
       'sTANPinResult' => swagger_event_result:swagger_event_result(),
       'twitterResult' => swagger_event_result:swagger_event_result(),
       'yahooResult' => swagger_event_result:swagger_event_result()
     }.

encode(#{ 'accessCodeResult' := AccessCodeResult,
          'ageVerifyResult' := AgeVerifyResult,
          'anySocialIDResult' := AnySocialIDResult,
          'facebookResult' := FacebookResult,
          'googleResult' := GoogleResult,
          'idLookupResult' := IdLookupResult,
          'idQuestionsResult' := IdQuestionsResult,
          'linkedinResult' := LinkedinResult,
          'liveIDResult' := LiveIDResult,
          'ofacResult' := OfacResult,
          'openIDResult' := OpenIDResult,
          'phoneAuthResult' := PhoneAuthResult,
          'salesforceResult' := SalesforceResult,
          'signatureProviderResult' := SignatureProviderResult,
          'smsAuthResult' := SmsAuthResult,
          'sTANPinResult' := STANPinResult,
          'twitterResult' := TwitterResult,
          'yahooResult' := YahooResult
        }) ->
    #{ 'accessCodeResult' => AccessCodeResult,
       'ageVerifyResult' => AgeVerifyResult,
       'anySocialIDResult' => AnySocialIDResult,
       'facebookResult' => FacebookResult,
       'googleResult' => GoogleResult,
       'idLookupResult' => IdLookupResult,
       'idQuestionsResult' => IdQuestionsResult,
       'linkedinResult' => LinkedinResult,
       'liveIDResult' => LiveIDResult,
       'ofacResult' => OfacResult,
       'openIDResult' => OpenIDResult,
       'phoneAuthResult' => PhoneAuthResult,
       'salesforceResult' => SalesforceResult,
       'signatureProviderResult' => SignatureProviderResult,
       'smsAuthResult' => SmsAuthResult,
       'sTANPinResult' => STANPinResult,
       'twitterResult' => TwitterResult,
       'yahooResult' => YahooResult
     }.
