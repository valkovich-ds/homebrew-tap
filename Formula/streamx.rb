# Generated with JReleaser 1.22.0 at 2026-03-08T13:38:51.972034328Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.52"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52/streamx-0.0.52-linux-aarch64.zip"
    sha256 "38d3d7c3e8da48e8944a60b414e696cd76e41410ffa6728fe4c1d1dcbe808801"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52/streamx-0.0.52-linux-x86_64.zip"
    sha256 "65a1d943c07f518a2718c0689970ce494d12735907131aac8421f681d8cf8a19"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52/streamx-0.0.52-macos-aarch64.zip"
    sha256 "17a7b8976c10dfa06f6d7b87028e06c898ce6bc099f65a15acd55a273bf913e5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52/streamx-0.0.52-macos-x86_64.zip"
    sha256 "b883828dedbcfdebf9c153b9ba57ef381c46edaefcbf814a12efd3e94c280085"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.52", output
  end
end
