class TunnelCli < Formula
	desc "Tunnel CLI"
	homepage "https://tunnel.dev"
	version "0.4.68"
	depends_on :macos

	bottle do
		root_url "https://github.com/Tunnel-Labs/homebrew-tunnel/releases/download/v0.4.68"
		sha256 cellar: :any, arm64_ventura: "5a3b8c81a927fd74081c1243b8072796452a99cb6b30eb262c5cc66a1a38441b"
		sha256 cellar: :any, arm64_monterey: "5a3b8c81a927fd74081c1243b8072796452a99cb6b30eb262c5cc66a1a38441b"
		sha256 cellar: :any, arm64_big_sur: "5a3b8c81a927fd74081c1243b8072796452a99cb6b30eb262c5cc66a1a38441b"
		sha256 cellar: :any, ventura: "4a96d68e255f55eba44e7ecfc94387a61ff03a64aea9a024c179cd233ebe3809"
		sha256 cellar: :any, monterey: "4a96d68e255f55eba44e7ecfc94387a61ff03a64aea9a024c179cd233ebe3809"
		sha256 cellar: :any, big_sur: "4a96d68e255f55eba44e7ecfc94387a61ff03a64aea9a024c179cd233ebe3809"
		sha256 cellar: :any, catalina: "5a3b8c81a927fd74081c1243b8072796452a99cb6b30eb262c5cc66a1a38441b"
		sha256 cellar: :any, mojave: "5a3b8c81a927fd74081c1243b8072796452a99cb6b30eb262c5cc66a1a38441b"
		sha256 cellar: :any, high_sierra: "5a3b8c81a927fd74081c1243b8072796452a99cb6b30eb262c5cc66a1a38441b"
		sha256 cellar: :any, sierra: "5a3b8c81a927fd74081c1243b8072796452a99cb6b30eb262c5cc66a1a38441b"
		sha256 cellar: :any, el_capitan: "5a3b8c81a927fd74081c1243b8072796452a99cb6b30eb262c5cc66a1a38441b"
		sha256 cellar: :any, x86_64_linux: "c28a839dd6fbe97176e4c219702b222debbf010d10096db1710cd976a0b75103"
	end

	on_macos do
		if Hardware::CPU.arm?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.68.tgz"
			sha256 "74aa915a541ee9e30f786f8d75d37635247b77363cb894feae17f6947c36feee"

			def install
				bin.install "tunnel"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.68.tgz"
			sha256 "040c7395e140617027ca71cf66a16209f62d174994af8a42c10088d2c4d1654c"

			def install
				bin.install "tunnel"
			end
		end
	end

	on_linux do
		if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.68.tgz"
			sha256 "303b8591b456b3e647ebf69aacd19aa5b6867543211d11176a88ab571c8b92fa"

			def install
				bin.install "leaf"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.68.tgz"
			sha256 "ad7a5f2381f8535cd31cbda78f2d705e5ed9b4adb10f0da41b479da7572abf4b"

			def install
				bin.install "leaf"
			end
		end
	end
end