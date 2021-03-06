{-# LANGUAGE OverloadedStrings #-}

module Text.MMark.Extension.GhcSyntaxHighlighterSpec (spec) where

import Test.Hspec
import Text.MMark.Extension.GhcSyntaxHighlighter
import Text.MMark.Extension.TestUtils

spec :: Spec
spec =
  describe "ghcSyntaxHighlighter" $ do
    let to = withExt ghcSyntaxHighlighter
    context "with info string is \"haskell\"" $
      it "renders it correctly" $
        "```haskell\nmain :: IO ()\nmain = return ()\n```\n"
          `to` "<div class=\"source-code\"><pre><code class=\"language-haskell\"><span class=\"va\">main</span><span> </span><span class=\"sy\">::</span><span> </span><span class=\"cr\">IO</span><span> </span><span class=\"sy\">(</span><span class=\"sy\">)</span><span>\n</span><span class=\"va\">main</span><span> </span><span class=\"sy\">=</span><span> </span><span class=\"va\">return</span><span> </span><span class=\"sy\">(</span><span class=\"sy\">)</span><span>\n</span></code></pre></div>\n"
