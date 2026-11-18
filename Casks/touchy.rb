cask "touchy" do
  version "1.2.1"
  sha256 "1966546e6872eea5f5466b59ca3040147957843ab97a25c357928e4ca40bbf88"

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
