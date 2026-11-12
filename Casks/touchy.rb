cask "touchy" do
  version "0.5.4"
  sha256 "55a5c4bd8e1d6816f60e4f736a0a48d9f125e78892c2c656cb1f16e410c76cf2"

  url "https://github.com/taylorbrauer/touchy-releases/releases/download/v#{version}/Touchy-#{version}.zip"
  name "Touchy"
  desc "Touch Screen & Logo Toggle"
  homepage "https://touchymac.com/"

  depends_on macos: :sonoma

  app "Touchy.app"

  uninstall launchctl: "com.taylorbrauer.Touchy.helper"

  zap trash: "~/Library/Preferences/com.taylorbrauer.Touchy.plist"
end
