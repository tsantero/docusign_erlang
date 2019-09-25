-module(swagger_recipient_identity_verification).

-export([encode/1]).

-export_type([swagger_recipient_identity_verification/0]).

-type swagger_recipient_identity_verification() ::
    #{ 'workflowId' => binary()
     }.

encode(#{ 'workflowId' := WorkflowId
        }) ->
    #{ 'workflowId' => WorkflowId
     }.
