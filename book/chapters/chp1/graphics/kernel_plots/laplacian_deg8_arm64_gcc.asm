kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*):
 adrp	x2, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata.cst16
 add	x12, x3, #0x30
 fmov	d2, #1.000000000000000000e+00
 mov	x11, x1
 adrp	x1, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata.cst16+0x20
 ptrue	p1.b
 ldr	q1, [x2]
    R_AARCH64_LDST128_ABS_LO12_NC .rodata.cst16
 mov	x2, x3
 adrp	x3, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata.cst16+0x10
 adrp	x5, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata+0x470e0
 adrp	x4, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata+0x8c050
 ld3	{v16.2d-v18.2d}, [x2]
 mov	x2, x0
 adrp	x0, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata.cst16+0x30
 adrp	x8, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata+0x6b0
 adrp	x9, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata
 add	x7, x11, #0x20
 add	x5, x5, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata+0x470e0
 ldr	q7, [x3]
    R_AARCH64_LDST128_ABS_LO12_NC .rodata.cst16+0x10
 adrp	x3, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata+0x2170
 add	x4, x4, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata+0x8c050
 add	x3, x3, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata+0x2170
 add	x8, x8, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata+0x6b0
 ldr	q3, [x1]
    R_AARCH64_LDST128_ABS_LO12_NC .rodata.cst16+0x20
 add	x10, x3, #0x44, lsl #12
 add	x9, x9, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata
 add	x10, x10, #0xf70
 cntd	x6
 ldr	q0, [x0]
    R_AARCH64_LDST128_ABS_LO12_NC .rodata.cst16+0x30
 mov	w1, #0xa5                  	// #165
 whilelo	p2.d, wzr, w1
 ldp	q24, q23, [x11]
 mov	v20.16b, v16.16b
 mov	v21.16b, v17.16b
 mov	v22.16b, v18.16b
 ld3	{v16.2d-v18.2d}, [x12]
 fmul	v27.2d, v21.2d, v3.2d
 fmul	v4.2d, v22.2d, v3.2d
 fmul	v3.2d, v20.2d, v3.2d
 faddp	d27, v27.2d
 faddp	d4, v4.2d
 faddp	d3, v3.2d
 and	v19.16b, v1.16b, v17.16b
 and	v25.16b, v1.16b, v18.16b
 and	v6.16b, v0.16b, v18.16b
 and	v5.16b, v0.16b, v17.16b
 and	v0.16b, v0.16b, v16.16b
 and	v1.16b, v1.16b, v16.16b
 fmla	v19.2d, v21.2d, v7.2d
 mov	v17.16b, v5.16b
 fmla	v25.2d, v22.2d, v7.2d
 fmla	v6.2d, v22.2d, v7.2d
 faddp	d19, v19.2d
 fmla	v17.2d, v21.2d, v7.2d
 faddp	d25, v25.2d
 fmla	v0.2d, v20.2d, v7.2d
 fmul	d5, d4, d19
 fmul	d28, d3, d19
 faddp	d18, v6.2d
 fmla	v1.2d, v20.2d, v7.2d
 fmsub	d7, d27, d25, d5
 faddp	d17, v17.2d
 fmul	d16, d18, d19
 faddp	d0, v0.2d
 fmul	d20, d3, d18
 fmul	d6, d4, d17
 fnmsub	d16, d25, d17, d16
 faddp	d1, v1.2d
 fmul	d22, d7, d0
 fnmsub	d20, d0, d4, d20
 fmul	d21, d0, d25
 fnmsub	d6, d27, d18, d6
 fmul	d26, d0, d27
 fmadd	d22, d16, d3, d22
 fmul	d5, d1, d4
 fmul	d4, d1, d17
 fnmsub	d21, d1, d18, d21
 fnmsub	d17, d3, d17, d26
 fnmsub	d18, d1, d27, d28
 fmadd	d22, d6, d1, d22
 fnmsub	d19, d0, d19, d4
 fnmsub	d5, d3, d25, d5
 fdiv	d0, d2, d22
 fabs	d22, d22
 fmul	d16, d16, d0
 fmul	d7, d7, d0
 fmul	d6, d6, d0
 fmul	d21, d21, d0
 fmul	d20, d20, d0
 fmul	d5, d5, d0
 fmul	d19, d19, d0
 fmul	d18, d18, d0
 fmul	d17, d17, d0
 nop
 nop
 nop
 mov	x0, #0x0                   	// #0
 mov	z2.d, #0
 mov	p0.b, p2.b
 mov	z1.d, z2.d
 mov	z3.d, z2.d
 nop
 nop
 nop
 ld1d	{z4.d}, p0/z, [x5, x0, lsl #3]
 ld1d	{z0.d}, p0/z, [x7, x0, lsl #3]
 ld1d	{z25.d}, p0/z, [x3, x0, lsl #3]
 fmla	z1.d, p0/m, z4.d, z0.d
 fmla	z3.d, p0/m, z25.d, z0.d
 ld1d	{z4.d}, p0/z, [x4, x0, lsl #3]
 add	x0, x0, x6
 fmla	z2.d, p0/m, z4.d, z0.d
 whilelo	p0.d, w0, w1
 b.ne	1a0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x1a0>  // b.any
 faddv	d1, p1, z1.d
 fmul	d4, d5, d1
 ldp	q28, q25, [x8]
 faddv	d3, p1, z3.d
 fmul	d27, d7, d1
 fmul	d0, d18, d1
 faddv	d2, p1, z2.d
 ldr	d26, [x9]
 mov	x0, #0x0                   	// #0
 mov	p0.b, p2.b
 fmadd	d1, d21, d3, d4
 fmadd	d27, d16, d3, d27
 fmadd	d0, d19, d3, d0
 fmul	d26, d22, d26
 fmadd	d1, d20, d2, d1
 fmul	v4.2d, v23.2d, v25.2d
 fmadd	d0, d17, d2, d0
 fmadd	d27, d6, d2, d27
 mov	v2.16b, v4.16b
 fmla	v2.2d, v24.2d, v28.2d
 fmul	d3, d21, d1
 fmul	d25, d5, d1
 fmul	d4, d20, d1
 fmadd	d3, d16, d27, d3
 fmadd	d25, d7, d27, d25
 fmadd	d4, d6, d27, d4
 fmadd	d3, d19, d0, d3
 faddp	d1, v2.2d
 fmadd	d25, d18, d0, d25
 fmadd	d4, d17, d0, d4
 fmul	d0, d26, d1
 fmul	d25, d25, d0
 fmul	d4, d4, d0
 mov	z25.d, d25
 fmul	d3, d3, d0
 mov	z4.d, d4
 mov	z3.d, d3
 nop
 ld1d	{z1.d}, p0/z, [x5, x0, lsl #3]
 fmul	z1.d, z25.d, z1.d
 ld1d	{z0.d}, p0/z, [x3, x0, lsl #3]
 ld1d	{z2.d}, p0/z, [x2, x0, lsl #3]
 fmad	z0.d, p1/m, z3.d, z1.d
 ld1d	{z1.d}, p0/z, [x4, x0, lsl #3]
 fmad	z1.d, p1/m, z4.d, z2.d
 fadd	z0.d, z0.d, z1.d
 st1d	{z0.d}, p0, [x2, x0, lsl #3]
 add	x0, x0, x6
 whilelo	p0.d, w0, w1
 b.ne	260 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x260>  // b.any
 add	x3, x3, #0x528
 add	x5, x5, #0x528
 add	x4, x4, #0x528
 add	x8, x8, #0x20
 add	x9, x9, #0x8
 cmp	x3, x10
 b.ne	180 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x180>  // b.any
 ret