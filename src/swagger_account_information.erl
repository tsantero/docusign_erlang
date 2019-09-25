-module(swagger_account_information).

-export([encode/1]).

-export_type([swagger_account_information/0]).

-type swagger_account_information() ::
    #{ 'accountIdGuid' => binary(),
       'accountName' => binary(),
       'accountSettings' => swagger_account_settings_information:swagger_account_settings_information(),
       'allowTransactionRooms' => binary(),
       'billingPeriodDaysRemaining' => binary(),
       'billingPeriodEndDate' => binary(),
       'billingPeriodEnvelopesAllowed' => binary(),
       'billingPeriodEnvelopesSent' => binary(),
       'billingPeriodStartDate' => binary(),
       'billingProfile' => binary(),
       'canUpgrade' => binary(),
       'connectPermission' => binary(),
       'createdDate' => binary(),
       'currencyCode' => binary(),
       'currentPlanId' => binary(),
       'distributorCode' => binary(),
       'docuSignLandingUrl' => binary(),
       'envelopeSendingBlocked' => binary(),
       'envelopeUnitPrice' => binary(),
       'externalAccountId' => binary(),
       'forgottenPasswordQuestionsCount' => binary(),
       'isDowngrade' => binary(),
       'paymentMethod' => binary(),
       'planClassification' => binary(),
       'planEndDate' => binary(),
       'planName' => binary(),
       'planStartDate' => binary(),
       'recipientDomains' => list(),
       'seatsAllowed' => binary(),
       'seatsInUse' => binary(),
       'status21CFRPart11' => binary(),
       'suspensionDate' => binary(),
       'suspensionStatus' => binary()
     }.

encode(#{ 'accountIdGuid' := AccountIdGuid,
          'accountName' := AccountName,
          'accountSettings' := AccountSettings,
          'allowTransactionRooms' := AllowTransactionRooms,
          'billingPeriodDaysRemaining' := BillingPeriodDaysRemaining,
          'billingPeriodEndDate' := BillingPeriodEndDate,
          'billingPeriodEnvelopesAllowed' := BillingPeriodEnvelopesAllowed,
          'billingPeriodEnvelopesSent' := BillingPeriodEnvelopesSent,
          'billingPeriodStartDate' := BillingPeriodStartDate,
          'billingProfile' := BillingProfile,
          'canUpgrade' := CanUpgrade,
          'connectPermission' := ConnectPermission,
          'createdDate' := CreatedDate,
          'currencyCode' := CurrencyCode,
          'currentPlanId' := CurrentPlanId,
          'distributorCode' := DistributorCode,
          'docuSignLandingUrl' := DocuSignLandingUrl,
          'envelopeSendingBlocked' := EnvelopeSendingBlocked,
          'envelopeUnitPrice' := EnvelopeUnitPrice,
          'externalAccountId' := ExternalAccountId,
          'forgottenPasswordQuestionsCount' := ForgottenPasswordQuestionsCount,
          'isDowngrade' := IsDowngrade,
          'paymentMethod' := PaymentMethod,
          'planClassification' := PlanClassification,
          'planEndDate' := PlanEndDate,
          'planName' := PlanName,
          'planStartDate' := PlanStartDate,
          'recipientDomains' := RecipientDomains,
          'seatsAllowed' := SeatsAllowed,
          'seatsInUse' := SeatsInUse,
          'status21CFRPart11' := Status21CFRPart11,
          'suspensionDate' := SuspensionDate,
          'suspensionStatus' := SuspensionStatus
        }) ->
    #{ 'accountIdGuid' => AccountIdGuid,
       'accountName' => AccountName,
       'accountSettings' => AccountSettings,
       'allowTransactionRooms' => AllowTransactionRooms,
       'billingPeriodDaysRemaining' => BillingPeriodDaysRemaining,
       'billingPeriodEndDate' => BillingPeriodEndDate,
       'billingPeriodEnvelopesAllowed' => BillingPeriodEnvelopesAllowed,
       'billingPeriodEnvelopesSent' => BillingPeriodEnvelopesSent,
       'billingPeriodStartDate' => BillingPeriodStartDate,
       'billingProfile' => BillingProfile,
       'canUpgrade' => CanUpgrade,
       'connectPermission' => ConnectPermission,
       'createdDate' => CreatedDate,
       'currencyCode' => CurrencyCode,
       'currentPlanId' => CurrentPlanId,
       'distributorCode' => DistributorCode,
       'docuSignLandingUrl' => DocuSignLandingUrl,
       'envelopeSendingBlocked' => EnvelopeSendingBlocked,
       'envelopeUnitPrice' => EnvelopeUnitPrice,
       'externalAccountId' => ExternalAccountId,
       'forgottenPasswordQuestionsCount' => ForgottenPasswordQuestionsCount,
       'isDowngrade' => IsDowngrade,
       'paymentMethod' => PaymentMethod,
       'planClassification' => PlanClassification,
       'planEndDate' => PlanEndDate,
       'planName' => PlanName,
       'planStartDate' => PlanStartDate,
       'recipientDomains' => RecipientDomains,
       'seatsAllowed' => SeatsAllowed,
       'seatsInUse' => SeatsInUse,
       'status21CFRPart11' => Status21CFRPart11,
       'suspensionDate' => SuspensionDate,
       'suspensionStatus' => SuspensionStatus
     }.
