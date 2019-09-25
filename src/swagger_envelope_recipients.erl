-module(swagger_envelope_recipients).

-export([encode/1]).

-export_type([swagger_envelope_recipients/0]).

-type swagger_envelope_recipients() ::
    #{ 'agents' => list(),
       'carbonCopies' => list(),
       'certifiedDeliveries' => list(),
       'currentRoutingOrder' => binary(),
       'editors' => list(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'inPersonSigners' => list(),
       'intermediaries' => list(),
       'recipientCount' => binary(),
       'seals' => list(),
       'signers' => list(),
       'witnesses' => list()
     }.

encode(#{ 'agents' := Agents,
          'carbonCopies' := CarbonCopies,
          'certifiedDeliveries' := CertifiedDeliveries,
          'currentRoutingOrder' := CurrentRoutingOrder,
          'editors' := Editors,
          'errorDetails' := ErrorDetails,
          'inPersonSigners' := InPersonSigners,
          'intermediaries' := Intermediaries,
          'recipientCount' := RecipientCount,
          'seals' := Seals,
          'signers' := Signers,
          'witnesses' := Witnesses
        }) ->
    #{ 'agents' => Agents,
       'carbonCopies' => CarbonCopies,
       'certifiedDeliveries' => CertifiedDeliveries,
       'currentRoutingOrder' => CurrentRoutingOrder,
       'editors' => Editors,
       'errorDetails' => ErrorDetails,
       'inPersonSigners' => InPersonSigners,
       'intermediaries' => Intermediaries,
       'recipientCount' => RecipientCount,
       'seals' => Seals,
       'signers' => Signers,
       'witnesses' => Witnesses
     }.
