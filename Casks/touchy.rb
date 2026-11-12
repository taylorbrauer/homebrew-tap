cask "touchy" do
  version "1.0.0"
  sha256 "cfedd1e4f883c44f71f178dfbc565a8af4203bf5078fecbbecaa9e9a07661ef9"

  url "https://github.com/taylorbrauer/touchy-releases/releases/download/v#{version}/Touchy-#{version}.zip"
  name "Touchy"
  desc "Touch Screen & Logo Toggle"
  homepage "https://touchymac.com/"

  depends_on macos: :golden_gate

  app "Touchy.app"

  uninstall launchctl: "com.taylorbrauer.Touchy.helper"

  zap trash: "~/Library/Preferences/com.taylorbrauer.Touchy.plist"
end
