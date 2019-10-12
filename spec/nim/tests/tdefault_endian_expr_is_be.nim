# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest, os, streams, options, ../testhelpers
import ../../../compiled/nim/default_endian_expr_is_be

var
  stream = newFileStream("test_out/nim/junitreports/default_endian_expr_is_be.xml", fmWrite)
  outputFormatter = newJUnitOutputFormatter(stream)
addOutputFormatter(outputFormatter)

suite "Kaitai Struct Compiler Test Suite":
  test "Nim: DefaultEndianExprIsBe":
    let r = DefaultEndianExprIsBe.fromFile("src/endian_expr.bin")

    check(r.docs[0].indicator == @[73, 73])
    check(r.docs[0].main.someInt == 66)
    check(r.docs[0].main.someIntBe == 66)
    check(r.docs[0].main.someIntLe == 66)
    check(r.docs[0].main.instInt == 66)
    check(r.docs[0].main.instSub.foo == 66)
    check(r.docs[1].indicator == @[77, 77])
    check(r.docs[1].main.someInt == 66)
    check(r.docs[1].main.someIntBe == 66)
    check(r.docs[1].main.someIntLe == 66)
    check(r.docs[1].main.instInt == 1107296256)
    check(r.docs[1].main.instSub.foo == 1107296256)
    check(r.docs[2].indicator == @[88, 88])
    check(r.docs[2].main.someInt == 1107296256)
    check(r.docs[2].main.someIntBe == 66)
    check(r.docs[2].main.someIntLe == 66)
    check(r.docs[2].main.instInt == 66)
    check(r.docs[2].main.instSub.foo == 66)

close(outputFormatter)
