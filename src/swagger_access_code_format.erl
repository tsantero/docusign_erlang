-module(swagger_access_code_format).

-export([encode/1]).

-export_type([swagger_access_code_format/0]).

-type swagger_access_code_format() ::
    #{ 'formatRequired' => binary(),
       'formatRequiredMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'letterRequired' => binary(),
       'letterRequiredMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'minimumLength' => binary(),
       'minimumLengthMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'numberRequired' => binary(),
       'numberRequiredMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'specialCharacterRequired' => binary(),
       'specialCharacterRequiredMetadata' => swagger_settings_metadata:swagger_settings_metadata()
     }.

encode(#{ 'formatRequired' := FormatRequired,
          'formatRequiredMetadata' := FormatRequiredMetadata,
          'letterRequired' := LetterRequired,
          'letterRequiredMetadata' := LetterRequiredMetadata,
          'minimumLength' := MinimumLength,
          'minimumLengthMetadata' := MinimumLengthMetadata,
          'numberRequired' := NumberRequired,
          'numberRequiredMetadata' := NumberRequiredMetadata,
          'specialCharacterRequired' := SpecialCharacterRequired,
          'specialCharacterRequiredMetadata' := SpecialCharacterRequiredMetadata
        }) ->
    #{ 'formatRequired' => FormatRequired,
       'formatRequiredMetadata' => FormatRequiredMetadata,
       'letterRequired' => LetterRequired,
       'letterRequiredMetadata' => LetterRequiredMetadata,
       'minimumLength' => MinimumLength,
       'minimumLengthMetadata' => MinimumLengthMetadata,
       'numberRequired' => NumberRequired,
       'numberRequiredMetadata' => NumberRequiredMetadata,
       'specialCharacterRequired' => SpecialCharacterRequired,
       'specialCharacterRequiredMetadata' => SpecialCharacterRequiredMetadata
     }.
