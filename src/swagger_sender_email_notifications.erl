-module(swagger_sender_email_notifications).

-export([encode/1]).

-export_type([swagger_sender_email_notifications/0]).

-type swagger_sender_email_notifications() ::
    #{ 'changedSigner' => binary(),
       'commentsOnlyPrivateAndMention' => binary(),
       'commentsReceiveAll' => binary(),
       'deliveryFailed' => binary(),
       'envelopeComplete' => binary(),
       'offlineSigningFailed' => binary(),
       'purgeDocuments' => binary(),
       'recipientViewed' => binary(),
       'senderEnvelopeDeclined' => binary(),
       'withdrawnConsent' => binary()
     }.

encode(#{ 'changedSigner' := ChangedSigner,
          'commentsOnlyPrivateAndMention' := CommentsOnlyPrivateAndMention,
          'commentsReceiveAll' := CommentsReceiveAll,
          'deliveryFailed' := DeliveryFailed,
          'envelopeComplete' := EnvelopeComplete,
          'offlineSigningFailed' := OfflineSigningFailed,
          'purgeDocuments' := PurgeDocuments,
          'recipientViewed' := RecipientViewed,
          'senderEnvelopeDeclined' := SenderEnvelopeDeclined,
          'withdrawnConsent' := WithdrawnConsent
        }) ->
    #{ 'changedSigner' => ChangedSigner,
       'commentsOnlyPrivateAndMention' => CommentsOnlyPrivateAndMention,
       'commentsReceiveAll' => CommentsReceiveAll,
       'deliveryFailed' => DeliveryFailed,
       'envelopeComplete' => EnvelopeComplete,
       'offlineSigningFailed' => OfflineSigningFailed,
       'purgeDocuments' => PurgeDocuments,
       'recipientViewed' => RecipientViewed,
       'senderEnvelopeDeclined' => SenderEnvelopeDeclined,
       'withdrawnConsent' => WithdrawnConsent
     }.
