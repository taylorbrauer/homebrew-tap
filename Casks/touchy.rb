cask "touchy" do
  version "0.5.1"
  sha256 "02889358e87fdaf3c9ca7d1ab41d17c7c5bde2f6d666c57243305c5dc4f5c0d1"

  url "https://github.com/taylorbrauer/touchy-releases/releases/download/v#{version}/Touchy-#{version}.zip",
      verified: "github.com/taylorbrauer/touchy-releases/"
  name "Touchy"
  desc "Touch Screen & Logo Toggle"
  homepage "https://touchymac.com/"

  depends_on macos: ">= :sonoma"

  app "Touchy.app"

  uninstall launchctl: "com.taylorbrauer.Touchy.helper"

  zap trash: [
    "~/Library/Preferences/com.taylorbrauer.Touchy.plist",
  ]
end
