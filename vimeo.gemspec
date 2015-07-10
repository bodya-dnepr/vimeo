# -*- encoding: utf-8 -*-
# stub: vimeo 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "vimeo"
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Matt Hooks"]
  s.date = "2015-07-09"
  s.description = "A full featured Ruby implementation of the Vimeo API."
  s.email = "matthooks@gmail.com"
  s.files = [".gitignore", ".rspec", ".travis.yml", "CHANGELOG.rdoc", "Gemfile", "LICENSE", "README.markdown", "Rakefile", "VERSION.yml", "docs/authentication.md", "docs/upload.md", "docs/usage.md", "lib/vimeo.rb", "lib/vimeo/base.rb", "lib/vimeo/client.rb", "lib/vimeo/collection.rb", "lib/vimeo/endpoints/categories.rb", "lib/vimeo/endpoints/channels.rb", "lib/vimeo/endpoints/groups.rb", "lib/vimeo/endpoints/me.rb", "lib/vimeo/endpoints/tags.rb", "lib/vimeo/endpoints/users.rb", "lib/vimeo/endpoints/videos.rb", "lib/vimeo/entities/category.rb", "lib/vimeo/entities/channel.rb", "lib/vimeo/entities/group.rb", "lib/vimeo/entities/me.rb", "lib/vimeo/entities/ondemand.rb", "lib/vimeo/entities/tag.rb", "lib/vimeo/entities/user.rb", "lib/vimeo/entities/video.rb", "lib/vimeo/error.rb", "lib/vimeo/headers.rb", "lib/vimeo/helpers.rb", "lib/vimeo/request.rb", "lib/vimeo/response.rb", "lib/vimeo/upload.rb", "lib/vimeo/version.rb", "spec/spec_helper.rb", "spec/support/shared_examples.rb", "spec/support/vcr.rb", "spec/vimeo/client_spec.rb", "spec/vimeo/collection_spec.rb", "spec/vimeo/endpoints/categories_spec.rb", "spec/vimeo/endpoints/channels_spec.rb", "spec/vimeo/endpoints/group_spec.rb", "spec/vimeo/endpoints/me_spec.rb", "spec/vimeo/endpoints/tags_spec.rb", "spec/vimeo/entities/category_spec.rb", "spec/vimeo/entities/channel_spec.rb", "spec/vimeo/entities/group_spec.rb", "spec/vimeo/entities/me_spec.rb", "spec/vimeo/entities/user_spec.rb", "spec/vimeo/headers_spec.rb", "spec/vimeo/request_spec.rb", "spec/vimeo/response_spec.rb", "vimeo.gemspec"]
  s.homepage = "http://github.com/matthooks/vimeo"
  s.rdoc_options = ["--main", "README.rdoc", "--inline-source", "--charset = UTF-8"]
  s.rubygems_version = "2.4.6"
  s.summary = "A full featured Ruby implementation of the Vimeo API."
  s.test_files = ["spec/spec_helper.rb", "spec/support/shared_examples.rb", "spec/support/vcr.rb", "spec/vimeo/client_spec.rb", "spec/vimeo/collection_spec.rb", "spec/vimeo/endpoints/categories_spec.rb", "spec/vimeo/endpoints/channels_spec.rb", "spec/vimeo/endpoints/group_spec.rb", "spec/vimeo/endpoints/me_spec.rb", "spec/vimeo/endpoints/tags_spec.rb", "spec/vimeo/entities/category_spec.rb", "spec/vimeo/entities/channel_spec.rb", "spec/vimeo/entities/group_spec.rb", "spec/vimeo/entities/me_spec.rb", "spec/vimeo/entities/user_spec.rb", "spec/vimeo/headers_spec.rb", "spec/vimeo/request_spec.rb", "spec/vimeo/response_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth2>, ["~> 1.0"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_runtime_dependency(%q<faraday_middleware>, ["~> 0.9.1"])
      s.add_runtime_dependency(%q<hashie>, ["~> 3.3"])
      s.add_runtime_dependency(%q<oauth>, ["~> 0.4"])
      s.add_runtime_dependency(%q<rdoc>, ["~> 4.2.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.7"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_development_dependency(%q<rspec-its>, ["~> 1.1"])
      s.add_development_dependency(%q<rspec-mocks>, ["~> 3.1"])
      s.add_development_dependency(%q<vcr>, ["~> 2.9"])
      s.add_development_dependency(%q<webmock>, ["~> 1.20"])
      s.add_development_dependency(%q<byebug>, [">= 0"])
    else
      s.add_dependency(%q<oauth2>, ["~> 1.0"])
      s.add_dependency(%q<faraday>, ["~> 0.9.0"])
      s.add_dependency(%q<faraday_middleware>, ["~> 0.9.1"])
      s.add_dependency(%q<hashie>, ["~> 3.3"])
      s.add_dependency(%q<oauth>, ["~> 0.4"])
      s.add_dependency(%q<rdoc>, ["~> 4.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.7"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<rspec-its>, ["~> 1.1"])
      s.add_dependency(%q<rspec-mocks>, ["~> 3.1"])
      s.add_dependency(%q<vcr>, ["~> 2.9"])
      s.add_dependency(%q<webmock>, ["~> 1.20"])
      s.add_dependency(%q<byebug>, [">= 0"])
    end
  else
    s.add_dependency(%q<oauth2>, ["~> 1.0"])
    s.add_dependency(%q<faraday>, ["~> 0.9.0"])
    s.add_dependency(%q<faraday_middleware>, ["~> 0.9.1"])
    s.add_dependency(%q<hashie>, ["~> 3.3"])
    s.add_dependency(%q<oauth>, ["~> 0.4"])
    s.add_dependency(%q<rdoc>, ["~> 4.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.7"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<rspec-its>, ["~> 1.1"])
    s.add_dependency(%q<rspec-mocks>, ["~> 3.1"])
    s.add_dependency(%q<vcr>, ["~> 2.9"])
    s.add_dependency(%q<webmock>, ["~> 1.20"])
    s.add_dependency(%q<byebug>, [">= 0"])
  end
end
