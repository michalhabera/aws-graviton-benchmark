kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*):
 push   rbp
 mov    r11,rdi
 mov    edx,0x0
    R_X86_64_32 .rodata
 mov    edi,0x0
    R_X86_64_32 .rodata+0x1ac0
 mov    rbp,rsp
 push   r13
 mov    r13,rsi
 mov    r8d,0x0
    R_X86_64_32 .rodata+0xd0940
 vmovupd ymm2,YMMWORD PTR [rcx]
 vmovupd ymm3,YMMWORD PTR [rcx+0x20]
 and    rsp,0xffffffffffffffe0
 vmovupd ymm0,YMMWORD PTR [rcx+0x40]
 vmovapd ymm9,YMMWORD PTR [rip+0x0]        # 36 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x36>
    R_X86_64_PC32 .LC0-0x4
 mov    ecx,0x0
    R_X86_64_32 .rodata+0x8b9c0
 vmovapd ymm10,YMMWORD PTR [rip+0x0]        # 43 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x43>
    R_X86_64_PC32 .LC1-0x4
 vmovapd ymm8,YMMWORD PTR [rip+0x0]        # 4b <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x4b>
    R_X86_64_PC32 .LC2-0x4
 vpermpd ymm1,ymm2,0x2c
 vblendpd ymm6,ymm2,ymm3,0xc
 vblendpd ymm1,ymm1,ymm3,0x4
 vperm2f128 ymm4,ymm1,ymm0,0x21
 vblendpd ymm1,ymm1,ymm4,0x8
 vperm2f128 ymm4,ymm2,ymm3,0x2
 vpalignr ymm2,ymm2,ymm3,0x8
 vpermpd ymm2,ymm2,0x53
 vmulpd ymm3,ymm1,ymm9
 vinsertf128 ymm2,ymm2,xmm0,0x1
 vshufpd ymm6,ymm6,ymm4,0x5
 vpermilpd ymm4,ymm0,0x2
 vblendpd ymm0,ymm0,ymm2,0x7
 vblendpd ymm6,ymm6,ymm4,0x8
 vmulpd ymm4,ymm1,ymm10
 vmulpd ymm5,ymm0,ymm8
 vmulpd ymm1,ymm1,ymm8
 vmulpd ymm11,ymm6,ymm9
 vextractf128 xmm2,ymm3,0x1
 vaddpd xmm2,xmm2,xmm3
 vunpckhpd xmm3,xmm2,xmm2
 vaddpd xmm3,xmm3,xmm2
 vextractf128 xmm2,ymm4,0x1
 vaddpd xmm2,xmm2,xmm4
 vunpckhpd xmm4,xmm2,xmm2
 vaddpd xmm2,xmm4,xmm2
 vextractf128 xmm4,ymm5,0x1
 vaddpd xmm4,xmm4,xmm5
 vmulpd ymm5,ymm6,ymm8
 vmulpd ymm8,ymm0,ymm10
 vmulpd ymm0,ymm0,ymm9
 vunpckhpd xmm7,xmm4,xmm4
 vaddpd xmm7,xmm7,xmm4
 vextractf128 xmm4,ymm5,0x1
 vaddpd xmm4,xmm4,xmm5
 vextractf128 xmm9,ymm0,0x1
 vaddpd xmm0,xmm9,xmm0
 vmulsd xmm13,xmm3,xmm7
 vunpckhpd xmm5,xmm4,xmm4
 vaddpd xmm5,xmm5,xmm4
 vextractf128 xmm4,ymm1,0x1
 vunpckhpd xmm9,xmm0,xmm0
 vaddpd xmm1,xmm4,xmm1
 vaddpd xmm9,xmm9,xmm0
 vmulpd ymm0,ymm6,ymm10
 vunpckhpd xmm4,xmm1,xmm1
 vextractf128 xmm6,ymm0,0x1
 vaddpd xmm1,xmm4,xmm1
 vextractf128 xmm4,ymm8,0x1
 vaddpd xmm0,xmm6,xmm0
 vaddpd xmm4,xmm4,xmm8
 vunpckhpd xmm6,xmm0,xmm0
 vunpckhpd xmm8,xmm4,xmm4
 vaddpd xmm6,xmm6,xmm0
 vmovsd xmm0,QWORD PTR [rip+0x0]        # 15e <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x15e>
    R_X86_64_PC32 .LC3-0x4
 vaddpd xmm8,xmm8,xmm4
 vextractf128 xmm4,ymm11,0x1
 vaddpd xmm4,xmm4,xmm11
 vmulsd xmm10,xmm7,xmm6
 vunpckhpd xmm11,xmm4,xmm4
 vaddpd xmm4,xmm11,xmm4
 vfmsub231sd xmm10,xmm5,xmm8
 vmulsd xmm11,xmm7,xmm4
 vmulsd xmm12,xmm8,xmm4
 vfnmadd231sd xmm11,xmm5,xmm9
 vfmsub231sd xmm12,xmm9,xmm6
 vmulsd xmm15,xmm11,xmm2
 vfmadd231sd xmm15,xmm12,xmm1
 vfmadd231sd xmm15,xmm10,xmm3
 vdivsd xmm0,xmm0,xmm15
 vmulsd xmm14,xmm10,xmm0
 vmulsd xmm12,xmm12,xmm0
 vmulsd xmm11,xmm11,xmm0
 vmovsd QWORD PTR [rsp-0x8],xmm14
 vmulsd xmm14,xmm2,xmm9
 vfmsub132sd xmm9,xmm13,xmm1
 vfmsub231sd xmm14,xmm3,xmm8
 vmulsd xmm8,xmm1,xmm8
 vmulsd xmm13,xmm9,xmm0
 vfmsub231sd xmm8,xmm2,xmm7
 vmulsd xmm14,xmm14,xmm0
 vmovsd QWORD PTR [rsp-0x18],xmm13
 vmulsd xmm13,xmm3,xmm6
 vmulsd xmm7,xmm8,xmm0
 vfmsub231sd xmm13,xmm2,xmm4
 vmulsd xmm2,xmm2,xmm5
 vmulsd xmm4,xmm1,xmm4
 vmovsd QWORD PTR [rsp-0x10],xmm7
 vfmsub132sd xmm6,xmm2,xmm1
 vfmsub132sd xmm3,xmm4,xmm5
 vmulsd xmm13,xmm13,xmm0
 vmulsd xmm5,xmm6,xmm0
 vmulsd xmm7,xmm3,xmm0
 vmovsd QWORD PTR [rsp-0x28],xmm5
 vandpd xmm5,xmm15,XMMWORD PTR [rip+0x0]        # 21b <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x21b>
    R_X86_64_PC32 .LC4-0x4
 vmovsd QWORD PTR [rsp-0x20],xmm7
 vmovq  r10,xmm5
 vmovupd ymm5,YMMWORD PTR [rsi]
 mov    esi,0x0
    R_X86_64_32 .rodata+0x46a40
 mov    r9,r10
 vmovapd YMMWORD PTR [rsp-0x60],ymm5
 vmovsd xmm5,QWORD PTR [r13+0x540]
 data16 cs nop WORD PTR [rax+rax*1+0x0]
 nop    DWORD PTR [rax+0x0]
 vxorpd xmm3,xmm3,xmm3
 xor    eax,eax
 vmovapd ymm1,ymm3
 vmovapd ymm0,ymm3
 xchg   ax,ax
 vmovupd ymm6,YMMWORD PTR [rdi+rax*1]
 vfmadd231pd ymm0,ymm6,YMMWORD PTR [r13+rax*1+0x20]
 vmovupd ymm6,YMMWORD PTR [rsi+rax*1]
 vfmadd231pd ymm1,ymm6,YMMWORD PTR [r13+rax*1+0x20]
 vmovupd ymm6,YMMWORD PTR [rcx+rax*1]
 vfmadd231pd ymm3,ymm6,YMMWORD PTR [r13+rax*1+0x20]
 add    rax,0x20
 cmp    rax,0x520
 jne    260 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x260>
 vextractf128 xmm2,ymm3,0x1
 vmovapd ymm6,YMMWORD PTR [rsp-0x60]
 vmovsd xmm9,QWORD PTR [rsi+0x520]
 xor    eax,eax
 vaddpd xmm2,xmm2,xmm3
 vmulpd ymm4,ymm6,YMMWORD PTR [rdx]
 vmovsd xmm15,QWORD PTR [rdi+0x520]
 vmovsd xmm8,QWORD PTR [rsp-0x18]
 vmovsd xmm10,QWORD PTR [rcx+0x520]
 vunpckhpd xmm3,xmm2,xmm2
 vaddpd xmm3,xmm3,xmm2
 vextractf128 xmm2,ymm1,0x1
 vaddpd xmm1,xmm2,xmm1
 vunpckhpd xmm2,xmm1,xmm1
 vaddpd xmm2,xmm2,xmm1
 vextractf128 xmm1,ymm0,0x1
 vfmadd231sd xmm3,xmm10,xmm5
 vaddpd xmm1,xmm1,xmm0
 vfmadd231sd xmm2,xmm9,xmm5
 vunpckhpd xmm0,xmm1,xmm1
 vaddpd xmm0,xmm0,xmm1
 vextractf128 xmm1,ymm4,0x1
 vaddpd xmm4,xmm1,xmm4
 vfmadd231sd xmm0,xmm15,xmm5
 vunpckhpd xmm1,xmm4,xmm4
 vaddpd xmm4,xmm1,xmm4
 vmulsd xmm1,xmm2,xmm8
 vmovsd xmm6,xmm4,xmm4
 vfmadd231sd xmm1,xmm14,xmm0
 vfmadd231sd xmm1,xmm3,QWORD PTR [rsp-0x10]
 vmulsd xmm4,xmm11,xmm2
 vfmadd231sd xmm4,xmm12,xmm0
 vfmadd231sd xmm4,xmm3,QWORD PTR [rsp-0x8]
 vmulsd xmm7,xmm1,xmm8
 vmulsd xmm8,xmm1,QWORD PTR [rsp-0x10]
 vmulsd xmm1,xmm14,xmm1
 vfmadd231sd xmm7,xmm11,xmm4
 vfmadd231sd xmm1,xmm12,xmm4
 vfmadd132sd xmm4,xmm8,QWORD PTR [rsp-0x8]
 vmovsd xmm8,QWORD PTR [rsp-0x20]
 vmulsd xmm2,xmm2,xmm8
 vfmadd132sd xmm0,xmm2,xmm13
 vmovsd xmm2,QWORD PTR [rsp-0x28]
 vfmadd231sd xmm0,xmm3,xmm2
 vmovsd xmm3,xmm1,xmm1
 vfmadd231sd xmm7,xmm0,xmm8
 vfmadd231sd xmm3,xmm13,xmm0
 vfmadd132sd xmm0,xmm4,xmm2
 vmovq  xmm4,r9
 vmulsd xmm4,xmm4,QWORD PTR [r8]
 vmulsd xmm4,xmm4,xmm6
 vmulsd xmm7,xmm7,xmm4
 vmulsd xmm6,xmm0,xmm4
 vmulsd xmm3,xmm3,xmm4
 vbroadcastsd ymm8,xmm7
 vbroadcastsd ymm2,xmm6
 vbroadcastsd ymm4,xmm3
 vmulpd ymm1,ymm8,YMMWORD PTR [rsi+rax*1]
 vmovapd ymm0,ymm1
 vmovupd ymm1,YMMWORD PTR [rcx+rax*1]
 vfmadd231pd ymm0,ymm4,YMMWORD PTR [rdi+rax*1]
 vfmadd213pd ymm1,ymm2,YMMWORD PTR [r11+rax*1]
 vaddpd ymm1,ymm0,ymm1
 vmovupd YMMWORD PTR [r11+rax*1],ymm1
 add    rax,0x20
 cmp    rax,0x520
 jne    3ad <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x3ad>
 vfmadd213sd xmm6,xmm10,QWORD PTR [r11+0x520]
 vmulsd xmm7,xmm7,xmm9
 add    rdx,0x20
 add    rdi,0x528
 add    rsi,0x528
 add    rcx,0x528
 add    r8,0x8
 vfmadd132sd xmm3,xmm7,xmm15
 vaddsd xmm3,xmm3,xmm6
 vmovsd QWORD PTR [r11+0x520],xmm3
 cmp    rdx,0x0
    R_X86_64_32S .rodata+0x1ac0
 jne    250 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x250>
 vzeroupper
 mov    r13,QWORD PTR [rbp-0x8]
 leave
 ret