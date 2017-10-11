class Podtail < Formula
    desc "Tool to tail Kubernetes logs from multiple pods at the same time"
    homepage "https://github.com/johnmccabe/podtail/"
    url "https://github.com/johnmccabe/podtail/releases/download/v0.1.1/podtail-darwin.tgz"
    sha256 "854214d7a4f18640eadb7821645940c3c7138b3539433db57ea6a37623a54418"
    version "v0.1.1"
  
    bottle :unneeded
  
    def install
      mv "podtail-darwin", "podtail"
      bin.install "podtail"
    end
  
    test do
      system "#{bin}/podtail", "--help"
    end
  end