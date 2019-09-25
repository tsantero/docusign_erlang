-module(swagger_reminders).

-export([encode/1]).

-export_type([swagger_reminders/0]).

-type swagger_reminders() ::
    #{ 'reminderDelay' => binary(),
       'reminderEnabled' => binary(),
       'reminderFrequency' => binary()
     }.

encode(#{ 'reminderDelay' := ReminderDelay,
          'reminderEnabled' := ReminderEnabled,
          'reminderFrequency' := ReminderFrequency
        }) ->
    #{ 'reminderDelay' => ReminderDelay,
       'reminderEnabled' => ReminderEnabled,
       'reminderFrequency' => ReminderFrequency
     }.
