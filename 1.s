aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaerp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <_init-0x243>
 248:	78 38                	js     282 <_init-0x236>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 03                	add    %al,(%rbx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 02                	add    %al,(%rdx)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 00                	add    %al,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 53 c4             	add    %dl,-0x3c(%rbx)
 286:	97                   	xchg   %eax,%edi
 287:	ff 02                	incl   (%rdx)
 289:	4a                   	rex.WX
 28a:	42 99                	rex.X cltd 
 28c:	65 1a 91 be 5c ec 62 	sbb    %gs:0x62ec5cbe(%rcx),%dl
 293:	20 55 11             	and    %dl,0x11(%rbp)
 296:	b4 70                	mov    $0x70,%ah

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	01 00                	add    %eax,(%rax)
 29a:	00 00                	add    %al,(%rax)
 29c:	01 00                	add    %eax,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000000002b8 <.dynsym>:
	...
 2d0:	38 00                	cmp    %al,(%rax)
 2d2:	00 00                	add    %al,(%rax)
 2d4:	20 00                	and    %al,(%rax)
	...
 2e6:	00 00                	add    %al,(%rax)
 2e8:	1a 00                	sbb    (%rax),%al
 2ea:	00 00                	add    %al,(%rax)
 2ec:	12 00                	adc    (%rax),%al
	...
 2fe:	00 00                	add    %al,(%rax)
 300:	54                   	push   %rsp
 301:	00 00                	add    %al,(%rax)
 303:	00 20                	add    %ah,(%rax)
	...
 315:	00 00                	add    %al,(%rax)
 317:	00 63 00             	add    %ah,0x0(%rbx)
 31a:	00 00                	add    %al,(%rax)
 31c:	20 00                	and    %al,(%rax)
	...
 32e:	00 00                	add    %al,(%rax)
 330:	0b 00                	or     (%rax),%eax
 332:	00 00                	add    %al,(%rax)
 334:	22 00                	and    (%rax),%al
	...

Disassembly of section .dynstr:

0000000000000348 <.dynstr>:
 348:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 34c:	63 2e                	movslq (%rsi),%ebp
 34e:	73 6f                	jae    3bf <_init-0xf9>
 350:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
 355:	63 78 61             	movslq 0x61(%rax),%edi
 358:	5f                   	pop    %rdi
 359:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 35f:	7a 65                	jp     3c6 <_init-0xf2>
 361:	00 5f 5f             	add    %bl,0x5f(%rdi)
 364:	6c                   	insb   (%dx),%es:(%rdi)
 365:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 36c:	72 74                	jb     3e2 <_init-0xd6>
 36e:	5f                   	pop    %rdi
 36f:	6d                   	insl   (%dx),%es:(%rdi)
 370:	61                   	(bad)  
 371:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
 378:	43 5f                	rex.XB pop %r15
 37a:	32 2e                	xor    (%rsi),%ch
 37c:	32 2e                	xor    (%rsi),%ch
 37e:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 383:	4d 5f                	rex.WRB pop %r15
 385:	64 65 72 65          	fs gs jb 3ee <_init-0xca>
 389:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 390:	4d 
 391:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 393:	6f                   	outsl  %ds:(%rsi),(%dx)
 394:	6e                   	outsb  %ds:(%rsi),(%dx)
 395:	65 54                	gs push %rsp
 397:	61                   	(bad)  
 398:	62                   	(bad)  
 399:	6c                   	insb   (%dx),%es:(%rdi)
 39a:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 39e:	67 6d                	insl   (%dx),%es:(%edi)
 3a0:	6f                   	outsl  %ds:(%rsi),(%dx)
 3a1:	6e                   	outsb  %ds:(%rsi),(%dx)
 3a2:	5f                   	pop    %rdi
 3a3:	73 74                	jae    419 <_init-0x9f>
 3a5:	61                   	(bad)  
 3a6:	72 74                	jb     41c <_init-0x9c>
 3a8:	5f                   	pop    %rdi
 3a9:	5f                   	pop    %rdi
 3aa:	00 5f 49             	add    %bl,0x49(%rdi)
 3ad:	54                   	push   %rsp
 3ae:	4d 5f                	rex.WRB pop %r15
 3b0:	72 65                	jb     417 <_init-0xa1>
 3b2:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 3b9:	4d 
 3ba:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 3bc:	6f                   	outsl  %ds:(%rsi),(%dx)
 3bd:	6e                   	outsb  %ds:(%rsi),(%dx)
 3be:	65 54                	gs push %rsp
 3c0:	61                   	(bad)  
 3c1:	62                   	.byte 0x62
 3c2:	6c                   	insb   (%dx),%es:(%rdi)
 3c3:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000003c6 <.gnu.version>:
 3c6:	00 00                	add    %al,(%rax)
 3c8:	00 00                	add    %al,(%rax)
 3ca:	02 00                	add    (%rax),%al
 3cc:	00 00                	add    %al,(%rax)
 3ce:	00 00                	add    %al,(%rax)
 3d0:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000000003d8 <.gnu.version_r>:
 3d8:	01 00                	add    %eax,(%rax)
 3da:	01 00                	add    %eax,(%rax)
 3dc:	01 00                	add    %eax,(%rax)
 3de:	00 00                	add    %al,(%rax)
 3e0:	10 00                	adc    %al,(%rax)
 3e2:	00 00                	add    %al,(%rax)
 3e4:	00 00                	add    %al,(%rax)
 3e6:	00 00                	add    %al,(%rax)
 3e8:	75 1a                	jne    404 <_init-0xb4>
 3ea:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 3f0:	2c 00                	sub    $0x0,%al
 3f2:	00 00                	add    %al,(%rax)
 3f4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000003f8 <.rela.dyn>:
 3f8:	f0 0d 20 00 00 00    	lock or $0x20,%eax
 3fe:	00 00                	add    %al,(%rax)
 400:	08 00                	or     %al,(%rax)
 402:	00 00                	add    %al,(%rax)
 404:	00 00                	add    %al,(%rax)
 406:	00 00                	add    %al,(%rax)
 408:	f0 05 00 00 00 00    	lock add $0x0,%eax
 40e:	00 00                	add    %al,(%rax)
 410:	f8                   	clc    
 411:	0d 20 00 00 00       	or     $0x20,%eax
 416:	00 00                	add    %al,(%rax)
 418:	08 00                	or     %al,(%rax)
 41a:	00 00                	add    %al,(%rax)
 41c:	00 00                	add    %al,(%rax)
 41e:	00 00                	add    %al,(%rax)
 420:	b0 05                	mov    $0x5,%al
 422:	00 00                	add    %al,(%rax)
 424:	00 00                	add    %al,(%rax)
 426:	00 00                	add    %al,(%rax)
 428:	08 10                	or     %dl,(%rax)
 42a:	20 00                	and    %al,(%rax)
 42c:	00 00                	add    %al,(%rax)
 42e:	00 00                	add    %al,(%rax)
 430:	08 00                	or     %al,(%rax)
 432:	00 00                	add    %al,(%rax)
 434:	00 00                	add    %al,(%rax)
 436:	00 00                	add    %al,(%rax)
 438:	08 10                	or     %dl,(%rax)
 43a:	20 00                	and    %al,(%rax)
 43c:	00 00                	add    %al,(%rax)
 43e:	00 00                	add    %al,(%rax)
 440:	d8 0f                	fmuls  (%rdi)
 442:	20 00                	and    %al,(%rax)
 444:	00 00                	add    %al,(%rax)
 446:	00 00                	add    %al,(%rax)
 448:	06                   	(bad)  
 449:	00 00                	add    %al,(%rax)
 44b:	00 01                	add    %al,(%rcx)
	...
 455:	00 00                	add    %al,(%rax)
 457:	00 e0                	add    %ah,%al
 459:	0f 20 00             	mov    %cr0,%rax
 45c:	00 00                	add    %al,(%rax)
 45e:	00 00                	add    %al,(%rax)
 460:	06                   	(bad)  
 461:	00 00                	add    %al,(%rax)
 463:	00 02                	add    %al,(%rdx)
	...
 46d:	00 00                	add    %al,(%rax)
 46f:	00 e8                	add    %ch,%al
 471:	0f 20 00             	mov    %cr0,%rax
 474:	00 00                	add    %al,(%rax)
 476:	00 00                	add    %al,(%rax)
 478:	06                   	(bad)  
 479:	00 00                	add    %al,(%rax)
 47b:	00 03                	add    %al,(%rbx)
	...
 485:	00 00                	add    %al,(%rax)
 487:	00 f0                	add    %dh,%al
 489:	0f 20 00             	mov    %cr0,%rax
 48c:	00 00                	add    %al,(%rax)
 48e:	00 00                	add    %al,(%rax)
 490:	06                   	(bad)  
 491:	00 00                	add    %al,(%rax)
 493:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 49e:	00 00                	add    %al,(%rax)
 4a0:	f8                   	clc    
 4a1:	0f 20 00             	mov    %cr0,%rax
 4a4:	00 00                	add    %al,(%rax)
 4a6:	00 00                	add    %al,(%rax)
 4a8:	06                   	(bad)  
 4a9:	00 00                	add    %al,(%rax)
 4ab:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4b1 <_init-0x7>
 4b1:	00 00                	add    %al,(%rax)
 4b3:	00 00                	add    %al,(%rax)
 4b5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

00000000000004b8 <_init>:
_init():
 4b8:	48 83 ec 08          	sub    $0x8,%rsp
 4bc:	48 8b 05 25 0b 20 00 	mov    0x200b25(%rip),%rax        # 200fe8 <__gmon_start__>
 4c3:	48 85 c0             	test   %rax,%rax
 4c6:	74 02                	je     4ca <_init+0x12>
 4c8:	ff d0                	callq  *%rax
 4ca:	48 83 c4 08          	add    $0x8,%rsp
 4ce:	c3                   	retq   

Disassembly of section .plt:

00000000000004d0 <.plt>:
 4d0:	ff 35 f2 0a 20 00    	pushq  0x200af2(%rip)        # 200fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
 4d6:	ff 25 f4 0a 20 00    	jmpq   *0x200af4(%rip)        # 200fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
 4dc:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

00000000000004e0 <__cxa_finalize@plt>:
 4e0:	ff 25 12 0b 20 00    	jmpq   *0x200b12(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 4e6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000004f0 <_start>:
_start():
 4f0:	31 ed                	xor    %ebp,%ebp
 4f2:	49 89 d1             	mov    %rdx,%r9
 4f5:	5e                   	pop    %rsi
 4f6:	48 89 e2             	mov    %rsp,%rdx
 4f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 4fd:	50                   	push   %rax
 4fe:	54                   	push   %rsp
 4ff:	4c 8d 05 8a 01 00 00 	lea    0x18a(%rip),%r8        # 690 <__libc_csu_fini>
 506:	48 8d 0d 13 01 00 00 	lea    0x113(%rip),%rcx        # 620 <__libc_csu_init>
 50d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 5fa <main>
 514:	ff 15 c6 0a 20 00    	callq  *0x200ac6(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 51a:	f4                   	hlt    
 51b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000520 <deregister_tm_clones>:
deregister_tm_clones():
 520:	48 8d 3d f1 0a 20 00 	lea    0x200af1(%rip),%rdi        # 201018 <__TMC_END__>
 527:	55                   	push   %rbp
 528:	48 8d 05 e9 0a 20 00 	lea    0x200ae9(%rip),%rax        # 201018 <__TMC_END__>
 52f:	48 39 f8             	cmp    %rdi,%rax
 532:	48 89 e5             	mov    %rsp,%rbp
 535:	74 19                	je     550 <deregister_tm_clones+0x30>
 537:	48 8b 05 9a 0a 20 00 	mov    0x200a9a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 53e:	48 85 c0             	test   %rax,%rax
 541:	74 0d                	je     550 <deregister_tm_clones+0x30>
 543:	5d                   	pop    %rbp
 544:	ff e0                	jmpq   *%rax
 546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 54d:	00 00 00 
 550:	5d                   	pop    %rbp
 551:	c3                   	retq   
 552:	0f 1f 40 00          	nopl   0x0(%rax)
 556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 55d:	00 00 00 

0000000000000560 <register_tm_clones>:
register_tm_clones():
 560:	48 8d 3d b1 0a 20 00 	lea    0x200ab1(%rip),%rdi        # 201018 <__TMC_END__>
 567:	48 8d 35 aa 0a 20 00 	lea    0x200aaa(%rip),%rsi        # 201018 <__TMC_END__>
 56e:	55                   	push   %rbp
 56f:	48 29 fe             	sub    %rdi,%rsi
 572:	48 89 e5             	mov    %rsp,%rbp
 575:	48 c1 fe 03          	sar    $0x3,%rsi
 579:	48 89 f0             	mov    %rsi,%rax
 57c:	48 c1 e8 3f          	shr    $0x3f,%rax
 580:	48 01 c6             	add    %rax,%rsi
 583:	48 d1 fe             	sar    %rsi
 586:	74 18                	je     5a0 <register_tm_clones+0x40>
 588:	48 8b 05 61 0a 20 00 	mov    0x200a61(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 58f:	48 85 c0             	test   %rax,%rax
 592:	74 0c                	je     5a0 <register_tm_clones+0x40>
 594:	5d                   	pop    %rbp
 595:	ff e0                	jmpq   *%rax
 597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 59e:	00 00 
 5a0:	5d                   	pop    %rbp
 5a1:	c3                   	retq   
 5a2:	0f 1f 40 00          	nopl   0x0(%rax)
 5a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5ad:	00 00 00 

00000000000005b0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
 5b0:	80 3d 5d 0a 20 00 00 	cmpb   $0x0,0x200a5d(%rip)        # 201014 <_edata>
 5b7:	75 2f                	jne    5e8 <__do_global_dtors_aux+0x38>
 5b9:	48 83 3d 37 0a 20 00 	cmpq   $0x0,0x200a37(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 5c0:	00 
 5c1:	55                   	push   %rbp
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	74 0c                	je     5d3 <__do_global_dtors_aux+0x23>
 5c7:	48 8b 3d 3a 0a 20 00 	mov    0x200a3a(%rip),%rdi        # 201008 <__dso_handle>
 5ce:	e8 0d ff ff ff       	callq  4e0 <__cxa_finalize@plt>
 5d3:	e8 48 ff ff ff       	callq  520 <deregister_tm_clones>
 5d8:	c6 05 35 0a 20 00 01 	movb   $0x1,0x200a35(%rip)        # 201014 <_edata>
 5df:	5d                   	pop    %rbp
 5e0:	c3                   	retq   
 5e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 5e8:	f3 c3                	repz retq 
 5ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000005f0 <frame_dummy>:
frame_dummy():
 5f0:	55                   	push   %rbp
 5f1:	48 89 e5             	mov    %rsp,%rbp
 5f4:	5d                   	pop    %rbp
 5f5:	e9 66 ff ff ff       	jmpq   560 <register_tm_clones>

00000000000005fa <main>:
main():
 5fa:	55                   	push   %rbp
 5fb:	48 89 e5             	mov    %rsp,%rbp
 5fe:	c7 45 f4 1e 00 00 00 	movl   $0x1e,-0xc(%rbp)
 605:	48 8d 05 98 00 00 00 	lea    0x98(%rip),%rax        # 6a4 <b>
 60c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 610:	b8 00 00 00 00       	mov    $0x0,%eax
 615:	5d                   	pop    %rbp
 616:	c3                   	retq   
 617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 61e:	00 00 

0000000000000620 <__libc_csu_init>:
__libc_csu_init():
 620:	41 57                	push   %r15
 622:	41 56                	push   %r14
 624:	49 89 d7             	mov    %rdx,%r15
 627:	41 55                	push   %r13
 629:	41 54                	push   %r12
 62b:	4c 8d 25 be 07 20 00 	lea    0x2007be(%rip),%r12        # 200df0 <__frame_dummy_init_array_entry>
 632:	55                   	push   %rbp
 633:	48 8d 2d be 07 20 00 	lea    0x2007be(%rip),%rbp        # 200df8 <__init_array_end>
 63a:	53                   	push   %rbx
 63b:	41 89 fd             	mov    %edi,%r13d
 63e:	49 89 f6             	mov    %rsi,%r14
 641:	4c 29 e5             	sub    %r12,%rbp
 644:	48 83 ec 08          	sub    $0x8,%rsp
 648:	48 c1 fd 03          	sar    $0x3,%rbp
 64c:	e8 67 fe ff ff       	callq  4b8 <_init>
 651:	48 85 ed             	test   %rbp,%rbp
 654:	74 20                	je     676 <__libc_csu_init+0x56>
 656:	31 db                	xor    %ebx,%ebx
 658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 65f:	00 
 660:	4c 89 fa             	mov    %r15,%rdx
 663:	4c 89 f6             	mov    %r14,%rsi
 666:	44 89 ef             	mov    %r13d,%edi
 669:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 66d:	48 83 c3 01          	add    $0x1,%rbx
 671:	48 39 dd             	cmp    %rbx,%rbp
 674:	75 ea                	jne    660 <__libc_csu_init+0x40>
 676:	48 83 c4 08          	add    $0x8,%rsp
 67a:	5b                   	pop    %rbx
 67b:	5d                   	pop    %rbp
 67c:	41 5c                	pop    %r12
 67e:	41 5d                	pop    %r13
 680:	41 5e                	pop    %r14
 682:	41 5f                	pop    %r15
 684:	c3                   	retq   
 685:	90                   	nop
 686:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 68d:	00 00 00 

0000000000000690 <__libc_csu_fini>:
__libc_csu_fini():
 690:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000694 <_fini>:
_fini():
 694:	48 83 ec 08          	sub    $0x8,%rsp
 698:	48 83 c4 08          	add    $0x8,%rsp
 69c:	c3                   	retq   

Disassembly of section .rodata:

00000000000006a0 <_IO_stdin_used>:
 6a0:	01 00                	add    %eax,(%rax)
 6a2:	02 00                	add    (%rax),%al

00000000000006a4 <b>:
 6a4:	14 00                	adc    $0x0,%al
	...

Disassembly of section .eh_frame_hdr:

00000000000006a8 <__GNU_EH_FRAME_HDR>:
__GNU_EH_FRAME_HDR():
 6a8:	01 1b                	add    %ebx,(%rbx)
 6aa:	03 3b                	add    (%rbx),%edi
 6ac:	3c 00                	cmp    $0x0,%al
 6ae:	00 00                	add    %al,(%rax)
 6b0:	06                   	(bad)  
 6b1:	00 00                	add    %al,(%rax)
 6b3:	00 28                	add    %ch,(%rax)
 6b5:	fe                   	(bad)  
 6b6:	ff                   	(bad)  
 6b7:	ff 88 00 00 00 38    	decl   0x38000000(%rax)
 6bd:	fe                   	(bad)  
 6be:	ff                   	(bad)  
 6bf:	ff b0 00 00 00 48    	pushq  0x48000000(%rax)
 6c5:	fe                   	(bad)  
 6c6:	ff                   	(bad)  
 6c7:	ff 58 00             	lcall  *0x0(%rax)
 6ca:	00 00                	add    %al,(%rax)
 6cc:	52                   	push   %rdx
 6cd:	ff                   	(bad)  
 6ce:	ff                   	(bad)  
 6cf:	ff c8                	dec    %eax
 6d1:	00 00                	add    %al,(%rax)
 6d3:	00 78 ff             	add    %bh,-0x1(%rax)
 6d6:	ff                   	(bad)  
 6d7:	ff                   	(bad)  
 6d8:	e8 00 00 00 e8       	callq  ffffffffe80006dd <__TMC_END__+0xffffffffe7dff6c5>
 6dd:	ff                   	(bad)  
 6de:	ff                   	(bad)  
 6df:	ff 30                	pushq  (%rax)
 6e1:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

00000000000006e8 <__FRAME_END__-0x104>:
 6e8:	14 00                	adc    $0x0,%al
 6ea:	00 00                	add    %al,(%rax)
 6ec:	00 00                	add    %al,(%rax)
 6ee:	00 00                	add    %al,(%rax)
 6f0:	01 7a 52             	add    %edi,0x52(%rdx)
 6f3:	00 01                	add    %al,(%rcx)
 6f5:	78 10                	js     707 <__GNU_EH_FRAME_HDR+0x5f>
 6f7:	01 1b                	add    %ebx,(%rbx)
 6f9:	0c 07                	or     $0x7,%al
 6fb:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
 701:	00 00                	add    %al,(%rax)
 703:	00 1c 00             	add    %bl,(%rax,%rax,1)
 706:	00 00                	add    %al,(%rax)
 708:	e8 fd ff ff 2b       	callq  2c00070a <__TMC_END__+0x2bdff6f2>
	...
 715:	00 00                	add    %al,(%rax)
 717:	00 14 00             	add    %dl,(%rax,%rax,1)
 71a:	00 00                	add    %al,(%rax)
 71c:	00 00                	add    %al,(%rax)
 71e:	00 00                	add    %al,(%rax)
 720:	01 7a 52             	add    %edi,0x52(%rdx)
 723:	00 01                	add    %al,(%rcx)
 725:	78 10                	js     737 <__GNU_EH_FRAME_HDR+0x8f>
 727:	01 1b                	add    %ebx,(%rbx)
 729:	0c 07                	or     $0x7,%al
 72b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
 731:	00 00                	add    %al,(%rax)
 733:	00 1c 00             	add    %bl,(%rax,%rax,1)
 736:	00 00                	add    %al,(%rax)
 738:	98                   	cwtl   
 739:	fd                   	std    
 73a:	ff                   	(bad)  
 73b:	ff 10                	callq  *(%rax)
 73d:	00 00                	add    %al,(%rax)
 73f:	00 00                	add    %al,(%rax)
 741:	0e                   	(bad)  
 742:	10 46 0e             	adc    %al,0xe(%rsi)
 745:	18 4a 0f             	sbb    %cl,0xf(%rdx)
 748:	0b 77 08             	or     0x8(%rdi),%esi
 74b:	80 00 3f             	addb   $0x3f,(%rax)
 74e:	1a 3b                	sbb    (%rbx),%bh
 750:	2a 33                	sub    (%rbx),%dh
 752:	24 22                	and    $0x22,%al
 754:	00 00                	add    %al,(%rax)
 756:	00 00                	add    %al,(%rax)
 758:	14 00                	adc    $0x0,%al
 75a:	00 00                	add    %al,(%rax)
 75c:	44 00 00             	add    %r8b,(%rax)
 75f:	00 80 fd ff ff 08    	add    %al,0x8fffffd(%rax)
	...
 76d:	00 00                	add    %al,(%rax)
 76f:	00 1c 00             	add    %bl,(%rax,%rax,1)
 772:	00 00                	add    %al,(%rax)
 774:	5c                   	pop    %rsp
 775:	00 00                	add    %al,(%rax)
 777:	00 82 fe ff ff 1d    	add    %al,0x1dfffffe(%rdx)
 77d:	00 00                	add    %al,(%rax)
 77f:	00 00                	add    %al,(%rax)
 781:	41 0e                	rex.B (bad) 
 783:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
 789:	58                   	pop    %rax
 78a:	0c 07                	or     $0x7,%al
 78c:	08 00                	or     %al,(%rax)
 78e:	00 00                	add    %al,(%rax)
 790:	44 00 00             	add    %r8b,(%rax)
 793:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 797:	00 88 fe ff ff 65    	add    %cl,0x65fffffe(%rax)
 79d:	00 00                	add    %al,(%rax)
 79f:	00 00                	add    %al,(%rax)
 7a1:	42 0e                	rex.X (bad) 
 7a3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
 7a9:	8e 03                	mov    (%rbx),%es
 7ab:	45 0e                	rex.RB (bad) 
 7ad:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
 7b3:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86301601 <__TMC_END__+0xffffffff861005e9>
 7b9:	06                   	(bad)  
 7ba:	48 0e                	rex.W (bad) 
 7bc:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
 7c2:	72 0e                	jb     7d2 <__GNU_EH_FRAME_HDR+0x12a>
 7c4:	38 41 0e             	cmp    %al,0xe(%rcx)
 7c7:	30 41 0e             	xor    %al,0xe(%rcx)
 7ca:	28 42 0e             	sub    %al,0xe(%rdx)
 7cd:	20 42 0e             	and    %al,0xe(%rdx)
 7d0:	18 42 0e             	sbb    %al,0xe(%rdx)
 7d3:	10 42 0e             	adc    %al,0xe(%rdx)
 7d6:	08 00                	or     %al,(%rax)
 7d8:	10 00                	adc    %al,(%rax)
 7da:	00 00                	add    %al,(%rax)
 7dc:	c4                   	(bad)  
 7dd:	00 00                	add    %al,(%rax)
 7df:	00 b0 fe ff ff 02    	add    %dh,0x2fffffe(%rax)
 7e5:	00 00                	add    %al,(%rax)
 7e7:	00 00                	add    %al,(%rax)
 7e9:	00 00                	add    %al,(%rax)
	...

00000000000007ec <__FRAME_END__>:
 7ec:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000200df0 <__frame_dummy_init_array_entry>:
__init_array_start():
  200df0:	f0 05 00 00 00 00    	lock add $0x0,%eax
	...

Disassembly of section .fini_array:

0000000000200df8 <__do_global_dtors_aux_fini_array_entry>:
  200df8:	b0 05                	mov    $0x5,%al
  200dfa:	00 00                	add    %al,(%rax)
  200dfc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000200e00 <_DYNAMIC>:
  200e00:	01 00                	add    %eax,(%rax)
  200e02:	00 00                	add    %al,(%rax)
  200e04:	00 00                	add    %al,(%rax)
  200e06:	00 00                	add    %al,(%rax)
  200e08:	01 00                	add    %eax,(%rax)
  200e0a:	00 00                	add    %al,(%rax)
  200e0c:	00 00                	add    %al,(%rax)
  200e0e:	00 00                	add    %al,(%rax)
  200e10:	0c 00                	or     $0x0,%al
  200e12:	00 00                	add    %al,(%rax)
  200e14:	00 00                	add    %al,(%rax)
  200e16:	00 00                	add    %al,(%rax)
  200e18:	b8 04 00 00 00       	mov    $0x4,%eax
  200e1d:	00 00                	add    %al,(%rax)
  200e1f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 200e25 <_DYNAMIC+0x25>
  200e25:	00 00                	add    %al,(%rax)
  200e27:	00 94 06 00 00 00 00 	add    %dl,0x0(%rsi,%rax,1)
  200e2e:	00 00                	add    %al,(%rax)
  200e30:	19 00                	sbb    %eax,(%rax)
  200e32:	00 00                	add    %al,(%rax)
  200e34:	00 00                	add    %al,(%rax)
  200e36:	00 00                	add    %al,(%rax)
  200e38:	f0 0d 20 00 00 00    	lock or $0x20,%eax
  200e3e:	00 00                	add    %al,(%rax)
  200e40:	1b 00                	sbb    (%rax),%eax
  200e42:	00 00                	add    %al,(%rax)
  200e44:	00 00                	add    %al,(%rax)
  200e46:	00 00                	add    %al,(%rax)
  200e48:	08 00                	or     %al,(%rax)
  200e4a:	00 00                	add    %al,(%rax)
  200e4c:	00 00                	add    %al,(%rax)
  200e4e:	00 00                	add    %al,(%rax)
  200e50:	1a 00                	sbb    (%rax),%al
  200e52:	00 00                	add    %al,(%rax)
  200e54:	00 00                	add    %al,(%rax)
  200e56:	00 00                	add    %al,(%rax)
  200e58:	f8                   	clc    
  200e59:	0d 20 00 00 00       	or     $0x20,%eax
  200e5e:	00 00                	add    %al,(%rax)
  200e60:	1c 00                	sbb    $0x0,%al
  200e62:	00 00                	add    %al,(%rax)
  200e64:	00 00                	add    %al,(%rax)
  200e66:	00 00                	add    %al,(%rax)
  200e68:	08 00                	or     %al,(%rax)
  200e6a:	00 00                	add    %al,(%rax)
  200e6c:	00 00                	add    %al,(%rax)
  200e6e:	00 00                	add    %al,(%rax)
  200e70:	f5                   	cmc    
  200e71:	fe                   	(bad)  
  200e72:	ff 6f 00             	ljmp   *0x0(%rdi)
  200e75:	00 00                	add    %al,(%rax)
  200e77:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  200e7d:	00 00                	add    %al,(%rax)
  200e7f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 200e85 <_DYNAMIC+0x85>
  200e85:	00 00                	add    %al,(%rax)
  200e87:	00 48 03             	add    %cl,0x3(%rax)
  200e8a:	00 00                	add    %al,(%rax)
  200e8c:	00 00                	add    %al,(%rax)
  200e8e:	00 00                	add    %al,(%rax)
  200e90:	06                   	(bad)  
  200e91:	00 00                	add    %al,(%rax)
  200e93:	00 00                	add    %al,(%rax)
  200e95:	00 00                	add    %al,(%rax)
  200e97:	00 b8 02 00 00 00    	add    %bh,0x2(%rax)
  200e9d:	00 00                	add    %al,(%rax)
  200e9f:	00 0a                	add    %cl,(%rdx)
  200ea1:	00 00                	add    %al,(%rax)
  200ea3:	00 00                	add    %al,(%rax)
  200ea5:	00 00                	add    %al,(%rax)
  200ea7:	00 7d 00             	add    %bh,0x0(%rbp)
  200eaa:	00 00                	add    %al,(%rax)
  200eac:	00 00                	add    %al,(%rax)
  200eae:	00 00                	add    %al,(%rax)
  200eb0:	0b 00                	or     (%rax),%eax
  200eb2:	00 00                	add    %al,(%rax)
  200eb4:	00 00                	add    %al,(%rax)
  200eb6:	00 00                	add    %al,(%rax)
  200eb8:	18 00                	sbb    %al,(%rax)
  200eba:	00 00                	add    %al,(%rax)
  200ebc:	00 00                	add    %al,(%rax)
  200ebe:	00 00                	add    %al,(%rax)
  200ec0:	15 00 00 00 00       	adc    $0x0,%eax
	...
  200ecd:	00 00                	add    %al,(%rax)
  200ecf:	00 03                	add    %al,(%rbx)
  200ed1:	00 00                	add    %al,(%rax)
  200ed3:	00 00                	add    %al,(%rax)
  200ed5:	00 00                	add    %al,(%rax)
  200ed7:	00 c0                	add    %al,%al
  200ed9:	0f 20 00             	mov    %cr0,%rax
  200edc:	00 00                	add    %al,(%rax)
  200ede:	00 00                	add    %al,(%rax)
  200ee0:	07                   	(bad)  
  200ee1:	00 00                	add    %al,(%rax)
  200ee3:	00 00                	add    %al,(%rax)
  200ee5:	00 00                	add    %al,(%rax)
  200ee7:	00 f8                	add    %bh,%al
  200ee9:	03 00                	add    (%rax),%eax
  200eeb:	00 00                	add    %al,(%rax)
  200eed:	00 00                	add    %al,(%rax)
  200eef:	00 08                	add    %cl,(%rax)
  200ef1:	00 00                	add    %al,(%rax)
  200ef3:	00 00                	add    %al,(%rax)
  200ef5:	00 00                	add    %al,(%rax)
  200ef7:	00 c0                	add    %al,%al
  200ef9:	00 00                	add    %al,(%rax)
  200efb:	00 00                	add    %al,(%rax)
  200efd:	00 00                	add    %al,(%rax)
  200eff:	00 09                	add    %cl,(%rcx)
  200f01:	00 00                	add    %al,(%rax)
  200f03:	00 00                	add    %al,(%rax)
  200f05:	00 00                	add    %al,(%rax)
  200f07:	00 18                	add    %bl,(%rax)
  200f09:	00 00                	add    %al,(%rax)
  200f0b:	00 00                	add    %al,(%rax)
  200f0d:	00 00                	add    %al,(%rax)
  200f0f:	00 1e                	add    %bl,(%rsi)
  200f11:	00 00                	add    %al,(%rax)
  200f13:	00 00                	add    %al,(%rax)
  200f15:	00 00                	add    %al,(%rax)
  200f17:	00 08                	add    %cl,(%rax)
  200f19:	00 00                	add    %al,(%rax)
  200f1b:	00 00                	add    %al,(%rax)
  200f1d:	00 00                	add    %al,(%rax)
  200f1f:	00 fb                	add    %bh,%bl
  200f21:	ff                   	(bad)  
  200f22:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f25:	00 00                	add    %al,(%rax)
  200f27:	00 01                	add    %al,(%rcx)
  200f29:	00 00                	add    %al,(%rax)
  200f2b:	08 00                	or     %al,(%rax)
  200f2d:	00 00                	add    %al,(%rax)
  200f2f:	00 fe                	add    %bh,%dh
  200f31:	ff                   	(bad)  
  200f32:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f35:	00 00                	add    %al,(%rax)
  200f37:	00 d8                	add    %bl,%al
  200f39:	03 00                	add    (%rax),%eax
  200f3b:	00 00                	add    %al,(%rax)
  200f3d:	00 00                	add    %al,(%rax)
  200f3f:	00 ff                	add    %bh,%bh
  200f41:	ff                   	(bad)  
  200f42:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f45:	00 00                	add    %al,(%rax)
  200f47:	00 01                	add    %al,(%rcx)
  200f49:	00 00                	add    %al,(%rax)
  200f4b:	00 00                	add    %al,(%rax)
  200f4d:	00 00                	add    %al,(%rax)
  200f4f:	00 f0                	add    %dh,%al
  200f51:	ff                   	(bad)  
  200f52:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f55:	00 00                	add    %al,(%rax)
  200f57:	00 c6                	add    %al,%dh
  200f59:	03 00                	add    (%rax),%eax
  200f5b:	00 00                	add    %al,(%rax)
  200f5d:	00 00                	add    %al,(%rax)
  200f5f:	00 f9                	add    %bh,%cl
  200f61:	ff                   	(bad)  
  200f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  200f65:	00 00                	add    %al,(%rax)
  200f67:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000200fc0 <_GLOBAL_OFFSET_TABLE_>:
  200fc0:	00 0e                	add    %cl,(%rsi)
  200fc2:	20 00                	and    %al,(%rax)
	...

Disassembly of section .data:

0000000000201000 <__data_start>:
	...

0000000000201008 <__dso_handle>:
data_start():
  201008:	08 10                	or     %dl,(%rax)
  20100a:	20 00                	and    %al,(%rax)
  20100c:	00 00                	add    %al,(%rax)
	...

0000000000201010 <a>:
  201010:	0a 00                	or     (%rax),%al
	...

Disassembly of section .bss:

0000000000201014 <__bss_start>:
__bss_start():
  201014:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x440>
   a:	74 75                	je     81 <_init-0x437>
   c:	20 37                	and    %dh,(%rdi)
   e:	2e 35 2e 30 2d 33    	cs xor $0x332d302e,%eax
  14:	75 62                	jne    78 <_init-0x440>
  16:	75 6e                	jne    86 <_init-0x432>
  18:	74 75                	je     8f <_init-0x429>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	38 2e                	cmp    %ch,(%rsi)
  1f:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  22:	20 37                	and    %dh,(%rdi)
  24:	2e                   	cs
  25:	35                   	.byte 0x35
  26:	2e 30 00             	xor    %al,%cs:(%rax)
