cask "jonmate" do
  version "6065"
  sha256 "43ee94d3d21ea0e668d0d7a17f77e1da6cfc29131e371595fad8ecc09a4b4d8b"

  url "https://updates.mailmate-app.com/archives/MailMate_r#{version}.tbz",
      verified: "mailmate-app.com/"
  name "MailMate"
  desc "IMAP email client"
  homepage "https://freron.com/"

  livecheck do
    url "https://updates.mailmate-app.com/archives"
    regex(/MailMate_r(\d+).tbz/i)
  end

  auto_updates true

  app "MailMate.app"
  binary "#{appdir}/MailMate.app/Contents/Resources/emate"

  zap trash: [
    "~/Library/Application Scripts/com.freron.MailMate.MailMateShare",
    "~/Library/Application Support/MailMate",
    "~/Library/Caches/com.apple.helpd/Generated/MailMate Help*1.13.2",
    "~/Library/Caches/com.freron.MailMate",
    "~/Library/Containers/com.freron.MailMate.MailMateShare",
    "~/Library/Preferences/com.freron.MailMate.plist",
    "~/Library/Saved Application State/com.freron.MailMate.savedState",
  ]
end
