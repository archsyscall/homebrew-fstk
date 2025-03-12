class Fstk < Formula
  desc "File Stack - A CLI tool for managing files and directories in a stack format"
  homepage "https://github.com/archsyscall/fstk"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/archsyscall/fstk/releases/download/v0.2.1/fstk-0.2.1-aarch64-macos"
      sha256 "0498c579825134deea06139751d3daaba0f1053fa3d899801c5b71f607bf774b"
    end
  
    on_intel do
      url "https://github.com/archsyscall/fstk/releases/download/v0.2.1/fstk-0.2.1-x86_64-macos"
      sha256 "17ea8b92e287255d0ce478abc049233a8b1c0cf04a4f64175be051a4b95ac08b"
    end
  end

  def install
    bin.install Dir["fstk*"].first => "fstk"
  end

  test do
    system "#{bin}/fstk", "--version"
  end
end
