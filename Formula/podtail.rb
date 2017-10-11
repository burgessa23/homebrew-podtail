class Podtail < Formula
    desc "Tool to tail Kubernetes logs from multiple pods at the same time"
    homepage "https://github.com/johnmccabe/podtail/"
    url "https://github.com/johnmccabe/podtail/releases/download/v0.1.2/podtail-darwin.tgz"
    sha256 "b82cefd4a8e1868201dd54a0edfe094ac65cb50305e01bbf78c491c1c0a9d7fd"
    version "v0.1.2"
  
    bottle :unneeded
  
    def install
      mv "podtail-darwin", "podtail"
      bin.install "podtail"
    end
  
    test do
      system "#{bin}/podtail", "--help"
    end
  end