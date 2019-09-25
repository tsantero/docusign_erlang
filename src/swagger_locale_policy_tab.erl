-module(swagger_locale_policy_tab).

-export([encode/1]).

-export_type([swagger_locale_policy_tab/0]).

-type swagger_locale_policy_tab() ::
    #{ 'addressFormat' => binary(),
       'calendarType' => binary(),
       'cultureName' => binary(),
       'currencyNegativeFormat' => binary(),
       'currencyPositiveFormat' => binary(),
       'customDateFormat' => binary(),
       'customTimeFormat' => binary(),
       'dateFormat' => binary(),
       'initialFormat' => binary(),
       'nameFormat' => binary(),
       'timeFormat' => binary(),
       'timeZone' => binary()
     }.

encode(#{ 'addressFormat' := AddressFormat,
          'calendarType' := CalendarType,
          'cultureName' := CultureName,
          'currencyNegativeFormat' := CurrencyNegativeFormat,
          'currencyPositiveFormat' := CurrencyPositiveFormat,
          'customDateFormat' := CustomDateFormat,
          'customTimeFormat' := CustomTimeFormat,
          'dateFormat' := DateFormat,
          'initialFormat' := InitialFormat,
          'nameFormat' := NameFormat,
          'timeFormat' := TimeFormat,
          'timeZone' := TimeZone
        }) ->
    #{ 'addressFormat' => AddressFormat,
       'calendarType' => CalendarType,
       'cultureName' => CultureName,
       'currencyNegativeFormat' => CurrencyNegativeFormat,
       'currencyPositiveFormat' => CurrencyPositiveFormat,
       'customDateFormat' => CustomDateFormat,
       'customTimeFormat' => CustomTimeFormat,
       'dateFormat' => DateFormat,
       'initialFormat' => InitialFormat,
       'nameFormat' => NameFormat,
       'timeFormat' => TimeFormat,
       'timeZone' => TimeZone
     }.
