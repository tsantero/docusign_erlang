-module(swagger_brand_email_content).

-export([encode/1]).

-export_type([swagger_brand_email_content/0]).

-type swagger_brand_email_content() ::
    #{ 'content' => binary(),
       'emailContentType' => binary(),
       'emailToLink' => binary(),
       'linkText' => binary()
     }.

encode(#{ 'content' := Content,
          'emailContentType' := EmailContentType,
          'emailToLink' := EmailToLink,
          'linkText' := LinkText
        }) ->
    #{ 'content' => Content,
       'emailContentType' => EmailContentType,
       'emailToLink' => EmailToLink,
       'linkText' => LinkText
     }.
