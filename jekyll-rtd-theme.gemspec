Gem::Specification.new do |spec|
  spec.name          = "Arikes的博客"
  spec.version       = "2.0.10"
  spec.authors       = ["saowang"]
  spec.email         = ["liang0035@163.com"]

  spec.summary       = "技术分享博客"
  spec.license       = "MIT"
  spec.homepage      = "https://github.com/rundocs/Arikes"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "github-pages", "~> 209"
end
