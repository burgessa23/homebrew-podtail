class Podtail < Formula
    desc "Tool to tail Kubernetes logs from multiple pods at the same time"
    homepage "https://github.com/johnmccabe/podtail/"
    url "https://github.com/johnmccabe/podtail/releases/download/v0.1.3/podtail-darwin.tgz"
    sha256 "fbc08ffbb9834142b77a6e310a2908eae338b8b9604084c0032143292cae89d3"
    version "v0.1.3"
  
    bottle :unneeded
  
    def install
      mv "podtail-darwin", "podtail"
      bin.install "podtail"
    end
  
    test do
      system "#{bin}/podtail", "--help"
    end
  end