class Fstk < Formula
  desc "File Stack - A CLI tool for managing files and directories in a stack format"
  homepage "https://github.com/archsyscall/fstk"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/archsyscall/fstk/releases/download/v0.2.0/fstk-0.2.0-aarch64-macos"
      sha256 "d798c0bd9eca082ca9087670e5bcb4f8a93f7d48d6898007087a2fee5bc2ef90"
    end
  
    on_intel do
      url "https://github.com/archsyscall/fstk/releases/download/v0.2.0/fstk-0.2.0-x86_64-macos"
      sha256 "f9fe664574ea2392123b09048d2efb101662471f11d0bf460f10e4ca5019d26f"
    end
  end

  def install
    bin.install Dir["fstk*"].first => "fstk"
    
    # Generate shell completions
    output = Utils.safe_popen_read(bin/"fstk", "completion", "bash")
    (bash_completion/"fstk").write output
    
    output = Utils.safe_popen_read(bin/"fstk", "completion", "zsh") 
    (zsh_completion/"_fstk").write output
    
    output = Utils.safe_popen_read(bin/"fstk", "completion", "fish")
    (fish_completion/"fstk.fish").write output
  end

  test do
    system "#{bin}/fstk", "--version"
  end
end
