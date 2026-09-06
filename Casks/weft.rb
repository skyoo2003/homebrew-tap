# Backfilled by hand for v0.1.0, which was released before this tap carried
# weft. Every sha256 below is the value in that release's own checksums.txt, so
# this points at the exact archives v0.1.0 published rather than at a rebuild of
# them. GoReleaser generates and overwrites this file from the next tag onward.
#
# v0.1.0 shipped the weft CLI alone. From the next tag the archive also carries
# weftd, and the regenerated cask will have a second `binary` line for it.
cask "weft" do
  version "0.1.0"

  on_macos do
    on_arm do
      sha256 "fe39d393b73acb5ca644b73d198d68a57e1a25fb13a677cda205503be5a179db"
      url "https://github.com/skyoo2003/weft/releases/download/v#{version}/weft_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "088a9b1bd1097bd03734e52d08baad7cd7c7aafcce4c9b9324861f943f2accbd"
      url "https://github.com/skyoo2003/weft/releases/download/v#{version}/weft_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "54e8269d6d14806351a7fff9fe49054d7521054faaa0878ec382c437e52f9d40"
      url "https://github.com/skyoo2003/weft/releases/download/v#{version}/weft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "4908b9d7d53fa5f8220375533508658488cef9fa19b867e4ecd783a44824ba1e"
      url "https://github.com/skyoo2003/weft/releases/download/v#{version}/weft_#{version}_linux_amd64.tar.gz"
    end
  end

  name "weft"
  desc "Keyword, vector and graph search engine whose default operation is fusion"
  homepage "https://github.com/skyoo2003/weft"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "weft"

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/weft"]
    end
  end

  # No zap stanza required

  caveats <<~EOS
    This is not production software. See the Status and Limitations sections of
    https://github.com/skyoo2003/weft before depending on anything it returns.
  EOS
end
