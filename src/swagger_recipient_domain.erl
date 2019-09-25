-module(swagger_recipient_domain).

-export([encode/1]).

-export_type([swagger_recipient_domain/0]).

-type swagger_recipient_domain() ::
    #{ 'active' => binary(),
       'domainCode' => binary(),
       'domainName' => binary(),
       'recipientDomainId' => binary()
     }.

encode(#{ 'active' := Active,
          'domainCode' := DomainCode,
          'domainName' := DomainName,
          'recipientDomainId' := RecipientDomainId
        }) ->
    #{ 'active' => Active,
       'domainCode' => DomainCode,
       'domainName' => DomainName,
       'recipientDomainId' => RecipientDomainId
     }.
