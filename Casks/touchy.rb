cask "touchy" do
  version "1.2.0"
  sha256 "eaebffb7985628912f9c40f4c74b87cbb0aab197b62d2f79a36d3ce190ecf126"

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
