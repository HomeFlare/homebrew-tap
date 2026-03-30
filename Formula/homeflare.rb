class Homeflare < Formula
  desc "The HomeFlare Project CLI - encrypted secret vault and more"
  homepage "https://github.com/HomeFlare"
  url "https://registry.npmjs.org/@homeflare/hfs/-/hfs-0.26.0.tgz"
  sha256 "6e60b3fd30f8c3ea428b42c7bcb8bff156190b24658adf1d4c668edb79c1603b"
  license "Apache-2.0"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/homeflare --version")
  end
end
