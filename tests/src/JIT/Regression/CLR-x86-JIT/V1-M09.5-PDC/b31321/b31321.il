// Copyright (c) Microsoft. All rights reserved.
// Licensed under the MIT license. See LICENSE file in the project root for full license information.

.assembly extern legacy library mscorlib {}
.assembly ILGEN_0x3e7ab88c {}
.class ILGEN_0x3e7ab88c {

.method static int32 Method_0x32f7(int64 Arg_0x1) {
.maxstack	15

 .locals (unsigned int64 local_0x3)

 ldc.i4.5
 newarr [mscorlib]System.Double
 ldarg Arg_0x1
 conv.ovf.u4
 ldelem.r8
Start_Orphan_3:
 ldarg Arg_0x1
 stloc local_0x3
End_Orphan_3:
 conv.i4
ret
}
.method static int32 Main() {
.entrypoint
.maxstack	20
.try {
ldc.i8 0x18ce73c5096f92 
call int32 ILGEN_0x3e7ab88c::Method_0x32f7(int64 Arg_0x1)
 pop
 leave the_end
 } catch [mscorlib]System.OverflowException {
 pop
 leave the_end
 }
 the_end:
 ldc.i4 100
ret
}

}

