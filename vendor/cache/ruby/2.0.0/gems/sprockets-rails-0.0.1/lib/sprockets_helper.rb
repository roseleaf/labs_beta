module SprocketsHelper
  def sprockets_include_tag(name = nil)
    if name
      javascript_include_tag("/sprockets/#{ name.to_s }.js")
    else
      javascript_include_tag("/sprockets.js")
    end
  end
end
