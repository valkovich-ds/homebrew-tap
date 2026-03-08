# Generated with JReleaser 1.22.0 at 2026-03-08T09:04:57.981332136Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.52-rc.2.8d59d79"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52-rc.2.8d59d79/streamx-0.0.52-rc.2.8d59d79-linux-aarch64.zip"
    sha256 "a1dda539be39b6704b29b1e2e6788f45f81356733dd36c038bf94b7f0b653b95"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52-rc.2.8d59d79/streamx-0.0.52-rc.2.8d59d79-linux-x86_64.zip"
    sha256 "bf817e115a0e914e5f38eebd3363526a378f0ccdb9ded730e78565430efbcaad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52-rc.2.8d59d79/streamx-0.0.52-rc.2.8d59d79-macos-aarch64.zip"
    sha256 "071f92e8d43bb0775e3abeed2e90abfae069da5ab29e09f0d222ccc2bee834cc"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52-rc.2.8d59d79/streamx-0.0.52-rc.2.8d59d79-macos-x86_64.zip"
    sha256 "f186528b43c5bc2e5ba785e70267e584e41e48bc6dbff0a8ca4ffc444e45ebc8"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.52-rc.2.8d59d79", output
  end
end
