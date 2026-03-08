# Generated with JReleaser 1.22.0 at 2026-03-08T14:26:25.201453033Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.54-rc.2.939fbb3"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.54-rc.2.939fbb3/streamx-0.0.54-rc.2.939fbb3-linux-aarch64.zip"
    sha256 "844eda0b304aed5104096d0cb0a4747f7206e95e09a816dfdeb2810bad0009eb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.54-rc.2.939fbb3/streamx-0.0.54-rc.2.939fbb3-linux-x86_64.zip"
    sha256 "0f969da185e33a9c7acafca61670d9ec0d1c9ec62d3622c7342e71e47ca43d91"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.54-rc.2.939fbb3/streamx-0.0.54-rc.2.939fbb3-macos-aarch64.zip"
    sha256 "f61895f224a825f56562bd1955bbb844d624e9e50a8ba648cf977bcf34bbcfe2"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.54-rc.2.939fbb3/streamx-0.0.54-rc.2.939fbb3-macos-x86_64.zip"
    sha256 "7063f711c1fd56cbe6d698d0212e4b0e2895745a85a1f9036b6749658043d608"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.54-rc.2.939fbb3", output
  end
end
