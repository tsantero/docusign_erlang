-module(swagger_brand).

-export([encode/1]).

-export_type([swagger_brand/0]).

-type swagger_brand() ::
    #{ 'brandCompany' => binary(),
       'brandId' => binary(),
       'brandLanguages' => list(),
       'brandName' => binary(),
       'colors' => list(),
       'defaultBrandLanguage' => binary(),
       'emailContent' => list(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'isOverridingCompanyName' => boolean(),
       'isSendingDefault' => boolean(),
       'isSigningDefault' => boolean(),
       'landingPages' => list(),
       'links' => list(),
       'logos' => swagger_brand_logos:swagger_brand_logos(),
       'resources' => swagger_brand_resource_urls:swagger_brand_resource_urls()
     }.

encode(#{ 'brandCompany' := BrandCompany,
          'brandId' := BrandId,
          'brandLanguages' := BrandLanguages,
          'brandName' := BrandName,
          'colors' := Colors,
          'defaultBrandLanguage' := DefaultBrandLanguage,
          'emailContent' := EmailContent,
          'errorDetails' := ErrorDetails,
          'isOverridingCompanyName' := IsOverridingCompanyName,
          'isSendingDefault' := IsSendingDefault,
          'isSigningDefault' := IsSigningDefault,
          'landingPages' := LandingPages,
          'links' := Links,
          'logos' := Logos,
          'resources' := Resources
        }) ->
    #{ 'brandCompany' => BrandCompany,
       'brandId' => BrandId,
       'brandLanguages' => BrandLanguages,
       'brandName' => BrandName,
       'colors' => Colors,
       'defaultBrandLanguage' => DefaultBrandLanguage,
       'emailContent' => EmailContent,
       'errorDetails' => ErrorDetails,
       'isOverridingCompanyName' => IsOverridingCompanyName,
       'isSendingDefault' => IsSendingDefault,
       'isSigningDefault' => IsSigningDefault,
       'landingPages' => LandingPages,
       'links' => Links,
       'logos' => Logos,
       'resources' => Resources
     }.
