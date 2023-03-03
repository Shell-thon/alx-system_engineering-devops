# 0x06. Regular expression

## Concepts
For this project, we expect you to look at this concept:

**Regular Expression**

## Background Context
For this project, you have to build your regular expression using Oniguruma, a regular expression library that which is used by Ruby by default. Note that other regular expression libraries sometimes have different properties.

Because the focus of this exercise is to play with regular expressions (regex), here is the Ruby code that you should use, just replace the regexp part, meaning the code in between the //:

```
sylvain@ubuntu$ cat example.rb
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
sylvain@ubuntu$
sylvain@ubuntu$ ./example.rb 127.0.0.2
127.0.0.2
sylvain@ubuntu$ ./example.rb 127.0.0.1
127.0.0.1
sylvain@ubuntu$ ./example.rb 127.0.0.a
```

## Resources
* Read or watch:
* [Regular expressions - basics](https://intranet.hbtn.io/concepts/29)
* [Regular expressions - advanced](https://intranet.hbtn.io/concepts/49)
* [Rubular is your best friend](https://intranet.hbtn.io/concepts/88)
* [Use a regular expression against a problem: now you have 2 problems](https://intranet.hbtn.io/concepts/90)
* [Learn Regular Expressions with simple, interactive exercises](https://intranet.hbtn.io/concepts/157)

## Requirements

### General
* Allowed editors: `vi`, `vim`, `emacs`
* All your files will be interpreted on Ubuntu 20.04 LTS
* All your files should end with a new line
* A `README.md` file, at the root of the folder of the project, is mandatory
* All your Bash script files must be executable
* The first line of all your Bash scripts should be exactly `#!/usr/bin/env ruby`
* All your regex must be built for the Oniguruma library

* **AUTHOR** - [Shell-thon](https://github.com/Shell-thon)