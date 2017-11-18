# Gpp::Decrypt

gpp-decrypt

This tool was released by Chris Gates on Friday, October 19, 2012. Gemification by kost.

From Chris:

Group Policy Preferences and Getting Your Domain 0wned So i put this link out on twitter but forgot to put it on the blog.

I did a talk at the Oct 20012 NovaHackers meeting on exploiting 2008 Group Policy Preferences (GPP) and how they can be used to set local users and passwords via group policy.

I've run into this on a few tests where people are taking advantage of this exteremely handy feature to set passwords across the whole domain, and then allowing users or attackers the ability to decrypt these passwords and subsequently 0wning everything :-)

So here are the slides: Exploiting Group Policy Preferences from chrisgates

Blog post explaining the issue in detail: http://esec-pentest.sogeti.com/exploiting-windows-2008-group-policy-preferences

Metasploit post module: http://metasploit.com/modules/post/windows/gather/credentials/gpp

PowerShell module to do it: http://obscuresecurity.blogspot.com/2012/05/gpp-password-retrieval-with-powershell.html

I ended up writing some ruby to do it (the blog post has some python) because the metasploit module was downloading the xml file to loot but taking a poop prior to getting to the decode part. now you can do it yourself: In Action:

user@ubuntu:~$ ruby gpp-decrypt-string.rb Local*P4ssword!



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gpp-decrypt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gpp-decrypt

## Usage

Just add gpp encrypted password as argument:

```
gpp-decrypt j1Uyj3Vx8TY9LtLZil2uAuZkFQA/4latT76ZwgdHdhw
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kost/gpp-decrypt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

