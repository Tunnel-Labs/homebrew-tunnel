class TunnelCli < Formula
	desc "Tunnel CLI"
	homepage "https://tunnel.dev"
	version "0.4.70"
	depends_on :macos

	bottle do
		root_url "https://github.com/Tunnel-Labs/homebrew-tunnel/releases/download/v0.4.70"
		sha256 cellar: :any, arm64_ventura: "4e0189eec81fd37d761970e825579d414ba6793e9913e754521d9fab6010aa26"
		sha256 cellar: :any, arm64_monterey: "4e0189eec81fd37d761970e825579d414ba6793e9913e754521d9fab6010aa26"
		sha256 cellar: :any, arm64_big_sur: "4e0189eec81fd37d761970e825579d414ba6793e9913e754521d9fab6010aa26"
		sha256 cellar: :any, ventura: "d6a9b7d406a0feace3d95ae6c931ee7c0ea3fc51018b7aa16fd9ab08708f5546"
		sha256 cellar: :any, monterey: "d6a9b7d406a0feace3d95ae6c931ee7c0ea3fc51018b7aa16fd9ab08708f5546"
		sha256 cellar: :any, big_sur: "d6a9b7d406a0feace3d95ae6c931ee7c0ea3fc51018b7aa16fd9ab08708f5546"
		sha256 cellar: :any, catalina: "4e0189eec81fd37d761970e825579d414ba6793e9913e754521d9fab6010aa26"
		sha256 cellar: :any, mojave: "4e0189eec81fd37d761970e825579d414ba6793e9913e754521d9fab6010aa26"
		sha256 cellar: :any, high_sierra: "4e0189eec81fd37d761970e825579d414ba6793e9913e754521d9fab6010aa26"
		sha256 cellar: :any, sierra: "4e0189eec81fd37d761970e825579d414ba6793e9913e754521d9fab6010aa26"
		sha256 cellar: :any, el_capitan: "4e0189eec81fd37d761970e825579d414ba6793e9913e754521d9fab6010aa26"
		sha256 cellar: :any, x86_64_linux: "999566473a72f4dce6239208af3aa102401b5e9a103e02d5447dda3b0cfce4fe"
	end

	on_macos do
		if Hardware::CPU.arm?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.70.tgz"
			sha256 "a41f9afb5b68c62e7b336954de60e08e853ee4bed567195eff727746e692c4d4"

			def install
				bin.install "tunnel"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.70.tgz"
			sha256 "2ea665a9f2b5b8b557b3697aa0dd1a16d21309405f5fb0fd335b9d0e394e37cb"

			def install
				bin.install "tunnel"
			end
		end
	end

	on_linux do
		if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.70.tgz"
			sha256 "9712e52fd3da57d4d5820269efa32dded17aac4a572cba81edaaedcf34ebe341"

			def install
				bin.install "leaf"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.70.tgz"
			sha256 "2b030d410ca29d4e5fcff430aa0414dea299b3daab7e5939c83008aab26c7377"

			def install
				bin.install "leaf"
			end
		end
	end
end