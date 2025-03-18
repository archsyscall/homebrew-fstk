class Fstk < Formula
  desc "File Stack - A CLI tool for managing files and directories in a stack format"
  homepage "https://github.com/archsyscall/fstk"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/archsyscall/fstk/releases/download/v0.2.2/fstk-0.2.2-aarch64-macos"
      sha256 "2859fdc13cf5fe17d49df5286b3af2e6805bd54c26666ad24d8abdef22c68148"
    end
  
    on_intel do
      url "https://github.com/archsyscall/fstk/releases/download/v0.2.2/fstk-0.2.2-x86_64-macos"
      sha256 "aac95bfe52cff680dc5ed033aa7274ae04d8651c63a039f9546515c38ba908fb"
    end
  end

  def install
    bin.install Dir["fstk*"].first => "fstk"
  end

  test do
    system "#{bin}/fstk", "--version"
  end
end
