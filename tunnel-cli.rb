class Tunnel < Formula
	desc "Tunnel CLI"
	homepage "https://tunnel.dev"
	version "0.4.63"
	depends_on :macos

	do
		sha256 cellar: :any, arm64_ventura: "3046e18d2abeea71e3299b584dd69c01433d9c7e9921a627166e4990188ccc7f"
		sha256 cellar: :any, arm64_monterey: "3046e18d2abeea71e3299b584dd69c01433d9c7e9921a627166e4990188ccc7f"
		sha256 cellar: :any, arm64_big_sur: "3046e18d2abeea71e3299b584dd69c01433d9c7e9921a627166e4990188ccc7f"
		sha256 cellar: :any, ventura: "6766a0c304f90b44955828279ca12aa0d53882ba624138a710c4af8af005d2ba"
		sha256 cellar: :any, monterey: "6766a0c304f90b44955828279ca12aa0d53882ba624138a710c4af8af005d2ba"
		sha256 cellar: :any, big_sur: "6766a0c304f90b44955828279ca12aa0d53882ba624138a710c4af8af005d2ba"
		sha256 cellar: :any, catalina: "3046e18d2abeea71e3299b584dd69c01433d9c7e9921a627166e4990188ccc7f"
		sha256 cellar: :any, mojave: "3046e18d2abeea71e3299b584dd69c01433d9c7e9921a627166e4990188ccc7f"
		sha256 cellar: :any, high_sierra: "3046e18d2abeea71e3299b584dd69c01433d9c7e9921a627166e4990188ccc7f"
		sha256 cellar: :any, sierra: "3046e18d2abeea71e3299b584dd69c01433d9c7e9921a627166e4990188ccc7f"
		sha256 cellar: :any, el_capitan: "3046e18d2abeea71e3299b584dd69c01433d9c7e9921a627166e4990188ccc7f"
		sha256 cellar: :any, x86_64_linux: "1bd2d7561de87635334a8de0606574c1ace512d55b60362da3e961600dfee975"
	end

	on_macos do
		if Hardware::CPU.arm?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-arm64/-/cli-single-executable-application-darwin-arm64-0.4.63.tgz"
			sha256 "4c25a410cc77081c9530e376f4a3ab7af8784c7652bb56b419b6ffcf3e4d3818"

			def install
				bin.install "tunnel"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-darwin-x64/-/cli-single-executable-application-darwin-x64-0.4.63.tgz"
			sha256 "d3aa655122b15ae1d136c6b065fde7f09b6a0293567bce40749b33d3e03f4c06"

			def install
				bin.install "tunnel"
			end
		end
	end

	on_linux do
		if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-arm64/-/cli-single-executable-application-linux-arm64-0.4.63.tgz"
			sha256 "ee3ab93cfd3a8d87fb973de6affbcdcfa09465dac88a34ce27f760696205237d"

			def install
				bin.install "leaf"
			end
		end
		if Hardware::CPU.intel?
			url "https://registry.npmjs.org/@tunnel/cli-single-executable-application-linux-x64/-/cli-single-executable-application-linux-x64-0.4.63.tgz"
			sha256 "8cc32506a868fd8f856bdc8c76659cf92f4724b8564c213e74f71e66be915185"

			def install
				bin.install "leaf"
			end
		end
	end
end