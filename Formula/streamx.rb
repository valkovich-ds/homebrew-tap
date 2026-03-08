# Generated with JReleaser 1.22.0 at 2026-03-08T13:43:53.407892258Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.53-rc.2.8d037a4"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53-rc.2.8d037a4/streamx-0.0.53-rc.2.8d037a4-linux-aarch64.zip"
    sha256 "f1c476ff8ac5844d790c6d070dfa23a92871d3a4ebf59b034a2ee3ea566a6351"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53-rc.2.8d037a4/streamx-0.0.53-rc.2.8d037a4-linux-x86_64.zip"
    sha256 "54bd6c4cd660308d4c8df6e16cc36d43e3cf6fa5f47af87ff12b9b448ee47b28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53-rc.2.8d037a4/streamx-0.0.53-rc.2.8d037a4-macos-aarch64.zip"
    sha256 "b892fbe5c3dc31d14f0381e6accbb68c2fa0977f44566c57c194e6ff67190406"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53-rc.2.8d037a4/streamx-0.0.53-rc.2.8d037a4-macos-x86_64.zip"
    sha256 "69765057f4ea180f49edd84cc4d00f65417ef86a5fa2ce2ba51985c34d3a2e7d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.53-rc.2.8d037a4", output
  end
end
