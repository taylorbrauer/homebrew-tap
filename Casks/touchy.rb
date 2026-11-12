cask "touchy" do
  version "1.0.0"
  sha256 "80bb4b933ff6591e9800392ea19f9a2994539052ff346b7d08955c72dca9dfe5"

  url "https://github.com/taylorbrauer/touchy-releases/releases/download/v#{version}/Touchy-#{version}.zip"
  name "Touchy"
  desc "Touch Screen & Logo Toggle"
  homepage "https://touchymac.com/"

  depends_on macos: :golden_gate

  app "Touchy.app"

  uninstall launchctl: "com.taylorbrauer.Touchy.helper"

  zap trash: "~/Library/Preferences/com.taylorbrauer.Touchy.plist"
end
