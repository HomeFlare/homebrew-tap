class Homeflare < Formula
  desc "The HomeFlare Project CLI - encrypted secret vault and more"
  homepage "https://github.com/HomeFlare"
  url "https://registry.npmjs.org/@homeflare/hfs/-/hfs-0.28.0.tgz"
  sha256 "676000fdec7cfa9159cbf36378992fc08899e37c36a7603854eef3aa55ec8bde"
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
