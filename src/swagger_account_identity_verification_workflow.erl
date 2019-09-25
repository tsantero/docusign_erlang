-module(swagger_account_identity_verification_workflow).

-export([encode/1]).

-export_type([swagger_account_identity_verification_workflow/0]).

-type swagger_account_identity_verification_workflow() ::
    #{ 'defaultDescription' => binary(),
       'defaultName' => binary(),
       'signatureProvider' => swagger_account_signature_provider:swagger_account_signature_provider(),
       'workflowId' => binary(),
       'workflowResourceKey' => binary()
     }.

encode(#{ 'defaultDescription' := DefaultDescription,
          'defaultName' := DefaultName,
          'signatureProvider' := SignatureProvider,
          'workflowId' := WorkflowId,
          'workflowResourceKey' := WorkflowResourceKey
        }) ->
    #{ 'defaultDescription' => DefaultDescription,
       'defaultName' => DefaultName,
       'signatureProvider' => SignatureProvider,
       'workflowId' => WorkflowId,
       'workflowResourceKey' => WorkflowResourceKey
     }.
