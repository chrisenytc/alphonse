# ![Alphonse](https://raw.githubusercontent.com/chrisenytc/alphonse/master/logo.png)

> A module wrapper to encrypt and decrypt files with aes-128-cbc

[![Build Status](https://travis-ci.org/chrisenytc/alphonse.svg?branch=master)](https://travis-ci.org/chrisenytc/alphonse) [![Hex pm](http://img.shields.io/hexpm/v/alphonse.svg?style=flat)](https://hex.pm/packages/alphonse) [![hex.pm downloads](https://img.shields.io/hexpm/dt/alphonse.svg?style=flat)](https://hex.pm/packages/alphonse)

## Getting Started

Add alphonse to the dependencies

```elixir
{:alphonse, "~> 0.1.0"}
```

## Documentation

#### .encrypt(source, key, iv, output)

**Parameter**: `source`
**Type**: `String`
**Example**: `data.txt`

**Parameter**: `key`
**Type**: `String`
**Example**: `testiekeyphraseforcipher`

**Parameter**: `iv`
**Type**: `String`
**Example**: `testieivphraseforcipher`

**Parameter**: `output`
**Type**: `String`
**Example**: `encrypted_data.txt`

The 'encrypt' method is responsible for encrypt a file

How to use this method

```elixir
{:ok, encrypted_data} = Alphonse.encrypt "data.txt", "testiekeyphraseforcipher", "testieivphraseforcipher", "encrypted_data.txt"
```

#### .decrypt(encrypted_source, key, iv, output)

**Parameter**: `encrypted_source`
**Type**: `String`
**Example**: `encrypted_data.txt`

**Parameter**: `key`
**Type**: `String`
**Example**: `testiekeyphraseforcipher`

**Parameter**: `iv`
**Type**: `String`
**Example**: `testieivphraseforcipher`

**Parameter**: `output`
**Type**: `String`
**Example**: `decrypted_data.txt`

The 'decrypt' method is responsible for decrypt a file

How to use this method

```elixir
{:ok, decrypted_data} = Alphonse.decrypt "encrypted_data.txt", "testiekeyphraseforcipher", "testieivphraseforcipher", "decrypted_data.txt"
```

### How to Build

```bash
$ mix compile
```

### Run Tests

```bash
$ mix test
```

## Contributing

Please submit all issues and pull requests to the [chrisenytc/alphonse](https://github.com/chrisenytc/alphonse) repository!

## Support
If you have any problem or suggestion please open an issue [here](https://github.com/chrisenytc/alphonse/issues).

## License 

The MIT License

Copyright (c) 2015, Christopher EnyTC

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

