class TunnelCli < Formula
	desc "Tunnel CLI"
	homepage "https://tunnel.dev"
	version "0.4.71"
	depends_on :macos

	bottle do
		root_url "https://github.com/Tunnel-Labs/homebrew-tunnel/releases/download/v0.4.71"
		sha256 cellar: :any, arm64_ventura: "d833f7dbe6177d278f299c82d993857db751cd81ef06807662078f1ab14fc47f"
		sha256 cellar: :any, arm64_monterey: "d833f7dbe6177d278f299c82d993857db751cd81ef06807662078f1ab14fc47f"
		sha256 cellar: :any, arm64_big_sur: "d833f7dbe6177d278f299c82d993857db751cd81ef06807662078f1ab14fc47f"
		sha256 cellar: :any, ventura: "09542d6ffe833cfeb25a379b60bd369834635df9618e509680f4c5eee16b08fb"
		sha256 cellar: :any, monterey: "09542d6ffe833cfeb25a379b60bd369834635df9618e509680f4c5eee16b08fb"
		sha256 cellar: :any, big_sur: "09542d6ffe833cfeb25a379b60bd369834635df9618e509680f4c5eee16b08fb"
		sha256 cellar: :any, catalina: "d833f7dbe6177d278f299c82d993857db751cd81ef06807662078f1ab14fc47f"
		sha256 cellar: :any, mojave: "d833f7dbe6177d278f299c82d993857db751cd81ef06807662078f1ab14fc47f"
		sha256 cellar: :any, high_sierra: "d833f7dbe6177d278f299c82d993857db751cd81ef06807662078f1ab14fc47f"
		sha256 cellar: :any, sierra: "d833f7dbe6177d278f299c82d993857db751cd81ef06807662078f1ab14fc47f"
		sha256 cellar: :any, el_capitan: "d833f7dbe6177d278f299c82d993857db751cd81ef06807662078f1ab14fc47f"
		sha256 cellar: :any, x86_64_linux: "1f661d396cba25a189ab83c24ae8ea0056cff368380ca6f324df068598a9c2b6"
	end

	on_macos do
		if Hardware::CPU.arm?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.71.tgz"
			sha256 "1417a13072d1eb6eebbc21ecd85426f719f732ca9b894c06108e909a544bb9c6"

			def install
				bin.install "tunnel"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.71.tgz"
			sha256 "b00fc11fdd2db844f225be7e11bc0efda60c49b11e0bd2638116c3fc8d0482ef"

			def install
				bin.install "tunnel"
			end
		end
	end

	on_linux do
		if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.71.tgz"
			sha256 "e40de52ad57211d57971ca6703f41aecd63d166d75a0abf4a864e5c672d6e74e"

			def install
				bin.install "leaf"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.71.tgz"
			sha256 "ae893414e5fe5e1861717d505d57f793efb922dc5d30dc5a0b7cd3ab38b2e14f"

			def install
				bin.install "leaf"
			end
		end
	end
end