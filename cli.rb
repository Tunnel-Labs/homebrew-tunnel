class Tunnel < Formula
  desc "Tunnel CLI"
  homepage "https://tunnel.dev"
  version "0.4.47"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.55.tgz"
      sha256 "eb6ce02ff4d65e429affd9d20636305792b4d5d8ad2ae5e2741f3dd7f6513271"

      def install
        bin.install "tunnel"
      end
    end
    if Hardware::CPU.intel?
      url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.55.tgz"
      sha256 "e79b896c633d259e2681b641c0dd3907272bb3184370409edcd655124d187470"

      def install
        bin.install "tunnel"
      end
    end
  end
end