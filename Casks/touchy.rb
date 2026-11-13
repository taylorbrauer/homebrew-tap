cask "touchy" do
  version "1.1.0"
  sha256 "044f8a200495b23635f76af86fd0e2f5a7d189b9b14ef5e27e56331dc0cac2c0"

  url "https://github.com/taylorbrauer/touchy-releases/releases/download/v#{version}/Touchy-#{version}.zip"
  name "Touchy"
  desc "Touch Screen & Logo Toggle"
  homepage "https://touchymac.com/"

  # Touchy updates itself (Sparkle), so `brew upgrade` leaves it alone
  # unless run with --greedy.
  auto_updates true
  depends_on macos: :golden_gate

  app "Touchy.app"

  uninstall launchctl: "com.taylorbrauer.Touchy.helper"

  zap trash: [
    "~/Library/Caches/com.taylorbrauer.Touchy",
    "~/Library/HTTPStorages/com.taylorbrauer.Touchy",
    "~/Library/Preferences/com.taylorbrauer.Touchy.plist",
  ]
end
