class Fstk < Formula
  desc "File Stack - A CLI tool for managing files and directories in a stack format"
  homepage "https://github.com/archsyscall/fstk"
  url "https://github.com/archsyscall/fstk/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d2bdeb4a8bcf1aec99baa32895cec826b2b14d58c219f08acdd43d0894d3a570"
  license "MIT" # Update with your actual license
  
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    prefix.install "README.md"
  end

  test do
    assert_match "fstk", shell_output("#{bin}/fstk --version")
  end
end
