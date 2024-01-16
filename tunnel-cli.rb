class TunnelCli < Formula
	desc "Tunnel CLI"
	homepage "https://tunnel.dev"
	version "0.4.72"
	depends_on :macos

	bottle do
		root_url "https://github.com/Tunnel-Labs/homebrew-tunnel/releases/download/v0.4.72"
		sha256 cellar: :any, arm64_ventura: "dff836baeb07b5355a91a5b91621360fb22d661f492c54c8549419144fa2aa42"
		sha256 cellar: :any, arm64_monterey: "dff836baeb07b5355a91a5b91621360fb22d661f492c54c8549419144fa2aa42"
		sha256 cellar: :any, arm64_big_sur: "dff836baeb07b5355a91a5b91621360fb22d661f492c54c8549419144fa2aa42"
		sha256 cellar: :any, ventura: "e27eccd1aa149616f331c69ad316174333871aba7d9bcf184ed538f8be3d463c"
		sha256 cellar: :any, monterey: "e27eccd1aa149616f331c69ad316174333871aba7d9bcf184ed538f8be3d463c"
		sha256 cellar: :any, big_sur: "e27eccd1aa149616f331c69ad316174333871aba7d9bcf184ed538f8be3d463c"
		sha256 cellar: :any, catalina: "dff836baeb07b5355a91a5b91621360fb22d661f492c54c8549419144fa2aa42"
		sha256 cellar: :any, mojave: "dff836baeb07b5355a91a5b91621360fb22d661f492c54c8549419144fa2aa42"
		sha256 cellar: :any, high_sierra: "dff836baeb07b5355a91a5b91621360fb22d661f492c54c8549419144fa2aa42"
		sha256 cellar: :any, sierra: "dff836baeb07b5355a91a5b91621360fb22d661f492c54c8549419144fa2aa42"
		sha256 cellar: :any, el_capitan: "dff836baeb07b5355a91a5b91621360fb22d661f492c54c8549419144fa2aa42"
		sha256 cellar: :any, x86_64_linux: "1dc7fd4b886d335edea29515370cbb76939b3e28ecf000885cda52e247520041"
	end

	on_macos do
		if Hardware::CPU.arm?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.72.tgz"
			sha256 "2bf49d73db315ad634ca9f4186f627694e2d6b62c53eb98b31b768a88dfdc290"

			def install
				bin.install "tunnel"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.72.tgz"
			sha256 "cc1668f69601918c80710773af3cde94ed762ee3d458b11cb11670ff39ccf53a"

			def install
				bin.install "tunnel"
			end
		end
	end

	on_linux do
		if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.72.tgz"
			sha256 "82b881ffded63a0109565334184c7f878d8631a09d1dd7b426a041f023d9eb17"

			def install
				bin.install "leaf"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.72.tgz"
			sha256 "243c0e5ab2c2aeec522bcdb93678bec41c48999144c90c63420630c32bacbad4"

			def install
				bin.install "leaf"
			end
		end
	end
end