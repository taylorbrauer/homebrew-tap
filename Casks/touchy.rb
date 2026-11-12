cask "touchy" do
  version "0.5.3"
  sha256 "57c1a1ed94bea7a02918df359104f695db174ecab1940a05a98c9d16013525dd"

  url "https://github.com/taylorbrauer/touchy-releases/releases/download/v#{version}/Touchy-#{version}.zip"
  name "Touchy"
  desc "Touch Screen & Logo Toggle"
  homepage "https://touchymac.com/"

  depends_on macos: :sonoma

  app "Touchy.app"

  uninstall launchctl: "com.taylorbrauer.Touchy.helper"

  zap trash: "~/Library/Preferences/com.taylorbrauer.Touchy.plist"
end
