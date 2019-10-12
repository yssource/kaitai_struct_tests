# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/str_encodings

var
  stream = newFileStream("test_out/nim/junitreports/str_encodings.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: StrEncodings":
    let r = StrEncodings.fromFile("src/str_encodings.bin")

    check(r.str1 == "Some ASCII")
    check(r.str2 == "\u3053\u3093\u306b\u3061\u306f")
    check(r.str3 == "\u3053\u3093\u306b\u3061\u306f")
    check(r.str4 == "\u2591\u2592\u2593")

close(outputFormatter)
