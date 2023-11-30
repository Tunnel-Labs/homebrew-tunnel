class TunnelCli < Formula
	desc "Tunnel CLI"
	homepage "https://tunnel.dev"
	version "0.4.64"
	depends_on :macos

	bottle do
		root_url "https://github.com/Tunnel-Labs/homebrew-tunnel/releases/download/v0.4.64"
		sha256 cellar: :any, arm64_ventura: "a92ada3a036a6840a03d1ab40d030ab3d3900eaaf9549b3ac568ca19d99d7d41"
		sha256 cellar: :any, arm64_monterey: "a92ada3a036a6840a03d1ab40d030ab3d3900eaaf9549b3ac568ca19d99d7d41"
		sha256 cellar: :any, arm64_big_sur: "a92ada3a036a6840a03d1ab40d030ab3d3900eaaf9549b3ac568ca19d99d7d41"
		sha256 cellar: :any, ventura: "67994f4693e0a71d3ef5794bf81b080089ff6234dacb7fa17377a489eefbd075"
		sha256 cellar: :any, monterey: "67994f4693e0a71d3ef5794bf81b080089ff6234dacb7fa17377a489eefbd075"
		sha256 cellar: :any, big_sur: "67994f4693e0a71d3ef5794bf81b080089ff6234dacb7fa17377a489eefbd075"
		sha256 cellar: :any, catalina: "a92ada3a036a6840a03d1ab40d030ab3d3900eaaf9549b3ac568ca19d99d7d41"
		sha256 cellar: :any, mojave: "a92ada3a036a6840a03d1ab40d030ab3d3900eaaf9549b3ac568ca19d99d7d41"
		sha256 cellar: :any, high_sierra: "a92ada3a036a6840a03d1ab40d030ab3d3900eaaf9549b3ac568ca19d99d7d41"
		sha256 cellar: :any, sierra: "a92ada3a036a6840a03d1ab40d030ab3d3900eaaf9549b3ac568ca19d99d7d41"
		sha256 cellar: :any, el_capitan: "a92ada3a036a6840a03d1ab40d030ab3d3900eaaf9549b3ac568ca19d99d7d41"
		sha256 cellar: :any, x86_64_linux: "b1b69675e32eccc047b19072c7b894897b3056a7c006b64e26736cf04136c9ce"
	end

	on_macos do
		if Hardware::CPU.arm?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.64.tgz"
			sha256 "12ada28b412e9644e8fa9f8cdf61959abd9ac7f284161d0302eea7615375c8ef"

			def install
				bin.install "tunnel"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.64.tgz"
			sha256 "54a415f8cc841245ff5cba99c2874b2911aae03f62fe4169a024402f2b774562"

			def install
				bin.install "tunnel"
			end
		end
	end

	on_linux do
		if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.64.tgz"
			sha256 "a2f8a0e35cfd5183de61ed3959bb126cece745afd1144c0920128898e390f981"

			def install
				bin.install "leaf"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.64.tgz"
			sha256 "39d529afbf7ebef716ccd9a30eed82fd29138452b2cf10ec70bd76d8a0773c79"

			def install
				bin.install "leaf"
			end
		end
	end
end