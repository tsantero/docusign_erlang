-module(swagger_consumer_disclosure).

-export([encode/1]).

-export_type([swagger_consumer_disclosure/0]).

-type swagger_consumer_disclosure() ::
    #{ 'accountEsignId' => binary(),
       'allowCDWithdraw' => binary(),
       'allowCDWithdrawMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'changeEmail' => binary(),
       'changeEmailOther' => binary(),
       'companyName' => binary(),
       'companyPhone' => binary(),
       'copyCostPerPage' => binary(),
       'copyFeeCollectionMethod' => binary(),
       'copyRequestEmail' => binary(),
       'custom' => binary(),
       'enableEsign' => binary(),
       'esignAgreement' => binary(),
       'esignText' => binary(),
       'languageCode' => binary(),
       'mustAgreeToEsign' => binary(),
       'pdfId' => binary(),
       'useBrand' => binary(),
       'useConsumerDisclosureWithinAccount' => binary(),
       'useConsumerDisclosureWithinAccountMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'withdrawAddressLine1' => binary(),
       'withdrawAddressLine2' => binary(),
       'withdrawByEmail' => binary(),
       'withdrawByMail' => binary(),
       'withdrawByPhone' => binary(),
       'withdrawCity' => binary(),
       'withdrawConsequences' => binary(),
       'withdrawEmail' => binary(),
       'withdrawOther' => binary(),
       'withdrawPhone' => binary(),
       'withdrawPostalCode' => binary(),
       'withdrawState' => binary()
     }.

encode(#{ 'accountEsignId' := AccountEsignId,
          'allowCDWithdraw' := AllowCDWithdraw,
          'allowCDWithdrawMetadata' := AllowCDWithdrawMetadata,
          'changeEmail' := ChangeEmail,
          'changeEmailOther' := ChangeEmailOther,
          'companyName' := CompanyName,
          'companyPhone' := CompanyPhone,
          'copyCostPerPage' := CopyCostPerPage,
          'copyFeeCollectionMethod' := CopyFeeCollectionMethod,
          'copyRequestEmail' := CopyRequestEmail,
          'custom' := Custom,
          'enableEsign' := EnableEsign,
          'esignAgreement' := EsignAgreement,
          'esignText' := EsignText,
          'languageCode' := LanguageCode,
          'mustAgreeToEsign' := MustAgreeToEsign,
          'pdfId' := PdfId,
          'useBrand' := UseBrand,
          'useConsumerDisclosureWithinAccount' := UseConsumerDisclosureWithinAccount,
          'useConsumerDisclosureWithinAccountMetadata' := UseConsumerDisclosureWithinAccountMetadata,
          'withdrawAddressLine1' := WithdrawAddressLine1,
          'withdrawAddressLine2' := WithdrawAddressLine2,
          'withdrawByEmail' := WithdrawByEmail,
          'withdrawByMail' := WithdrawByMail,
          'withdrawByPhone' := WithdrawByPhone,
          'withdrawCity' := WithdrawCity,
          'withdrawConsequences' := WithdrawConsequences,
          'withdrawEmail' := WithdrawEmail,
          'withdrawOther' := WithdrawOther,
          'withdrawPhone' := WithdrawPhone,
          'withdrawPostalCode' := WithdrawPostalCode,
          'withdrawState' := WithdrawState
        }) ->
    #{ 'accountEsignId' => AccountEsignId,
       'allowCDWithdraw' => AllowCDWithdraw,
       'allowCDWithdrawMetadata' => AllowCDWithdrawMetadata,
       'changeEmail' => ChangeEmail,
       'changeEmailOther' => ChangeEmailOther,
       'companyName' => CompanyName,
       'companyPhone' => CompanyPhone,
       'copyCostPerPage' => CopyCostPerPage,
       'copyFeeCollectionMethod' => CopyFeeCollectionMethod,
       'copyRequestEmail' => CopyRequestEmail,
       'custom' => Custom,
       'enableEsign' => EnableEsign,
       'esignAgreement' => EsignAgreement,
       'esignText' => EsignText,
       'languageCode' => LanguageCode,
       'mustAgreeToEsign' => MustAgreeToEsign,
       'pdfId' => PdfId,
       'useBrand' => UseBrand,
       'useConsumerDisclosureWithinAccount' => UseConsumerDisclosureWithinAccount,
       'useConsumerDisclosureWithinAccountMetadata' => UseConsumerDisclosureWithinAccountMetadata,
       'withdrawAddressLine1' => WithdrawAddressLine1,
       'withdrawAddressLine2' => WithdrawAddressLine2,
       'withdrawByEmail' => WithdrawByEmail,
       'withdrawByMail' => WithdrawByMail,
       'withdrawByPhone' => WithdrawByPhone,
       'withdrawCity' => WithdrawCity,
       'withdrawConsequences' => WithdrawConsequences,
       'withdrawEmail' => WithdrawEmail,
       'withdrawOther' => WithdrawOther,
       'withdrawPhone' => WithdrawPhone,
       'withdrawPostalCode' => WithdrawPostalCode,
       'withdrawState' => WithdrawState
     }.
