#!/usr/bin/env ys-0

use ys::taptest: :all

use base32: :all :as b32

test::
- code: encode("Hello")
  want: JBSWY3DP0
- code: decode("JBSWY3DP0")
  want: Hello

- code: b32/encode("Hello")
  want: JBSWY3DP0
- code: b32/decode("JBSWY3DP0")
  want: Hello

- code: base32/encode("Hello")
  want: JBSWY3DP0
- code: base32/decode("JBSWY3DP0")
  want: Hello

done:
