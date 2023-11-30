class TunnelCli < Formula
	desc "Tunnel CLI"
	homepage "https://tunnel.dev"
	version "0.4.65"
	depends_on :macos

	bottle do
		root_url "https://github.com/Tunnel-Labs/homebrew-tunnel/releases/download/v0.4.65"
		sha256 cellar: :any, arm64_ventura: "aa5fd172d61325f0c80375beca062a16299939b6c0ee6a0fd60262507cfe9fd3"
		sha256 cellar: :any, arm64_monterey: "aa5fd172d61325f0c80375beca062a16299939b6c0ee6a0fd60262507cfe9fd3"
		sha256 cellar: :any, arm64_big_sur: "aa5fd172d61325f0c80375beca062a16299939b6c0ee6a0fd60262507cfe9fd3"
		sha256 cellar: :any, ventura: "e67a9598e2341299da7c1841d3e25ba62c6f1c3215822f60c63fbdd0591f6c67"
		sha256 cellar: :any, monterey: "e67a9598e2341299da7c1841d3e25ba62c6f1c3215822f60c63fbdd0591f6c67"
		sha256 cellar: :any, big_sur: "e67a9598e2341299da7c1841d3e25ba62c6f1c3215822f60c63fbdd0591f6c67"
		sha256 cellar: :any, catalina: "aa5fd172d61325f0c80375beca062a16299939b6c0ee6a0fd60262507cfe9fd3"
		sha256 cellar: :any, mojave: "aa5fd172d61325f0c80375beca062a16299939b6c0ee6a0fd60262507cfe9fd3"
		sha256 cellar: :any, high_sierra: "aa5fd172d61325f0c80375beca062a16299939b6c0ee6a0fd60262507cfe9fd3"
		sha256 cellar: :any, sierra: "aa5fd172d61325f0c80375beca062a16299939b6c0ee6a0fd60262507cfe9fd3"
		sha256 cellar: :any, el_capitan: "aa5fd172d61325f0c80375beca062a16299939b6c0ee6a0fd60262507cfe9fd3"
		sha256 cellar: :any, x86_64_linux: "50e81268513449fb44184dbc666c2f0221129fcec69f28782c4150cbf7d753e6"
	end

	on_macos do
		if Hardware::CPU.arm?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.65.tgz"
			sha256 "d9e73d1219d12e90bba5d95f5bba0e1df1a3a5ab1f8789f5af88e4be4302d52d"

			def install
				bin.install "tunnel"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.65.tgz"
			sha256 "95af4f745a1115d59f5ae3d97c43d24fe3e7db41cd9550e5d1321afd8c2a62b7"

			def install
				bin.install "tunnel"
			end
		end
	end

	on_linux do
		if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.65.tgz"
			sha256 "4ca2e877bb0ae11f3b126bc50f4ee35a2ebb9dedef89a79106001e21c60fb7fd"

			def install
				bin.install "leaf"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.65.tgz"
			sha256 "adfe29ce33d59dbddf81d4bb16c9e2d85916d37fa7f3a23947d10f24e9df787c"

			def install
				bin.install "leaf"
			end
		end
	end
end