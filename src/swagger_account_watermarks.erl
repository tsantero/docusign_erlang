-module(swagger_account_watermarks).

-export([encode/1]).

-export_type([swagger_account_watermarks/0]).

-type swagger_account_watermarks() ::
    #{ 'displayAngle' => binary(),
       'enabled' => binary(),
       'font' => binary(),
       'fontColor' => binary(),
       'fontSize' => binary(),
       'id' => binary(),
       'imageBase64' => binary(),
       'transparency' => binary(),
       'watermarkText' => binary()
     }.

encode(#{ 'displayAngle' := DisplayAngle,
          'enabled' := Enabled,
          'font' := Font,
          'fontColor' := FontColor,
          'fontSize' := FontSize,
          'id' := Id,
          'imageBase64' := ImageBase64,
          'transparency' := Transparency,
          'watermarkText' := WatermarkText
        }) ->
    #{ 'displayAngle' => DisplayAngle,
       'enabled' => Enabled,
       'font' => Font,
       'fontColor' => FontColor,
       'fontSize' => FontSize,
       'id' => Id,
       'imageBase64' => ImageBase64,
       'transparency' => Transparency,
       'watermarkText' => WatermarkText
     }.
