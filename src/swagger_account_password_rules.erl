-module(swagger_account_password_rules).

-export([encode/1]).

-export_type([swagger_account_password_rules/0]).

-type swagger_account_password_rules() ::
    #{ 'expirePassword' => binary(),
       'expirePasswordDays' => binary(),
       'expirePasswordDaysMetadata' => swagger_account_password_expire_password_days:swagger_account_password_expire_password_days(),
       'lockoutDurationMinutes' => binary(),
       'lockoutDurationMinutesMetadata' => swagger_account_password_lockout_duration_minutes:swagger_account_password_lockout_duration_minutes(),
       'lockoutDurationType' => binary(),
       'lockoutDurationTypeMetadata' => swagger_account_password_lockout_duration_type:swagger_account_password_lockout_duration_type(),
       'minimumPasswordAgeDays' => binary(),
       'minimumPasswordAgeDaysMetadata' => swagger_account_password_minimum_password_age_days:swagger_account_password_minimum_password_age_days(),
       'minimumPasswordLength' => binary(),
       'minimumPasswordLengthMetadata' => swagger_account_minimum_password_length:swagger_account_minimum_password_length(),
       'passwordIncludeDigit' => binary(),
       'passwordIncludeDigitOrSpecialCharacter' => binary(),
       'passwordIncludeLowerCase' => binary(),
       'passwordIncludeSpecialCharacter' => binary(),
       'passwordIncludeUpperCase' => binary(),
       'passwordStrengthType' => binary(),
       'passwordStrengthTypeMetadata' => swagger_account_password_strength_type:swagger_account_password_strength_type(),
       'questionsRequired' => binary(),
       'questionsRequiredMetadata' => swagger_account_password_questions_required:swagger_account_password_questions_required()
     }.

encode(#{ 'expirePassword' := ExpirePassword,
          'expirePasswordDays' := ExpirePasswordDays,
          'expirePasswordDaysMetadata' := ExpirePasswordDaysMetadata,
          'lockoutDurationMinutes' := LockoutDurationMinutes,
          'lockoutDurationMinutesMetadata' := LockoutDurationMinutesMetadata,
          'lockoutDurationType' := LockoutDurationType,
          'lockoutDurationTypeMetadata' := LockoutDurationTypeMetadata,
          'minimumPasswordAgeDays' := MinimumPasswordAgeDays,
          'minimumPasswordAgeDaysMetadata' := MinimumPasswordAgeDaysMetadata,
          'minimumPasswordLength' := MinimumPasswordLength,
          'minimumPasswordLengthMetadata' := MinimumPasswordLengthMetadata,
          'passwordIncludeDigit' := PasswordIncludeDigit,
          'passwordIncludeDigitOrSpecialCharacter' := PasswordIncludeDigitOrSpecialCharacter,
          'passwordIncludeLowerCase' := PasswordIncludeLowerCase,
          'passwordIncludeSpecialCharacter' := PasswordIncludeSpecialCharacter,
          'passwordIncludeUpperCase' := PasswordIncludeUpperCase,
          'passwordStrengthType' := PasswordStrengthType,
          'passwordStrengthTypeMetadata' := PasswordStrengthTypeMetadata,
          'questionsRequired' := QuestionsRequired,
          'questionsRequiredMetadata' := QuestionsRequiredMetadata
        }) ->
    #{ 'expirePassword' => ExpirePassword,
       'expirePasswordDays' => ExpirePasswordDays,
       'expirePasswordDaysMetadata' => ExpirePasswordDaysMetadata,
       'lockoutDurationMinutes' => LockoutDurationMinutes,
       'lockoutDurationMinutesMetadata' => LockoutDurationMinutesMetadata,
       'lockoutDurationType' => LockoutDurationType,
       'lockoutDurationTypeMetadata' => LockoutDurationTypeMetadata,
       'minimumPasswordAgeDays' => MinimumPasswordAgeDays,
       'minimumPasswordAgeDaysMetadata' => MinimumPasswordAgeDaysMetadata,
       'minimumPasswordLength' => MinimumPasswordLength,
       'minimumPasswordLengthMetadata' => MinimumPasswordLengthMetadata,
       'passwordIncludeDigit' => PasswordIncludeDigit,
       'passwordIncludeDigitOrSpecialCharacter' => PasswordIncludeDigitOrSpecialCharacter,
       'passwordIncludeLowerCase' => PasswordIncludeLowerCase,
       'passwordIncludeSpecialCharacter' => PasswordIncludeSpecialCharacter,
       'passwordIncludeUpperCase' => PasswordIncludeUpperCase,
       'passwordStrengthType' => PasswordStrengthType,
       'passwordStrengthTypeMetadata' => PasswordStrengthTypeMetadata,
       'questionsRequired' => QuestionsRequired,
       'questionsRequiredMetadata' => QuestionsRequiredMetadata
     }.
