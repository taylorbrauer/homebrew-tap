cask "touchy" do
  version "0.5.2"
  sha256 "8289108497467d548f3a7c2c33362939f688d1a19a719a9489336402b5f337ce"

  url "https://github.com/taylorbrauer/touchy-releases/releases/download/v#{version}/Touchy-#{version}.zip"
  name "Touchy"
  desc "Touch Screen & Logo Toggle"
  homepage "https://touchymac.com/"

  depends_on macos: :sonoma

  app "Touchy.app"

  uninstall launchctl: "com.taylorbrauer.Touchy.helper"

  zap trash: "~/Library/Preferences/com.taylorbrauer.Touchy.plist"
end
