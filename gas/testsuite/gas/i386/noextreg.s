	.intel_syntax noprefix
	.text
ix86:
	andn	eax, eax, [eax]
	# andn rax, rax, [rax]
	.byte	0xc4, 0xe2, 0xf8, 0xf2, 0x00

	tzmsk	eax, [eax]
	# tzmsk rax, [rax]
	.byte	0x8f, 0xe9, 0xf8, 0x01, 0x20

	llwpcb	eax
	# llwpcb rax
	.byte	0x8f, 0xe9, 0xf8, 0x12, 0xc0

	vfmaddps xmm0, xmm0, [eax], xmm0
	# vfmaddps xmm0, xmm0, [eax], xmm0
	.byte	0xc4, 0xe3, 0x79, 0x68, 0x00, 0x0f

	ret