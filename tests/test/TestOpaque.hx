package test;

class TestOpaque extends Test {
  function testOpaque() {
    #if hl
    var opaque:Native.NativeOpaque = Native.create_opaque();
    eq(opaque.get_int(), 1);
    eq(opaque.get_float(), 2.0);
    eq(opaque.get_string(), "3");
    eq(opaque.get_int_alt(3, 4), 8);
    #else
    noAssert();
    #end
  }
}
