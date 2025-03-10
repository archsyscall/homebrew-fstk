class Fstk < Formula
  desc "File Stack - A CLI tool for managing files and directories in a stack format"
  homepage "https://github.com/archsyscall/fstk"
  url "https://github.com/archsyscall/fstk/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ea6364ff3ffec69356abfeee9a35700923f0c985895f2e8e64d2e3eea04a2fd6"
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