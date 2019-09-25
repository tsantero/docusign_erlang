-module(swagger_mobile_notifier_configuration_information).

-export([encode/1]).

-export_type([swagger_mobile_notifier_configuration_information/0]).

-type swagger_mobile_notifier_configuration_information() ::
    #{ 'mobileNotifierConfigurations' => list()
     }.

encode(#{ 'mobileNotifierConfigurations' := MobileNotifierConfigurations
        }) ->
    #{ 'mobileNotifierConfigurations' => MobileNotifierConfigurations
     }.
