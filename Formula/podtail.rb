class Podtail < Formula
    desc "Tool to tail Kubernetes logs from multiple pods at the same time"
    homepage "https://github.com/johnmccabe/podtail/"
    url "https://github.com/johnmccabe/podtail/releases/download/v0.1.0/podtail-darwin.tgz"
    sha256 "7bd5384fb822895a91be729b4b37da133c1c6ae92d3253dc8ca46901fe894f10"
    version "v0.1.0"
  
    bottle :unneeded
  
    def install
      bin.install "podtail"
    end
  
    test do
      system "#{bin}/podtail", "--help"
    end
  end