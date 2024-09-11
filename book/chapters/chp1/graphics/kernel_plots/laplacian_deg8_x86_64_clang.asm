kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*):
 push   rbp
 push   r15
 push   r14
 push   r13
 push   r12
 push   rbx
 sub    rsp,0x18
 vmovsd xmm3,QWORD PTR [rcx+0x10]
 vmovupd xmm5,XMMWORD PTR [rcx]
 vpermilpd xmm1,XMMWORD PTR [rcx+0x38],0x1
 vmovsd xmm0,QWORD PTR [rcx+0x28]
 vmovsd xmm6,QWORD PTR [rcx+0x48]
 vmovddup xmm14,QWORD PTR [rsi+0x538]
 vmovddup xmm15,QWORD PTR [rsi+0x540]
 lea    rax,[rip+0x0]        # 3f <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x3f>
    R_X86_64_PC32 .rodata+0x8a5ac
 lea    rdx,[rip+0x0]        # 46 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x46>
    R_X86_64_PC32 .rodata+0x6cc
 lea    r8,[rip+0x0]        # 4d <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x4d>
    R_X86_64_PC32 .rodata+0x8a5ec
 lea    r9,[rip+0x0]        # 54 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x54>
    R_X86_64_PC32 .rodata+0x4567c
 lea    r10,[rip+0x0]        # 5b <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x5b>
    R_X86_64_PC32 .rodata+0x70c
 xor    r11d,r11d
 lea    rbx,[rip+0x0]        # 65 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x65>
    R_X86_64_PC32 .rodata+0x8a58c
 lea    r14,[rip+0x0]        # 6c <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x6c>
    R_X86_64_PC32 .rodata+0x4561c
 lea    r15,[rip+0x0]        # 73 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x73>
    R_X86_64_PC32 .rodata+0x6ac
 lea    r13,[rip+0x0]        # 7a <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x7a>
    R_X86_64_PC32 .rodata+0xcf4fc
 vmovhpd xmm6,xmm6,QWORD PTR [rcx+0x58]
 vblendpd xmm2,xmm5,xmm3,0x1
 vsubsd xmm4,xmm0,xmm3
 vmovupd xmm0,XMMWORD PTR [rcx+0x18]
 vunpcklpd xmm3,xmm5,xmm3
 vsubpd xmm2,xmm1,xmm2
 vmovsd xmm1,QWORD PTR [rcx+0x30]
 vsubpd xmm3,xmm6,xmm3
 vmovhpd xmm1,xmm1,QWORD PTR [rcx+0x50]
 lea    rcx,[rip+0x0]        # ab <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0xab>
    R_X86_64_PC32 .rodata+0x4563c
 vmovddup xmm4,xmm4
 vshufpd xmm11,xmm2,xmm3,0x1
 vsubpd xmm0,xmm0,xmm5
 vsubpd xmm1,xmm1,xmm5
 vmulpd xmm5,xmm2,xmm3
 vshufpd xmm8,xmm0,xmm2,0x1
 vshufpd xmm9,xmm3,xmm0,0x1
 vunpcklpd xmm10,xmm2,xmm0
 vmulpd xmm8,xmm8,xmm9
 vunpckhpd xmm9,xmm0,xmm3
 vunpcklpd xmm7,xmm2,xmm1
 vshufpd xmm5,xmm5,xmm5,0x1
 vunpckhpd xmm6,xmm1,xmm3
 vshufpd xmm2,xmm2,xmm2,0x1
 vfnmadd213pd xmm7,xmm6,xmm5
 vshufpd xmm5,xmm1,xmm1,0x1
 vmulpd xmm6,xmm4,xmm5
 vmulpd xmm4,xmm11,xmm4
 vfmsub231pd xmm4,xmm9,xmm10
 vsubsd xmm10,xmm6,xmm8
 vmulsd xmm9,xmm7,xmm0
 vfmadd213sd xmm10,xmm1,xmm9
 vmovsd xmm9,QWORD PTR [rip+0x0]        # 116 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x116>
    R_X86_64_PC32 .LCPI0_0-0x4
 vfmadd231sd xmm10,xmm4,xmm3
 vdivsd xmm9,xmm9,xmm10
 vmovddup xmm12,xmm9
 vmulpd xmm13,xmm12,xmm4
 vsubpd xmm4,xmm6,xmm8
 vmulpd xmm7,xmm12,xmm7
 vmulpd xmm6,xmm12,xmm4
 vmulsd xmm4,xmm5,xmm1
 vandpd xmm5,xmm10,XMMWORD PTR [rip+0x0]        # 142 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x142>
    R_X86_64_PC32 .LCPI0_1-0x4
 vmovapd XMMWORD PTR [rsp-0x30],xmm13
 vmovapd XMMWORD PTR [rsp-0x20],xmm7
 vfnmadd213sd xmm2,xmm3,xmm4
 vshufpd xmm4,xmm0,xmm0,0x1
 vmovapd XMMWORD PTR [rsp-0x40],xmm6
 vmulpd xmm1,xmm1,xmm4
 vfmsub231pd xmm1,xmm0,xmm11
 vmovddup xmm11,QWORD PTR [rsi+0x520]
 vmulsd xmm3,xmm9,xmm2
 vmulsd xmm0,xmm3,xmm5
 vmovsd QWORD PTR [rsp-0x78],xmm3
 vmulpd xmm4,xmm12,xmm1
 vmovddup xmm12,QWORD PTR [rsi+0x528]
 vmovsd QWORD PTR [rsp-0x80],xmm0
 vmovddup xmm0,xmm5
 vmulpd xmm1,xmm7,xmm0
 vmovapd XMMWORD PTR [rsp-0x50],xmm1
 vshufpd xmm1,xmm6,xmm6,0x1
 vmulpd xmm1,xmm1,xmm0
 vmulpd xmm0,xmm13,xmm0
 vmovddup xmm13,QWORD PTR [rsi+0x530]
 vmovapd XMMWORD PTR [rsp-0x60],xmm1
 vmovupd ymm1,YMMWORD PTR [rsi]
 vmovapd XMMWORD PTR [rsp-0x70],xmm0
 vmovupd YMMWORD PTR [rsp-0x10],ymm1
 nop    DWORD PTR [rax+rax*1+0x0]
 vxorpd xmm0,xmm0,xmm0
 xor    r12d,r12d
 vxorpd xmm1,xmm1,xmm1
 vxorpd xmm2,xmm2,xmm2
 vxorpd xmm6,xmm6,xmm6
 vxorpd xmm7,xmm7,xmm7
 vxorpd xmm3,xmm3,xmm3
 nop    DWORD PTR [rax+rax*1+0x0]
 vmovupd ymm8,YMMWORD PTR [rsi+r12*1+0x20]
 vmovupd ymm9,YMMWORD PTR [rsi+r12*1+0x40]
 vfmadd231pd ymm0,ymm8,YMMWORD PTR [rax+r12*1-0x20]
 vfmadd231pd ymm1,ymm9,YMMWORD PTR [rax+r12*1]
 vfmadd231pd ymm2,ymm8,YMMWORD PTR [rcx+r12*1-0x20]
 vfmadd231pd ymm6,ymm9,YMMWORD PTR [rcx+r12*1]
 vfmadd231pd ymm7,ymm8,YMMWORD PTR [rdx+r12*1-0x20]
 vfmadd231pd ymm3,ymm9,YMMWORD PTR [rdx+r12*1]
 add    r12,0x40
 cmp    r12,0x500
 jne    1f0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x1f0>
 vaddpd ymm0,ymm1,ymm0
 vaddpd ymm2,ymm6,ymm2
 vaddpd ymm3,ymm3,ymm7
 imul   rbp,r11,0x528
 mov    r12,r11
 shl    r12,0x5
 vextractf128 xmm1,ymm0,0x1
 vextractf128 xmm6,ymm2,0x1
 vaddpd xmm0,xmm0,xmm1
 vaddpd xmm2,xmm2,xmm6
 vextractf128 xmm6,ymm3,0x1
 vaddpd xmm3,xmm3,xmm6
 vmovsd xmm6,QWORD PTR [rbp+r15*1+0x510]
 vshufpd xmm1,xmm0,xmm0,0x1
 vaddsd xmm0,xmm0,xmm1
 vmovsd xmm1,QWORD PTR [rbp+r15*1+0x500]
 vhaddpd xmm2,xmm3,xmm2
 vmovsd xmm3,QWORD PTR [rbp+r15*1+0x508]
 vfmadd231sd xmm0,xmm11,QWORD PTR [rbp+rbx*1+0x500]
 vmovhpd xmm1,xmm1,QWORD PTR [rbp+r14*1+0x500]
 vmovhpd xmm3,xmm3,QWORD PTR [rbp+r14*1+0x508]
 vfmadd231sd xmm0,xmm12,QWORD PTR [rbp+rbx*1+0x508]
 vfmadd213pd xmm1,xmm11,xmm2
 vmovsd xmm2,QWORD PTR [rbp+r15*1+0x518]
 vmovhpd xmm2,xmm2,QWORD PTR [rbp+r14*1+0x518]
 vfmadd231sd xmm0,xmm13,QWORD PTR [rbp+rbx*1+0x510]
 vfmadd213pd xmm3,xmm12,xmm1
 vmovhpd xmm1,xmm6,QWORD PTR [rbp+r14*1+0x510]
 vfmadd231sd xmm0,xmm14,QWORD PTR [rbp+rbx*1+0x518]
 vfmadd231sd xmm0,xmm15,QWORD PTR [rbp+rbx*1+0x520]
 vfmadd213pd xmm1,xmm13,xmm3
 vfmadd213pd xmm2,xmm14,xmm1
 vmovsd xmm1,QWORD PTR [rbp+r15*1+0x520]
 vmovhpd xmm1,xmm1,QWORD PTR [rbp+r14*1+0x520]
 vfmadd213pd xmm1,xmm15,xmm2
 vmovupd ymm2,YMMWORD PTR [rsp-0x10]
 vmulpd ymm2,ymm2,YMMWORD PTR [r12+r13*1]
 lea    r12,[rip+0x0]        # 339 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x339>
    R_X86_64_PC32 .rodata-0x4
 vextractf128 xmm3,ymm2,0x1
 vaddpd xmm2,xmm2,xmm3
 vshufpd xmm3,xmm2,xmm2,0x1
 vaddsd xmm2,xmm2,xmm3
 vmulpd xmm3,xmm1,xmm4
 vmulsd xmm2,xmm2,QWORD PTR [r12+r11*8]
 xor    r12d,r12d
 vshufpd xmm6,xmm3,xmm3,0x1
 vaddsd xmm3,xmm6,xmm3
 vmovddup xmm6,xmm0
 vfmadd231sd xmm3,xmm0,QWORD PTR [rsp-0x78]
 vshufpd xmm0,xmm1,xmm1,0x1
 vmulpd xmm0,xmm0,XMMWORD PTR [rsp-0x40]
 vfmadd231pd xmm0,xmm1,XMMWORD PTR [rsp-0x30]
 vfmadd231pd xmm0,xmm6,XMMWORD PTR [rsp-0x20]
 vmulpd xmm1,xmm0,XMMWORD PTR [rsp-0x50]
 vshufpd xmm6,xmm1,xmm1,0x1
 vaddsd xmm1,xmm6,xmm1
 vshufpd xmm6,xmm0,xmm0,0x1
 vmulpd xmm6,xmm6,XMMWORD PTR [rsp-0x60]
 vfmadd231sd xmm1,xmm3,QWORD PTR [rsp-0x80]
 vfmadd231pd xmm6,xmm0,XMMWORD PTR [rsp-0x70]
 vmulsd xmm0,xmm3,xmm5
 vmovddup xmm0,xmm0
 vmulsd xmm1,xmm1,xmm2
 vmovddup xmm2,xmm2
 vfmadd213pd xmm0,xmm4,xmm6
 vmulpd xmm0,xmm2,xmm0
 vbroadcastsd ymm2,xmm1
 vpermpd ymm6,ymm0,0x55
 vbroadcastsd ymm7,xmm0
 nop    WORD PTR [rax+rax*1+0x0]
 vmovupd ymm3,YMMWORD PTR [r8+r12*1-0x60]
 vmovupd ymm8,YMMWORD PTR [r8+r12*1-0x40]
 vmovupd ymm9,YMMWORD PTR [r8+r12*1-0x20]
 vmovupd ymm10,YMMWORD PTR [r8+r12*1]
 vfmadd213pd ymm3,ymm2,YMMWORD PTR [rdi+r12*1]
 vfmadd213pd ymm8,ymm2,YMMWORD PTR [rdi+r12*1+0x20]
 vfmadd213pd ymm9,ymm2,YMMWORD PTR [rdi+r12*1+0x40]
 vfmadd213pd ymm10,ymm2,YMMWORD PTR [rdi+r12*1+0x60]
 vfmadd231pd ymm3,ymm6,YMMWORD PTR [r9+r12*1-0x60]
 vfmadd231pd ymm8,ymm6,YMMWORD PTR [r9+r12*1-0x40]
 vfmadd231pd ymm9,ymm6,YMMWORD PTR [r9+r12*1-0x20]
 vfmadd231pd ymm10,ymm6,YMMWORD PTR [r9+r12*1]
 vfmadd231pd ymm3,ymm7,YMMWORD PTR [r10+r12*1-0x60]
 vfmadd231pd ymm8,ymm7,YMMWORD PTR [r10+r12*1-0x40]
 vfmadd231pd ymm9,ymm7,YMMWORD PTR [r10+r12*1-0x20]
 vfmadd231pd ymm10,ymm7,YMMWORD PTR [r10+r12*1]
 vmovupd YMMWORD PTR [rdi+r12*1],ymm3
 vmovupd YMMWORD PTR [rdi+r12*1+0x20],ymm8
 vmovupd YMMWORD PTR [rdi+r12*1+0x40],ymm9
 vmovupd YMMWORD PTR [rdi+r12*1+0x60],ymm10
 sub    r12,0xffffffffffffff80
 cmp    r12,0x500
 jne    3e0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x3e0>
 vmovsd xmm2,QWORD PTR [rbp+rbx*1+0x500]
 vmovsd xmm6,QWORD PTR [rbp+r15*1+0x500]
 vmovsd xmm3,QWORD PTR [rbp+rbx*1+0x508]
 vmovsd xmm7,QWORD PTR [rbp+r15*1+0x508]
 vmovsd xmm8,QWORD PTR [rbp+r15*1+0x510]
 vmovsd xmm9,QWORD PTR [rbp+r15*1+0x518]
 inc    r11
 add    rax,0x528
 add    rcx,0x528
 add    rdx,0x528
 add    r8,0x528
 add    r9,0x528
 add    r10,0x528
 vmovhpd xmm6,xmm6,QWORD PTR [rbp+r14*1+0x500]
 vfmadd213sd xmm2,xmm1,QWORD PTR [rdi+0x500]
 vmulpd xmm6,xmm0,xmm6
 vshufpd xmm10,xmm6,xmm6,0x1
 vaddsd xmm2,xmm10,xmm2
 vaddsd xmm2,xmm6,xmm2
 vmovsd QWORD PTR [rdi+0x500],xmm2
 vmovhpd xmm2,xmm7,QWORD PTR [rbp+r14*1+0x508]
 vfmadd213sd xmm3,xmm1,QWORD PTR [rdi+0x508]
 vmulpd xmm2,xmm0,xmm2
 vshufpd xmm6,xmm2,xmm2,0x1
 vaddsd xmm3,xmm6,xmm3
 vaddsd xmm2,xmm2,xmm3
 vmovhpd xmm3,xmm8,QWORD PTR [rbp+r14*1+0x510]
 vmovsd QWORD PTR [rdi+0x508],xmm2
 vmovsd xmm2,QWORD PTR [rbp+rbx*1+0x510]
 vfmadd213sd xmm2,xmm1,QWORD PTR [rdi+0x510]
 vmulpd xmm3,xmm0,xmm3
 vshufpd xmm6,xmm3,xmm3,0x1
 vaddsd xmm2,xmm6,xmm2
 vaddsd xmm2,xmm3,xmm2
 vmovhpd xmm3,xmm9,QWORD PTR [rbp+r14*1+0x518]
 vmovsd QWORD PTR [rdi+0x510],xmm2
 vmovsd xmm2,QWORD PTR [rbp+rbx*1+0x518]
 vfmadd213sd xmm2,xmm1,QWORD PTR [rdi+0x518]
 vmulpd xmm3,xmm0,xmm3
 vshufpd xmm6,xmm3,xmm3,0x1
 vaddsd xmm2,xmm6,xmm2
 vaddsd xmm2,xmm3,xmm2
 vmovsd xmm3,QWORD PTR [rbp+rbx*1+0x520]
 vmovsd QWORD PTR [rdi+0x518],xmm2
 vfmadd213sd xmm3,xmm1,QWORD PTR [rdi+0x520]
 vmovsd xmm1,QWORD PTR [rbp+r15*1+0x520]
 vmovhpd xmm1,xmm1,QWORD PTR [rbp+r14*1+0x520]
 vmulpd xmm0,xmm0,xmm1
 vshufpd xmm1,xmm0,xmm0,0x1
 vaddsd xmm1,xmm1,xmm3
 vaddsd xmm0,xmm0,xmm1
 vmovsd QWORD PTR [rdi+0x520],xmm0
 cmp    r11,0xd6
 jne    1d0 <kernel(double*, double const*, double const*, double const*, int const*, unsigned char const*)+0x1d0>
 add    rsp,0x18
 pop    rbx
 pop    r12
 pop    r13
 pop    r14
 pop    r15
 pop    rbp
 vzeroupper
 ret