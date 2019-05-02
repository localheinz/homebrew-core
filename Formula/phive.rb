class Phive < Formula
  desc "The Phar Installation and Verification Environment (PHIVE)"
  homepage "https://phar.io"
  url "https://github.com/phar-io/phive/releases/download/0.14.4/phive-0.14.4.phar"
  sha256 "b6f95e2791a17531f6ba652ce6e4288f35fb73883c472af1d3758f148fc4ed3a"
  license "BSD"

  def install
    bin.install "phive-#{version}.phar" => "phive"
  end

  test do
    assert_match /PHARs configured in phive.xml/, shell_output("#{bin}/phive status")
  end
end
