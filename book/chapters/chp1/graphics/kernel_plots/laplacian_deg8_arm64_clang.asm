kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*):
 sub	sp, sp, #0x50
 stp	d15, d14, [sp, #16]
 stp	d13, d12, [sp, #32]
 stp	d11, d10, [sp, #48]
 stp	d9, d8, [sp, #64]
 ldp	d1, d0, [x3]
 ldp	d2, d3, [x3, #32]
 ldp	d4, d5, [x3, #16]
 rdvl	x18, #1
 mov	w11, #0xfc                  	// #252
 add	x9, x1, #0x20
 adrp	x13, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata+0x8a590
 add	x13, x13, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata+0x8a590
 ldp	d28, d29, [x1, #16]
 adrp	x15, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata+0x45620
 add	x15, x15, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata+0x45620
 mov	z30.d, #0
 fsub	d16, d5, d1
 fsub	d18, d2, d0
 fsub	d5, d3, d4
 ldp	d3, d2, [x3, #48]
 fsub	d17, d2, d0
 ldp	d2, d6, [x3, #64]
 fsub	d21, d6, d1
 lsr	x10, x18, #4
 mul	x10, x10, x11
 mov	w11, #0xa4                  	// #164
 and	x10, x10, x11
 mov	w11, #0xa5                  	// #165
 whilelo	p0.d, xzr, x11
 ptrue	p1.d
 adrp	x17, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata+0x6b0
 add	x17, x17, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata+0x6b0
 cntw	x2
 cntd	x5
 mov	x8, xzr
 add	x12, x9, x18
 add	x14, x13, x18
 add	x16, x15, x18
 add	x18, x17, x18
 adrp	x4, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata
 add	x4, x4, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata
 fmul	d6, d5, d21
 fsub	d7, d2, d4
 fsub	d19, d3, d1
 ldp	d2, d3, [x3, #80]
 fsub	d4, d3, d4
 fmul	d3, d17, d5
 adrp	x3, 0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)>
    R_AARCH64_ADR_PREL_PG_HI21 .rodata+0xcf500
 add	x3, x3, #0x0
    R_AARCH64_ADD_ABS_LO12_NC .rodata+0xcf500
 fmul	d1, d4, d18
 fnmsub	d3, d7, d18, d3
 fsub	d20, d2, d0
 fmul	d0, d20, d7
 fnmsub	d1, d20, d5, d1
 fnmsub	d0, d17, d4, d0
 fmul	d2, d1, d19
 fmadd	d2, d0, d16, d2
 fmadd	d22, d3, d21, d2
 fmov	d2, #1.000000000000000000e+00
 fdiv	d23, d2, d22
 fabs	d25, d22
 fmul	d26, d3, d23
 fmul	d3, d4, d19
 fnmsub	d4, d4, d16, d6
 fmul	d6, d7, d16
 fmul	d0, d0, d23
 fmul	d24, d1, d23
 fnmsub	d3, d7, d21, d3
 fmul	d7, d20, d16
 fnmsub	d5, d5, d19, d6
 fmul	d6, d17, d21
 fnmsub	d7, d18, d21, d7
 fmul	d18, d18, d19
 fnmsub	d6, d20, d19, d6
 fmul	d21, d24, d25
 fmul	d2, d3, d23
 fmul	d3, d4, d23
 fmul	d27, d5, d23
 fnmsub	d16, d17, d16, d18
 fmul	d18, d0, d25
 fmul	d1, d6, d23
 fmul	d5, d7, d23
 fmov	d4, d2
 fmul	d19, d2, d25
 fmov	d2, d24
 fmul	d22, d3, d25
 fmov	d6, d27
 fmul	d24, d27, d25
 fmul	d16, d16, d23
 fmov	d7, d1
 fmul	d1, d1, d25
 fmov	d17, d5
 fmul	d20, d5, d25
 fmov	d5, d3
 fmov	d3, d26
 fmul	d23, d16, d25
 fmul	d25, d26, d25
 ldp	d26, d27, [x1]
 str	d1, [sp, #8]
 fmov	d1, d0
 lsl	x1, x10, #3
 nop
 nop
 mov	z31.d, z30.d
 mov	z12.d, z30.d
 mov	x6, xzr
 mov	z8.d, z30.d
 mov	z11.d, z30.d
 mov	z9.d, z30.d
 mov	z10.d, z30.d
 nop
 ld1d	{z13.d}, p1/z, [x9, x6, lsl #3]
 ld1d	{z14.d}, p1/z, [x12, x6, lsl #3]
 ld1d	{z15.d}, p1/z, [x13, x6, lsl #3]
 fmla	z31.d, p1/m, z15.d, z13.d
 ld1d	{z0.d}, p1/z, [x14, x6, lsl #3]
 fmla	z12.d, p1/m, z0.d, z14.d
 ld1d	{z0.d}, p1/z, [x15, x6, lsl #3]
 ld1d	{z15.d}, p1/z, [x16, x6, lsl #3]
 fmla	z8.d, p1/m, z0.d, z13.d
 fmla	z11.d, p1/m, z15.d, z14.d
 ld1d	{z0.d}, p1/z, [x17, x6, lsl #3]
 ld1d	{z15.d}, p1/z, [x18, x6, lsl #3]
 add	x6, x6, x2
 cmp	x10, x6
 fmla	z9.d, p1/m, z0.d, z13.d
 fmla	z10.d, p1/m, z15.d, z14.d
 b.ne	1c0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x1c0>  // b.any
 fadd	z0.d, z12.d, z31.d
 mov	x6, x1
 faddv	d31, p1, z0.d
 fadd	z0.d, z11.d, z8.d
 faddv	d8, p1, z0.d
 fadd	z0.d, z10.d, z9.d
 faddv	d9, p1, z0.d
 ldr	d0, [x9, x6]
 ldr	d10, [x13, x6]
 fmadd	d31, d10, d0, d31
 ldr	d10, [x15, x6]
 fmadd	d8, d10, d0, d8
 ldr	d10, [x17, x6]
 add	x6, x6, #0x8
 cmp	x6, #0x528
 fmadd	d9, d10, d0, d9
 b.ne	220 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x220>  // b.any
 add	x7, x3, x8, lsl #5
 fmul	d0, d9, d3
 fmul	d10, d9, d6
 fmul	d9, d9, d16
 mov	x6, xzr
 mov	p2.b, p0.b
 ldp	d13, d12, [x7]
 fmadd	d0, d8, d2, d0
 fmadd	d10, d8, d5, d10
 fmadd	d8, d8, d17, d9
 ldp	d11, d9, [x7, #16]
 fmadd	d10, d31, d4, d10
 fmadd	d0, d31, d1, d0
 fmadd	d31, d31, d7, d8
 fmul	d13, d13, d26
 fmadd	d12, d12, d27, d13
 fmul	d8, d10, d24
 fmadd	d8, d0, d25, d8
 fmadd	d11, d11, d28, d12
 fmadd	d8, d31, d23, d8
 fmadd	d9, d9, d29, d11
 ldr	d11, [x4, x8, lsl #3]
 fmul	d9, d9, d11
 fmul	d11, d8, d9
 fmul	d8, d0, d21
 fmul	d0, d0, d18
 fmadd	d8, d10, d22, d8
 fmadd	d0, d10, d19, d0
 ldr	d10, [sp, #8]
 fmadd	d8, d31, d20, d8
 fmadd	d0, d31, d10, d0
 fmul	d8, d8, d9
 fmul	d0, d0, d9
 mov	z9.d, d11
 mov	z8.d, d8
 mov	z31.d, d0
 nop
 nop
 ld1d	{z0.d}, p2/z, [x13, x6, lsl #3]
 ld1d	{z10.d}, p2/z, [x0, x6, lsl #3]
 fmad	z0.d, p1/m, z31.d, z10.d
 ld1d	{z10.d}, p2/z, [x15, x6, lsl #3]
 fmla	z0.d, p1/m, z8.d, z10.d
 ld1d	{z10.d}, p2/z, [x17, x6, lsl #3]
 fmla	z0.d, p1/m, z9.d, z10.d
 st1d	{z0.d}, p2, [x0, x6, lsl #3]
 add	x6, x6, x5
 whilelo	p2.d, x6, x11
 b.mi	2e0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x2e0>  // b.first
 add	x8, x8, #0x1
 add	x13, x13, #0x528
 add	x14, x14, #0x528
 add	x15, x15, #0x528
 add	x16, x16, #0x528
 add	x17, x17, #0x528
 add	x18, x18, #0x528
 cmp	x8, #0xd6
 b.ne	1a0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x1a0>  // b.any
 ldp	d9, d8, [sp, #64]
 ldp	d11, d10, [sp, #48]
 ldp	d13, d12, [sp, #32]
 ldp	d15, d14, [sp, #16]
 add	sp, sp, #0x50
 ret