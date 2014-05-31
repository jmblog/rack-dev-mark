require 'spec_helper'

describe Rack::DevMark::Theme::GithubForkRibbon do
  it_behaves_like "theme" do
    let :out do
      s = <<-EOS
<html><head>head<title>title</title></head><body><style>#{read_stylesheet "github-fork-ribbon-css/gh-fork-ribbon.css"}</style>
<!--[if lt IE 9]>
<style>#{read_stylesheet "github-fork-ribbon-css/gh-fork-ribbon.ie.css"}</style>
<![endif]-->
<div class="github-fork-ribbon-wrapper left"><div class="github-fork-ribbon"><a href="https://github.com/simonwhitaker/github-fork-ribbon-css" class="github-fork-ribbon-text" target="_blank">env</a></div></div>body</body></html>
      EOS
      s.strip
    end

    subject { Rack::DevMark::Theme::GithubForkRibbon.new }
  end
end