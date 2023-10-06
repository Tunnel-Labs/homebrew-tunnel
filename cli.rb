class Cli < Formula
  desc "Tunnel CLI"
  homepage "https://tunnel.dev"
  version "0.4.47"

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

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.47.tgz"
      sha256 "ae82d15dfa0f49231ec94c74b66a42d14ab0d234f2154250ac9e5fa586d8ce8f"

      def install
        bin.install "leaf"
      end
    end
    if Hardware::CPU.intel?
      url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.47.tgz"
      sha256 "a4cb4793adbbc032a770dd0bfdbadb8620c73ec49028200b2ba6cd728155fd0e"

      def install
        bin.install "leaf"
      end
    end
  end
end