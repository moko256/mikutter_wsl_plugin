# -*- coding: utf-8 -*-

Plugin.create(:mikutter_wsl_plugin) do
  intent Plugin::Web::Web, label: "Open URL over WSL" do |intent_token|
    system('/init /mnt/c/Windows/System32/rundll32.exe url.dll,FileProtocolHandler "' + intent_token.uri().to_s() + '"')
  end
end
