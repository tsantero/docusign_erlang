-module(swagger_new_account_definition).

-export([encode/1]).

-export_type([swagger_new_account_definition/0]).

-type swagger_new_account_definition() ::
    #{ 'accountName' => binary(),
       'accountSettings' => swagger_account_settings_information:swagger_account_settings_information(),
       'addressInformation' => swagger_account_address:swagger_account_address(),
       'creditCardInformation' => swagger_credit_card_information:swagger_credit_card_information(),
       'directDebitProcessorInformation' => swagger_direct_debit_processor_information:swagger_direct_debit_processor_information(),
       'distributorCode' => binary(),
       'distributorPassword' => binary(),
       'initialUser' => swagger_users:swagger_users(),
       'paymentMethod' => binary(),
       'paymentProcessorInformation' => swagger_payment_processor_information:swagger_payment_processor_information(),
       'planInformation' => swagger_plan_information:swagger_plan_information(),
       'referralInformation' => swagger_referral_information:swagger_referral_information(),
       'socialAccountInformation' => swagger_user_social_account_logins:swagger_user_social_account_logins()
     }.

encode(#{ 'accountName' := AccountName,
          'accountSettings' := AccountSettings,
          'addressInformation' := AddressInformation,
          'creditCardInformation' := CreditCardInformation,
          'directDebitProcessorInformation' := DirectDebitProcessorInformation,
          'distributorCode' := DistributorCode,
          'distributorPassword' := DistributorPassword,
          'initialUser' := InitialUser,
          'paymentMethod' := PaymentMethod,
          'paymentProcessorInformation' := PaymentProcessorInformation,
          'planInformation' := PlanInformation,
          'referralInformation' := ReferralInformation,
          'socialAccountInformation' := SocialAccountInformation
        }) ->
    #{ 'accountName' => AccountName,
       'accountSettings' => AccountSettings,
       'addressInformation' => AddressInformation,
       'creditCardInformation' => CreditCardInformation,
       'directDebitProcessorInformation' => DirectDebitProcessorInformation,
       'distributorCode' => DistributorCode,
       'distributorPassword' => DistributorPassword,
       'initialUser' => InitialUser,
       'paymentMethod' => PaymentMethod,
       'paymentProcessorInformation' => PaymentProcessorInformation,
       'planInformation' => PlanInformation,
       'referralInformation' => ReferralInformation,
       'socialAccountInformation' => SocialAccountInformation
     }.
