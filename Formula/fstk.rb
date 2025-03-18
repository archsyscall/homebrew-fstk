class Fstk < Formula
  desc "File Stack - A CLI tool for managing files and directories in a stack format"
  homepage "https://github.com/archsyscall/fstk"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/archsyscall/fstk/releases/download/v0.2.3/fstk-0.2.3-aarch64-macos"
      sha256 "188e3b977eb7bbb2ff3890bcc826221045f13c89bf432bee8c38851f39d7539c"
    end
  
    on_intel do
      url "https://github.com/archsyscall/fstk/releases/download/v0.2.3/fstk-0.2.3-x86_64-macos"
      sha256 "6dad4e36ef6eaa66dabca0a27a5517050b2bdbad589a0e26ad77e1039b8404a0"
    end
  end

  def install
    bin.install Dir["fstk*"].first => "fstk"
  end

  test do
    system "#{bin}/fstk", "--version"
  end
end
