class Sublercli < Formula
  desc "Tool for adding chapter marks and subtitles to m4a files"
  homepage "https://bitbucket.org/galad87/sublercli"
  head "https://bitbucket.org/galad87/sublercli.git"

  depends_on :xcode => ["9.0", :build]

  def install
    xcodebuild "-project", "SublerCLI.xcodeproj",
               "-target", "SublerCLI",
               "-configuration", "Release",
               "SYMROOT=build"
    bin.install "build/Release/SublerCLI"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/SublerCLI -h")
  end
end
