# buildbot [![Build Status](https://travis-ci.org/edhurtig/buildbot-cookbook.svg)](https://travis-ci.org/edhurtig/buildbot-cookbook)

TODO: Enter the cookbook description here.

# Requirements

* `apt` cookbook
* `some` cookbook
* `another` cookbook


# Recipes

## default

Short Description

1. Set up & updates apt using `apt::default`
2. Install xyz by some proccess
3. Include various recipes for this cookbook:
    * `buildbot::install`
        - which includes `buildbot::another`
    * `buildbot::configure`

## install

More info about the install recipe

# Usage

Include this recipe in a wrapper cookbook:

```
depends 'buildbot', '~> 1.0'
```

```
include_recipe 'buildbot::default'
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests with `kitchen test`, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Author:: Eddie Hurtig (eddie@hurtigtechnologies.com)
