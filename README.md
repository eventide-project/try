# try

Attempt an execution, and determine its success

## Examples

### Any Error

``` ruby
success = Try.() { }

puts success
# => true

success = Try.() { fail }

puts success
# => false
```

### Specific Error

``` ruby
SomeError = Class.new(RuntimeError)

success = Try.(SomeError) { }

puts success
# => true

Try.(SomeError) { raise RuntimeError }
# => RuntimeError

success = Try.(SomeError) { raise SomeError }

puts success
# => false
```

### List of Specific Errors

``` ruby
SomeError = Class.new(RuntimeError)
SomeOtherError = Class.new(RuntimeError)

success = Try.(SomeError, SomeOtherError) { }

puts success
# => true

Try.(SomeError, SomeOtherError) { raise RuntimeError }
# => RuntimeError

success = Try.(SomeError, SomeOtherError) { raise SomeOtherError }

puts success
# => false
```

## License

The `try` library is released under the [MIT License](https://github.com/eventide-project/try/blob/master/MIT-License.txt).
