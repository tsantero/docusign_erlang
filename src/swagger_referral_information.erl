-module(swagger_referral_information).

-export([encode/1]).

-export_type([swagger_referral_information/0]).

-type swagger_referral_information() ::
    #{ 'advertisementId' => binary(),
       'enableSupport' => binary(),
       'externalOrgId' => binary(),
       'groupMemberId' => binary(),
       'idType' => binary(),
       'includedSeats' => binary(),
       'industry' => binary(),
       'planStartMonth' => binary(),
       'promoCode' => binary(),
       'publisherId' => binary(),
       'referralCode' => binary(),
       'referrerName' => binary(),
       'saleDiscountAmount' => binary(),
       'saleDiscountFixedAmount' => binary(),
       'saleDiscountPercent' => binary(),
       'saleDiscountPeriods' => binary(),
       'saleDiscountSeatPriceOverride' => binary(),
       'shopperId' => binary()
     }.

encode(#{ 'advertisementId' := AdvertisementId,
          'enableSupport' := EnableSupport,
          'externalOrgId' := ExternalOrgId,
          'groupMemberId' := GroupMemberId,
          'idType' := IdType,
          'includedSeats' := IncludedSeats,
          'industry' := Industry,
          'planStartMonth' := PlanStartMonth,
          'promoCode' := PromoCode,
          'publisherId' := PublisherId,
          'referralCode' := ReferralCode,
          'referrerName' := ReferrerName,
          'saleDiscountAmount' := SaleDiscountAmount,
          'saleDiscountFixedAmount' := SaleDiscountFixedAmount,
          'saleDiscountPercent' := SaleDiscountPercent,
          'saleDiscountPeriods' := SaleDiscountPeriods,
          'saleDiscountSeatPriceOverride' := SaleDiscountSeatPriceOverride,
          'shopperId' := ShopperId
        }) ->
    #{ 'advertisementId' => AdvertisementId,
       'enableSupport' => EnableSupport,
       'externalOrgId' => ExternalOrgId,
       'groupMemberId' => GroupMemberId,
       'idType' => IdType,
       'includedSeats' => IncludedSeats,
       'industry' => Industry,
       'planStartMonth' => PlanStartMonth,
       'promoCode' => PromoCode,
       'publisherId' => PublisherId,
       'referralCode' => ReferralCode,
       'referrerName' => ReferrerName,
       'saleDiscountAmount' => SaleDiscountAmount,
       'saleDiscountFixedAmount' => SaleDiscountFixedAmount,
       'saleDiscountPercent' => SaleDiscountPercent,
       'saleDiscountPeriods' => SaleDiscountPeriods,
       'saleDiscountSeatPriceOverride' => SaleDiscountSeatPriceOverride,
       'shopperId' => ShopperId
     }.
