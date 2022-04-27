class Podtail < Formula
    desc "Tool to tail Kubernetes logs from multiple pods at the same time"
    homepage "https://github.com/johnmccabe/podtail/"
    url "https://github.com/johnmccabe/podtail/releases/download/v0.1.4/podtail-darwin.tgz"
    sha256 "239efefc152cc16871ef9f9e0d0601fe86380d0bc2bff4bfe15dea97615334c0"
    version "v0.1.4"
  
  
    def install
      mv "podtail-darwin", "podtail"
      bin.install "podtail"
    end
  
    test do
      system "#{bin}/podtail", "--help"
    end
  end
