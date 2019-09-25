-module(swagger_signer_email_notifications).

-export([encode/1]).

-export_type([swagger_signer_email_notifications/0]).

-type swagger_signer_email_notifications() ::
    #{ 'agentNotification' => binary(),
       'carbonCopyNotification' => binary(),
       'certifiedDeliveryNotification' => binary(),
       'commentsOnlyPrivateAndMention' => binary(),
       'commentsReceiveAll' => binary(),
       'documentMarkupActivation' => binary(),
       'envelopeActivation' => binary(),
       'envelopeComplete' => binary(),
       'envelopeCorrected' => binary(),
       'envelopeDeclined' => binary(),
       'envelopeVoided' => binary(),
       'faxReceived' => binary(),
       'offlineSigningFailed' => binary(),
       'purgeDocuments' => binary(),
       'reassignedSigner' => binary(),
       'whenSigningGroupMember' => binary()
     }.

encode(#{ 'agentNotification' := AgentNotification,
          'carbonCopyNotification' := CarbonCopyNotification,
          'certifiedDeliveryNotification' := CertifiedDeliveryNotification,
          'commentsOnlyPrivateAndMention' := CommentsOnlyPrivateAndMention,
          'commentsReceiveAll' := CommentsReceiveAll,
          'documentMarkupActivation' := DocumentMarkupActivation,
          'envelopeActivation' := EnvelopeActivation,
          'envelopeComplete' := EnvelopeComplete,
          'envelopeCorrected' := EnvelopeCorrected,
          'envelopeDeclined' := EnvelopeDeclined,
          'envelopeVoided' := EnvelopeVoided,
          'faxReceived' := FaxReceived,
          'offlineSigningFailed' := OfflineSigningFailed,
          'purgeDocuments' := PurgeDocuments,
          'reassignedSigner' := ReassignedSigner,
          'whenSigningGroupMember' := WhenSigningGroupMember
        }) ->
    #{ 'agentNotification' => AgentNotification,
       'carbonCopyNotification' => CarbonCopyNotification,
       'certifiedDeliveryNotification' => CertifiedDeliveryNotification,
       'commentsOnlyPrivateAndMention' => CommentsOnlyPrivateAndMention,
       'commentsReceiveAll' => CommentsReceiveAll,
       'documentMarkupActivation' => DocumentMarkupActivation,
       'envelopeActivation' => EnvelopeActivation,
       'envelopeComplete' => EnvelopeComplete,
       'envelopeCorrected' => EnvelopeCorrected,
       'envelopeDeclined' => EnvelopeDeclined,
       'envelopeVoided' => EnvelopeVoided,
       'faxReceived' => FaxReceived,
       'offlineSigningFailed' => OfflineSigningFailed,
       'purgeDocuments' => PurgeDocuments,
       'reassignedSigner' => ReassignedSigner,
       'whenSigningGroupMember' => WhenSigningGroupMember
     }.
