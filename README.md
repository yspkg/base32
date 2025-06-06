# YAMLScript Base32 Library

This library provides a YAMLScript implementation of Base32 encoding and decoding according to RFC 4648.

## Overview

Base32 is a binary-to-text encoding scheme that represents binary data using a set of 32 characters. It is commonly used when there is a need to encode binary data in a human-readable format, particularly in environments where case sensitivity is not an issue and where the encoded data needs to be easily typed or read.

## Features

* RFC 4648 compliant implementation
* Standard Base32 alphabet (A-Z, 2-7)
* Support for padding characters
* Pure YAMLScript implementation (except for string-to-bytes conversion)

## API

The library provides the following main functions:

### `encode(string)`

Encodes a string into its Base32 representation.

```yaml
use: base32
=>: encode("Hello") # Returns "JBSWY3DP"
```

### `decode(string)`

Decodes a Base32 string back to its original string representation.

```yaml
use: base32
=>: decode("JBSWY3DP") # Returns "Hello"
```

### `encode-bytes(bytes)`

Low-level function to encode a byte array into a Base32 string.

### `decode-bytes(string)`

Low-level function to decode a Base32 string into a byte array.

## Implementation Details

The implementation follows these key steps:

1. **Encoding Process**:
   - Convert input bytes to bits
   - Group bits into 5-bit chunks (Base32 uses 5 bits per character)
   - Convert each 5-bit chunk to corresponding Base32 character
   - Add padding if necessary

2. **Decoding Process**:
   - Remove padding characters
   - Convert Base32 characters to 5-bit chunks
   - Group bits into bytes (8 bits)
   - Convert bytes back to characters

The library uses the standard Base32 alphabet as defined in RFC 4648:
```
ABCDEFGHIJKLMNOPQRSTUVWXYZ234567
```

## License

Copyright 2025 Ingy dot Net  
This code is licensed under MIT license (See License for details) 
