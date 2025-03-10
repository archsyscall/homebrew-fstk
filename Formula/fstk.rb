class Fstk < Formula
  desc "File Stack - A CLI tool for managing files and directories in a stack format"
  homepage "https://github.com/archsyscall/fstk"
  url "https://github.com/archsyscall/fstk/archive/refs/tags/v0.1.0.tar.gz"
  # NOTE: Before publishing, you need to update this SHA256 hash by running:
  # curl -sL https://github.com/archsyscall/fstk/archive/refs/tags/v0.1.0.tar.gz | shasum -a 256
  sha256 "replace_with_actual_sha256_hash"
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