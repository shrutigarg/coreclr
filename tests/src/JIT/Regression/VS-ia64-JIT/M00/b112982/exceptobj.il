// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly excepobj
{
}
//	This test ensures that valid exception object is on the stack in the filter

.namespace DD
{
  .class auto ansi ZZ
  {
    .method public static int32  Main(class [mscorlib]System.String[] args) il managed
    {
      .entrypoint
      .maxstack  2
      .locals (int32 V_0)

      			ldc.i4.1
      			stloc.0
      			
      try_begin_1:
      			ldstr      "message"
      			newobj     instance void [mscorlib]System.Exception::.ctor(class [mscorlib]System.String)
      			throw

	  filter_begin_1:
                ldstr      "in filter. Exception.Message = "
	  			call       void [mscorlib]System.Console::Write(class [mscorlib]System.String)
	  			callvirt   instance class [mscorlib]System.String [mscorlib]System.Object::ToString()
	  			call       void [mscorlib]System.Console::WriteLine(class [mscorlib]System.String)
      			ldc.i4.1
	  			endfilter

      handler_begin_1:
      			pop
                ldstr      "in except block."
	  			call       void [mscorlib]System.Console::WriteLine(class [mscorlib]System.String)
      			ldc.i4 100
      			stloc.0
      			leave.s    handler_end_1

      handler_end_1:
                ldstr      "test passed."
	  			call       void [mscorlib]System.Console::WriteLine(class [mscorlib]System.String)
      			ldloc.0
      			ret

      .try try_begin_1 to filter_begin_1 filter filter_begin_1 handler handler_begin_1 to handler_end_1
    } // end of method 'ZZ::Main'

    .method public specialname rtspecialname instance void .ctor() il managed
    {
      // Code size       7 (0x7)
      .maxstack  8

      			ldarg.0
      			call       instance void [mscorlib]System.Object::.ctor()
      			ret
    } // end of method 'ZZ::.ctor'

  } // end of class 'ZZ'

} // end of namespace 'DD'

//*********** DISASSEMBLY COMPLETE ***********************
