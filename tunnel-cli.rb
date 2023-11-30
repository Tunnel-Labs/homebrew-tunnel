class TunnelCli < Formula
	desc "Tunnel CLI"
	homepage "https://tunnel.dev"
	version "0.4.66"
	depends_on :macos

	bottle do
		root_url "https://github.com/Tunnel-Labs/homebrew-tunnel/releases/download/v0.4.66"
		sha256 cellar: :any, arm64_ventura: "9661a2e7a70b67cb9c51a747a189a60bda1303d13db335c80a92b13d6aa91cd2"
		sha256 cellar: :any, arm64_monterey: "9661a2e7a70b67cb9c51a747a189a60bda1303d13db335c80a92b13d6aa91cd2"
		sha256 cellar: :any, arm64_big_sur: "9661a2e7a70b67cb9c51a747a189a60bda1303d13db335c80a92b13d6aa91cd2"
		sha256 cellar: :any, ventura: "65ebf781ae560e7d1ef0e25fcedf5d217b404d494532ed1bfd59f0c3f816edf4"
		sha256 cellar: :any, monterey: "65ebf781ae560e7d1ef0e25fcedf5d217b404d494532ed1bfd59f0c3f816edf4"
		sha256 cellar: :any, big_sur: "65ebf781ae560e7d1ef0e25fcedf5d217b404d494532ed1bfd59f0c3f816edf4"
		sha256 cellar: :any, catalina: "9661a2e7a70b67cb9c51a747a189a60bda1303d13db335c80a92b13d6aa91cd2"
		sha256 cellar: :any, mojave: "9661a2e7a70b67cb9c51a747a189a60bda1303d13db335c80a92b13d6aa91cd2"
		sha256 cellar: :any, high_sierra: "9661a2e7a70b67cb9c51a747a189a60bda1303d13db335c80a92b13d6aa91cd2"
		sha256 cellar: :any, sierra: "9661a2e7a70b67cb9c51a747a189a60bda1303d13db335c80a92b13d6aa91cd2"
		sha256 cellar: :any, el_capitan: "9661a2e7a70b67cb9c51a747a189a60bda1303d13db335c80a92b13d6aa91cd2"
		sha256 cellar: :any, x86_64_linux: "3162376dad4701919640d05cdf16bca4703cfc5ebb7f24c9a4ee2aacd39ab65b"
	end

	on_macos do
		if Hardware::CPU.arm?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.66.tgz"
			sha256 "5d4fa4e2fb577c258e34a686f49af5463fd2cb2e30da921f03851d77e7bf46da"

			def install
				bin.install "tunnel"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.66.tgz"
			sha256 "435cdf15d4cc4da0332aa723fba06a7faafe9a46b3d4c1580020ab0f03ab346f"

			def install
				bin.install "tunnel"
			end
		end
	end

	on_linux do
		if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.66.tgz"
			sha256 "2d08e9f8a039f9c34122193d56488b3f176b5cc6504456af069659f83e06f993"

			def install
				bin.install "leaf"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.66.tgz"
			sha256 "916df2cfdb614c75806f2995afc16686576ae60900aefe442ff38370ddf207de"

			def install
				bin.install "leaf"
			end
		end
	end
end