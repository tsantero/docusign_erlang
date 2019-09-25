-module(swagger_country).

-export([encode/1]).

-export_type([swagger_country/0]).

-type swagger_country() ::
    #{ 'isoCode' => binary(),
       'name' => binary(),
       'provinces' => list(),
       'provinceValidated' => binary()
     }.

encode(#{ 'isoCode' := IsoCode,
          'name' := Name,
          'provinces' := Provinces,
          'provinceValidated' := ProvinceValidated
        }) ->
    #{ 'isoCode' => IsoCode,
       'name' => Name,
       'provinces' => Provinces,
       'provinceValidated' => ProvinceValidated
     }.
