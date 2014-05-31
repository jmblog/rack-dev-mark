# Thanks to https://github.com/simonwhitaker/github-fork-ribbon-css
require 'rack/dev-mark/theme/base'

module Rack
  module DevMark
    module Theme
      class GithubForkRibbon < Base
        def insert_into(html, env)
          s = <<-EOS
#{stylesheet_link_tag "github-fork-ribbon-css/gh-fork-ribbon.css"}
<!--[if lt IE 9]>
#{stylesheet_link_tag "github-fork-ribbon-css/gh-fork-ribbon.ie.css"}
<![endif]-->
<div class="github-fork-ribbon-wrapper left"><div class="github-fork-ribbon"><a href="https://github.com/simonwhitaker/github-fork-ribbon-css" class="github-fork-ribbon-text" target="_blank">#{env}</a></div></div>
          EOS
          html.sub %r{(<body[^>]*>)}i, "\\1#{s.strip}"
        end
      end
    end
  end
end