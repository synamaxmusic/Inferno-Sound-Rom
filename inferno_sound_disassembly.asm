E000: AD 						;;checksum
E001: 0F       SEI				;SET INTERRUPT MASK
E002: 8E 00 7F lds  #$007F		;INITIALIZE STACK POINTER
E005: 8D 02    bsr  $E009
E007: 20 FE    bra  $E007
E009: CE 20 00 ldx  #$2000		;INDEX TO PIA
E00C: 6F 01    clr  (x+$01)		;ACCESS DDRA
E00E: 6F 03    clr  (x+$03)		;ACCESS DDRB
E010: 86 FF    lda  #$FF		;PA0-PA7
E012: A7 02    sta  (x+$02)
E014: C6 80    ldb  #$80
E016: E7 00    stb  (x+$00)
E018: 86 37    lda  #$37		;CB2 LOW, IRQ ALLOWED
E01A: A7 01    sta  (x+$01)
E01C: 86 3C    lda  #$3C		;CA2 SET INIT HIGH, NO IRQS
E01E: A7 03    sta  (x+$03)		;PROGRAM B CONTROL REG
E020: E7 00    stb  (x+$00)
E022: 0E       cli  			;CLEAR INTERRUPTS
E023: 86 C6    lda  #$C6
E025: 97 64    sta  $64
E027: 39       rts  
E028: 7F 00 59 clr  $0059
E02B: 7F 00 5A clr  $005A
E02E: CE EE 89 ldx  #$EE89
E031: DF 6B    stx  $6B
E033: CE EF 4B ldx  #$EF4B
E036: DF 6D    stx  $6D
E038: BD E7 F8 jsr  $E7F8
E03B: 20 FE    bra  $E03B
E03D: BD E7 80 jsr  $E780
E040: BD E7 B7 jsr  $E7B7
E043: CE 00 00 ldx  #$0000
E046: DF 5E    stx  $5E
E048: 7F 00 60 clr  $0060
E04B: CE 00 20 ldx  #$0020
E04E: DF 5C    stx  $5C
E050: 7A 00 41 dec  $0041
E053: 27 03    beq  $E058
E055: 7E E1 31 jmp  $E131
E058: 96 40    lda  $40
E05A: 9B 59    adda $59
E05C: 9B 5A    adda $5A
E05E: 97 41    sta  $41
E060: DE 5E    ldx  $5E
E062: A6 00    lda  (x+$00)
E064: D6 45    ldb  $45
E066: 27 10    beq  $E078
E068: D6 47    ldb  $47
E06A: 26 0C    bne  $E078
E06C: 16       tab  
E06D: 54       lsrb 
E06E: 27 03    beq  $E073
E070: 54       lsrb 
E071: 26 02    bne  $E075
E073: C9 00    adcb #$00
E075: 10       sba  
E076: A7 00    sta  (x+$00)
E078: B7 20 02 sta  $2002
E07B: 96 48    lda  $48
E07D: 27 14    beq  $E093
E07F: DE 5C    ldx  $5C
E081: A6 00    lda  (x+$00)
E083: 16       tab  
E084: C4 0F    andb #$0F
E086: 44       lsra 
E087: 44       lsra 
E088: 44       lsra 
E089: 44       lsra 
E08A: DB 60    addb $60
E08C: 24 03    bcc  $E091
E08E: 7C 00 5F inc  $005F
E091: D7 60    stb  $60
E093: 9B 5F    adda $5F
E095: 4C       inca 
E096: 94 72    anda $72
E098: 97 5F    sta  $5F
E09A: 27 03    beq  $E09F
E09C: 7E E1 31 jmp  $E131
E09F: DE 6D    ldx  $6D
E0A1: A6 0E    lda  (x+$0E)
E0A3: 27 0A    beq  $E0AF
E0A5: D6 65    ldb  $65
E0A7: 7C 00 65 inc  $0065
E0AA: 11       cba  
E0AB: 27 02    beq  $E0AF
E0AD: 20 39    bra  $E0E8
E0AF: 7F 00 65 clr  $0065
E0B2: A6 0F    lda  (x+$0F)
E0B4: 2B 11    bmi  $E0C7
E0B6: 27 0A    beq  $E0C2
E0B8: D6 66    ldb  $66
E0BA: 7C 00 66 inc  $0066
E0BD: 11       cba  
E0BE: 27 02    beq  $E0C2
E0C0: 20 26    bra  $E0E8
E0C2: 7F 00 66 clr  $0066
E0C5: 20 FE    bra  $E0C5
E0C7: 84 7F    anda #$7F
E0C9: 27 0A    beq  $E0D5
E0CB: D6 66    ldb  $66
E0CD: 5C       incb 
E0CE: 11       cba  
E0CF: 27 04    beq  $E0D5
E0D1: D7 66    stb  $66
E0D3: 20 13    bra  $E0E8
E0D5: EE 10    ldx  (x+$10)
E0D7: DF 6D    stx  $6D
E0D9: BD E7 F8 jsr  $E7F8
E0DC: 7F 00 66 clr  $0066
E0DF: 7F 00 59 clr  $0059
E0E2: 7F 00 5A clr  $005A
E0E5: 7E E0 3D jmp  $E03D
E0E8: 96 54    lda  $54
E0EA: 27 05    beq  $E0F1
E0EC: 7A 00 55 dec  $0055
E0EF: 26 2C    bne  $E11D
E0F1: DE 6B    ldx  $6B
E0F3: A6 01    lda  (x+$01)
E0F5: 97 54    sta  $54
E0F7: 97 55    sta  $55
E0F9: 27 1A    beq  $E115
E0FB: A6 00    lda  (x+$00)
E0FD: 97 40    sta  $40
E0FF: 97 41    sta  $41
E101: A6 02    lda  (x+$02)
E103: 97 42    sta  $42
E105: 97 43    sta  $43
E107: 08       inx  
E108: 08       inx  
E109: 08       inx  
E10A: DF 6B    stx  $6B
E10C: 7F 00 59 clr  $0059
E10F: 7F 00 5A clr  $005A
E112: 7E E0 3D jmp  $E03D
E115: A6 00    lda  (x+$00)
E117: 2C FE    bge  $E117
E119: EE 03    ldx  (x+$03)
E11B: DF 6B    stx  $6B
E11D: D6 45    ldb  $45
E11F: 27 10    beq  $E131
E121: 96 47    lda  $47
E123: 26 09    bne  $E12E
E125: 96 46    lda  $46
E127: 97 47    sta  $47
E129: 5A       decb 
E12A: D7 45    stb  $45
E12C: 20 03    bra  $E131
E12E: 4A       deca 
E12F: 97 47    sta  $47
E131: 96 48    lda  $48
E133: 27 4B    beq  $E180
E135: 7A 00 49 dec  $0049
E138: 26 46    bne  $E180
E13A: 97 49    sta  $49
E13C: D6 4D    ldb  $4D
E13E: 27 1D    beq  $E15D
E140: D6 4F    ldb  $4F
E142: 26 19    bne  $E15D
E144: DE 5C    ldx  $5C
E146: A6 00    lda  (x+$00)
E148: 16       tab  
E149: 54       lsrb 
E14A: 27 0C    beq  $E158
E14C: 54       lsrb 
E14D: 27 09    beq  $E158
E14F: 54       lsrb 
E150: 27 06    beq  $E158
E152: 54       lsrb 
E153: 27 03    beq  $E158
E155: 54       lsrb 
E156: 26 02    bne  $E15A
E158: C9 00    adcb #$00
E15A: 10       sba  
E15B: A7 00    sta  (x+$00)
E15D: DE 5C    ldx  $5C
E15F: 96 5D    lda  $5D
E161: 4C       inca 
E162: 97 5D    sta  $5D
E164: 81 40    cmpa #$40
E166: 26 18    bne  $E180
E168: 80 20    suba #$20
E16A: 97 5D    sta  $5D
E16C: D6 4D    ldb  $4D
E16E: 27 10    beq  $E180
E170: D6 4F    ldb  $4F
E172: 27 05    beq  $E179
E174: 5A       decb 
E175: D7 4F    stb  $4F
E177: 20 07    bra  $E180
E179: D6 4E    ldb  $4E
E17B: D7 4F    stb  $4F
E17D: 7A 00 4D dec  $004D
E180: 96 58    lda  $58
E182: 85 01    bita #$01
E184: 27 2F    beq  $E1B5
E186: 7A 00 51 dec  $0051
E189: 26 2D    bne  $E1B8
E18B: 16       tab  
E18C: CE 00 59 ldx  #$0059
E18F: C4 0C    andb #$0C
E191: 27 15    beq  $E1A8
E193: C1 04    cmpb #$04
E195: 26 05    bne  $E19C
E197: CE 00 44 ldx  #$0044
E19A: 20 0C    bra  $E1A8
E19C: C1 08    cmpb #$08
E19E: 26 05    bne  $E1A5
E1A0: CE 00 48 ldx  #$0048
E1A3: 20 03    bra  $E1A8
E1A5: CE 00 4C ldx  #$004C
E1A8: A6 00    lda  (x+$00)
E1AA: 94 57    anda $57
E1AC: 4C       inca 
E1AD: A7 00    sta  (x+$00)
E1AF: D6 50    ldb  $50
E1B1: D7 51    stb  $51
E1B3: 20 03    bra  $E1B8
E1B5: 7F 00 59 clr  $0059
E1B8: 96 58    lda  $58
E1BA: 85 02    bita #$02
E1BC: 26 06    bne  $E1C4
E1BE: 7F 00 5A clr  $005A
E1C1: 7E E0 50 jmp  $E050
E1C4: 7A 00 53 dec  $0053
E1C7: 26 44    bne  $E20D
E1C9: D6 52    ldb  $52
E1CB: D7 53    stb  $53
E1CD: 4D       tsta 
E1CE: 2B 08    bmi  $E1D8
E1D0: CE 00 59 ldx  #$0059
E1D3: 7F 00 5A clr  $005A
E1D6: 20 03    bra  $E1DB
E1D8: CE 00 5A ldx  #$005A
E1DB: 84 0C    anda #$0C
E1DD: 27 15    beq  $E1F4
E1DF: 81 04    cmpa #$04
E1E1: 26 05    bne  $E1E8
E1E3: CE 00 42 ldx  #$0042
E1E6: 20 0C    bra  $E1F4
E1E8: 81 08    cmpa #$08
E1EA: 26 05    bne  $E1F1
E1EC: CE 00 48 ldx  #$0048
E1EF: 20 03    bra  $E1F4
E1F1: CE 00 4A ldx  #$004A
E1F4: A6 00    lda  (x+$00)
E1F6: 81 01    cmpa #$01
E1F8: 22 03    bhi  $E1FD
E1FA: 7F 00 5B clr  $005B
E1FD: 91 56    cmpa $56
E1FF: 23 03    bls  $E204
E201: 7C 00 5B inc  $005B
E204: 4C       inca 
E205: D6 5B    ldb  $5B
E207: 27 02    beq  $E20B
E209: 80 02    suba #$02
E20B: A7 00    sta  (x+$00)
E20D: 7E E0 50 jmp  $E050
;; new sample wavetable synth
E210: 96 4E    lda  $4E
E212: 84 0F    anda #$0F
E214: 27 1E    beq  $E234
E216: 81 01    cmpa #$01
E218: 26 03    bne  $E21D
E21A: 7E E3 80 jmp  $E380
E21D: 81 02    cmpa #$02
E21F: 26 03    bne  $E224
E221: 7E E2 B8 jmp  $E2B8
E224: 81 03    cmpa #$03
E226: 26 03    bne  $E22B
E228: 7E E3 2D jmp  $E32D
E22B: 81 04    cmpa #$04
E22D: 26 03    bne  $E232
E22F: 7E E2 7B jmp  $E27B
E232: 20 FE    bra  $E232
E234: BD E8 80 jsr  $E880
E237: 96 4A    lda  $4A
E239: B7 20 02 sta  $2002
E23C: BD E9 47 jsr  $E947
E23F: 96 40    lda  $40
E241: 4A       deca 
E242: 26 FD    bne  $E241
E244: B6 20 02 lda  $2002
E247: 16       tab  
E248: 54       lsrb 
E249: 54       lsrb 
E24A: 54       lsrb 
E24B: 10       sba  
E24C: 7A 00 43 dec  $0043
E24F: 26 FA    bne  $E24B
E251: 9B 4B    adda $4B
E253: D6 42    ldb  $42
E255: D7 43    stb  $43
E257: B7 20 02 sta  $2002
E25A: 7A 00 47 dec  $0047
E25D: 26 07    bne  $E266
E25F: 7C 00 4B inc  $004B
E262: 96 46    lda  $46
E264: 97 47    sta  $47
E266: 7A 00 45 dec  $0045
E269: 26 D1    bne  $E23C
E26B: 7C 00 4A inc  $004A
E26E: 96 44    lda  $44
E270: 97 45    sta  $45
E272: BD E8 D6 jsr  $E8D6
E275: 27 C0    beq  $E237
E277: 2A 97    bpl  $E210
E279: 20 FE    bra  $E279
E27B: 96 4A    lda  $4A
E27D: B7 20 02 sta  $2002
E280: BD E9 47 jsr  $E947
E283: 96 40    lda  $40
E285: 4A       deca 
E286: 26 FD    bne  $E285
E288: B6 20 02 lda  $2002
E28B: 16       tab  
E28C: 54       lsrb 
E28D: 54       lsrb 
E28E: 54       lsrb 
E28F: 10       sba  
E290: 7A 00 43 dec  $0043
E293: 26 FA    bne  $E28F
E295: D6 42    ldb  $42
E297: D7 43    stb  $43
E299: 73 20 02 com  $2002
E29C: 7A 00 45 dec  $0045
E29F: 26 0D    bne  $E2AE
E2A1: 96 44    lda  $44
E2A3: 97 45    sta  $45
E2A5: B6 20 02 lda  $2002
E2A8: BD E8 68 jsr  $E868
E2AB: B7 20 02 sta  $2002
E2AE: BD E8 D6 jsr  $E8D6
E2B1: 27 CD    beq  $E280
E2B3: 2B FE    bmi  $E2B3
E2B5: 7E E2 10 jmp  $E210
E2B8: CE 00 00 ldx  #$0000
E2BB: 7F 00 60 clr  $0060
E2BE: 86 A5    lda  #$A5
E2C0: C6 5A    ldb  #$5A
E2C2: 97 61    sta  $61
E2C4: D7 62    stb  $62
E2C6: 96 64    lda  $64
E2C8: 97 63    sta  $63
E2CA: BD E7 48 jsr  $E748
E2CD: A7 00    sta  (x+$00)
E2CF: A7 20    sta  (x+$20)
E2D1: 08       inx  
E2D2: 8C 00 20 cmpx #$0020
E2D5: 26 F3    bne  $E2CA
E2D7: CE 00 00 ldx  #$0000
E2DA: C6 0C    ldb  #$0C
E2DC: 86 80    lda  #$80
E2DE: A7 00    sta  (x+$00)
E2E0: 08       inx  
E2E1: 5A       decb 
E2E2: 26 FA    bne  $E2DE
E2E4: B7 20 02 sta  $2002
E2E7: BD E9 47 jsr  $E947
E2EA: CE 00 00 ldx  #$0000
E2ED: 96 40    lda  $40
E2EF: 4A       deca 
E2F0: 26 FD    bne  $E2EF
E2F2: A6 01    lda  (x+$01)
E2F4: AB 00    adda (x+$00)
E2F6: 44       lsra 
E2F7: A7 00    sta  (x+$00)
E2F9: B6 20 02 lda  $2002
E2FC: 16       tab  
E2FD: 54       lsrb 
E2FE: 54       lsrb 
E2FF: 54       lsrb 
E300: 10       sba  
E301: 7A 00 43 dec  $0043
E304: 26 FA    bne  $E300
E306: E6 00    ldb  (x+$00)
E308: 54       lsrb 
E309: 1B       aba  
E30A: 84 FC    anda #$FC
E30C: D6 42    ldb  $42
E30E: D7 43    stb  $43
E310: B7 20 02 sta  $2002
E313: 08       inx  
E314: 8C 00 3F cmpx #$003F
E317: 26 D4    bne  $E2ED
E319: A6 00    lda  (x+$00)
E31B: CE 00 00 ldx  #$0000
E31E: AB 00    adda (x+$00)
E320: 44       lsra 
E321: A7 3F    sta  (x+$3F)
E323: BD E8 D6 jsr  $E8D6
E326: 27 BF    beq  $E2E7
E328: 2B FE    bmi  $E328
E32A: 7E E2 10 jmp  $E210
E32D: CE 00 00 ldx  #$0000
E330: 7F 00 60 clr  $0060
E333: 86 A5    lda  #$A5
E335: C6 5A    ldb  #$5A
E337: 97 61    sta  $61
E339: D7 62    stb  $62
E33B: 96 64    lda  $64
E33D: 97 63    sta  $63
E33F: BD E7 48 jsr  $E748
E342: A7 00    sta  (x+$00)
E344: 08       inx  
E345: 8C 00 40 cmpx #$0040
E348: 26 F5    bne  $E33F
E34A: 7F 20 02 clr  $2002
E34D: BD E9 47 jsr  $E947
E350: CE 00 00 ldx  #$0000
E353: 96 40    lda  $40
E355: 4A       deca 
E356: 26 FD    bne  $E355
E358: B6 20 02 lda  $2002
E35B: 16       tab  
E35C: 54       lsrb 
E35D: 54       lsrb 
E35E: 54       lsrb 
E35F: 10       sba  
E360: 7A 00 43 dec  $0043
E363: 26 FA    bne  $E35F
E365: E6 00    ldb  (x+$00)
E367: 54       lsrb 
E368: 1B       aba  
E369: D6 42    ldb  $42
E36B: D7 43    stb  $43
E36D: B7 20 02 sta  $2002
E370: 08       inx  
E371: 8C 00 3F cmpx #$003F
E374: 26 DD    bne  $E353
E376: BD E8 D6 jsr  $E8D6
E379: 27 D2    beq  $E34D
E37B: 2B FE    bmi  $E37B
E37D: 7E E2 10 jmp  $E210
;;
E380: CE 00 00 ldx  #$0000
E383: 86 FF    lda  #$FF
E385: A7 00    sta  (x+$00)
E387: 08       inx  
E388: 8C 00 07 cmpx #$0007
E38B: 26 F8    bne  $E385
E38D: 7F 00 60 clr  $0060
E390: 86 A5    lda  #$A5
E392: C6 5A    ldb  #$5A
E394: 97 61    sta  $61
E396: D7 62    stb  $62
E398: 96 64    lda  $64
E39A: 97 63    sta  $63
E39C: 96 60    lda  $60
E39E: D6 61    ldb  $61
E3A0: 53       comb 
E3A1: C5 09    bitb #$09
E3A3: 26 05    bne  $E3AA
E3A5: 53       comb 
E3A6: 46       rora 
E3A7: 56       rorb 
E3A8: 20 09    bra  $E3B3
E3AA: 53       comb 
E3AB: C5 09    bitb #$09
E3AD: 26 02    bne  $E3B1
E3AF: 27 F5    beq  $E3A6
E3B1: 44       lsra 
E3B2: 56       rorb 
E3B3: 97 60    sta  $60
E3B5: D7 61    stb  $61
E3B7: A7 00    sta  (x+$00)
E3B9: 08       inx  
E3BA: 8C 00 3F cmpx #$003F
E3BD: 26 DD    bne  $E39C
E3BF: BD E9 47 jsr  $E947
E3C2: CE 00 00 ldx  #$0000
E3C5: 96 40    lda  $40
E3C7: 4A       deca 
E3C8: 26 FD    bne  $E3C7
E3CA: A6 01    lda  (x+$01)
E3CC: D6 63    ldb  $63
E3CE: 58       aslb 
E3CF: 24 02    bcc  $E3D3
E3D1: D8 64    eorb $64
E3D3: D7 63    stb  $63
E3D5: D4 4D    andb $4D
E3D7: 26 05    bne  $E3DE
E3D9: AB 00    adda (x+$00)
E3DB: 44       lsra 
E3DC: A7 00    sta  (x+$00)
E3DE: D6 63    ldb  $63
E3E0: 58       aslb 
E3E1: 24 02    bcc  $E3E5
E3E3: D8 64    eorb $64
E3E5: D7 63    stb  $63
E3E7: D4 4C    andb $4C
E3E9: 27 03    beq  $E3EE
E3EB: 40       nega 
E3EC: A7 00    sta  (x+$00)
E3EE: B6 20 02 lda  $2002
E3F1: 16       tab  
E3F2: 54       lsrb 
E3F3: 54       lsrb 
E3F4: 54       lsrb 
E3F5: 10       sba  
E3F6: 7A 00 43 dec  $0043
E3F9: 26 FA    bne  $E3F5
E3FB: E6 00    ldb  (x+$00)
E3FD: 54       lsrb 
E3FE: 1B       aba  
E3FF: 84 FC    anda #$FC
E401: D6 42    ldb  $42
E403: D7 43    stb  $43
E405: B7 20 02 sta  $2002
E408: 08       inx  
E409: 8C 00 3F cmpx #$003F
E40C: 26 B7    bne  $E3C5
E40E: A6 00    lda  (x+$00)
E410: CE 00 00 ldx  #$0000
E413: D6 63    ldb  $63
E415: 58       aslb 
E416: 24 02    bcc  $E41A
E418: D8 64    eorb $64
E41A: D7 63    stb  $63
E41C: D4 4D    andb $4D
E41E: 26 05    bne  $E425
E420: AB 00    adda (x+$00)
E422: 44       lsra 
E423: A7 3F    sta  (x+$3F)
E425: D6 63    ldb  $63
E427: 58       aslb 
E428: 24 02    bcc  $E42C
E42A: D8 64    eorb $64
E42C: D7 63    stb  $63
E42E: D4 4C    andb $4C
E430: 27 01    beq  $E433
E432: 40       nega 
E433: B7 20 02 sta  $2002
E436: BD E8 D6 jsr  $E8D6
E439: 27 84    beq  $E3BF
E43B: 2B FE    bmi  $E43B
E43D: 7E E2 10 jmp  $E210
E440: BD E9 83 jsr  $E983
E443: CE 00 00 ldx  #$0000
E446: DF 6F    stx  $6F
E448: 86 60    lda  #$60
E44A: 97 42    sta  $42
E44C: 97 43    sta  $43
E44E: 86 09    lda  #$09
E450: 97 49    sta  $49
E452: 97 4A    sta  $4A
E454: 7F 00 44 clr  $0044
E457: 86 FF    lda  #$FF
E459: 97 47    sta  $47
E45B: 96 40    lda  $40
E45D: 4A       deca 
E45E: 26 FD    bne  $E45D
E460: DE 6F    ldx  $6F
E462: E6 00    ldb  (x+$00)
E464: 96 44    lda  $44
E466: 84 1F    anda #$1F
E468: BD E7 64 jsr  $E764
E46B: EB 10    addb (x+$10)
E46D: D4 47    andb $47
E46F: F7 20 02 stb  $2002
E472: 96 70    lda  $70
E474: 4C       inca 
E475: 97 70    sta  $70
E477: 81 40    cmpa #$40
E479: 26 E0    bne  $E45B
E47B: CE 00 00 ldx  #$0000
E47E: DF 6F    stx  $6F
E480: 96 48    lda  $48
E482: 27 1F    beq  $E4A3
E484: 7A 00 4A dec  $004A
E487: 26 1A    bne  $E4A3
E489: D6 49    ldb  $49
E48B: D7 4A    stb  $4A
E48D: D6 40    ldb  $40
E48F: C1 01    cmpb #$01
E491: 27 10    beq  $E4A3
E493: C1 25    cmpb #$25
E495: 27 0C    beq  $E4A3
E497: 44       lsra 
E498: 24 03    bcc  $E49D
E49A: 5A       decb 
E49B: 20 04    bra  $E4A1
E49D: 44       lsra 
E49E: 24 03    bcc  $E4A3
E4A0: 5C       incb 
E4A1: D7 40    stb  $40
E4A3: 7A 00 46 dec  $0046
E4A6: 26 B3    bne  $E45B
E4A8: 7C 00 44 inc  $0044
E4AB: 96 45    lda  $45
E4AD: 97 46    sta  $46
E4AF: 20 AA    bra  $E45B
;;GWLD
E4B1: 16       tab  
E4B2: 58       aslb 
E4B3: 1B       aba  
E4B4: 1B       aba  
E4B5: 1B       aba  
E4B6: CE FB B2 ldx  #$FBB2		;SOUND VECTOR TABLE
E4B9: BD E7 64 jsr  $E764
E4BC: A6 00    lda  (x+$00)
E4BE: 16       tab  
E4BF: 84 0F    anda #$0F
E4C1: 97 0C    sta  $0C			;GET CYCLE COUNT
E4C3: 54       lsrb 
E4C4: 54       lsrb 
E4C5: 54       lsrb 
E4C6: 54       lsrb 
E4C7: D7 0B    stb  $0B			;GET #ECHOS
E4C9: A6 01    lda  (x+$01)
E4CB: 16       tab  
E4CC: 54       lsrb 
E4CD: 54       lsrb 
E4CE: 54       lsrb 
E4CF: 54       lsrb 
E4D0: D7 0D    stb  $0D			
E4D2: 84 0F    anda #$0F		;WAVE #
E4D4: 97 02    sta  $02			;SAVE
E4D6: DF 04    stx  $04			;SAVE INDEX
E4D8: CE FA EF ldx  #$FAEF		;CALC WAVEFORM ADDR
;;GWLD2
E4DB: 7A 00 02 dec  $0002		;WAVE FORM #
E4DE: 2B 08    bmi  $E4E8		;FINIS
E4E0: A6 00    lda  (x+$00)
E4E2: 4C       inca 
E4E3: BD E7 64 jsr  $E764		;;ADDX
E4E6: 20 F3    bra  $E4DB
;;GWLD3
E4E8: DF 10    stx  $10
E4EA: BD E5 BC jsr  $E5BC
E4ED: DE 04    ldx  $04
E4EF: A6 02    lda  (x+$02)
E4F1: 97 12    sta  $12
E4F3: 9B 73    adda $73
E4F5: BD E5 CE jsr  $E5CE
E4F8: 7F 00 73 clr  $0073
E4FB: DE 04    ldx  $04
E4FD: A6 03    lda  (x+$03)
E4FF: 97 0E    sta  $0E
E501: A6 04    lda  (x+$04)
E503: 97 0F    sta  $0F
E505: A6 05    lda  (x+$05)
E507: 16       tab  
E508: A6 06    lda  (x+$06)
E50A: CE FC 06 ldx  #$FC06
E50D: BD E7 64 jsr  $E764
E510: 17       tba  
E511: DF 13    stx  $13
E513: 7F 00 1B clr  $001B
E516: BD E7 64 jsr  $E764
E519: DF 15    stx  $15
E51B: 39       rts  
E51C: 96 0B    lda  $0B
E51E: 97 1A    sta  $1A
E520: DE 13    ldx  $13
E522: DF 06    stx  $06
E524: DE 06    ldx  $06
E526: 96 76    lda  $76
E528: 27 12    beq  $E53C
E52A: 2B 10    bmi  $E53C
E52C: DF 69    stx  $69
E52E: 9B 6A    adda $6A
E530: 97 6A    sta  $6A
E532: 5F       clrb 
E533: D9 69    adcb $69
E535: D7 69    stb  $69
E537: 7F 00 76 clr  $0076
E53A: DE 69    ldx  $69
E53C: A6 00    lda  (x+$00)
E53E: 9B 1B    adda $1B
E540: 97 19    sta  $19
E542: 9C 15    cmpx $15
E544: 27 26    beq  $E56C
E546: D6 0C    ldb  $0C
E548: 08       inx  
E549: DF 06    stx  $06
E54B: CE 00 1C ldx  #$001C
E54E: 96 19    lda  $19
E550: 4A       deca 
E551: 26 FD    bne  $E550
E553: A6 00    lda  (x+$00)
E555: B7 20 02 sta  $2002
E558: 08       inx  
E559: 9C 17    cmpx $17
E55B: 26 F1    bne  $E54E
E55D: 5A       decb 
E55E: 27 C4    beq  $E524
E560: 08       inx  
E561: 09       dex  
E562: 08       inx  
E563: 09       dex  
E564: 08       inx  
E565: 09       dex  
E566: 08       inx  
E567: 09       dex  
E568: 01       nop  
E569: 01       nop  
E56A: 20 DF    bra  $E54B
E56C: 96 0D    lda  $0D
E56E: 8D 5E    bsr  $E5CE
E570: 7A 00 1A dec  $001A
E573: 26 AB    bne  $E520
E575: 96 0E    lda  $0E
E577: 27 42    beq  $E5BB
E579: 7A 00 0F dec  $000F
E57C: 27 3D    beq  $E5BB
E57E: 9B 1B    adda $1B
E580: 97 1B    sta  $1B
E582: DE 13    ldx  $13
E584: 5F       clrb 
E585: 96 1B    lda  $1B
E587: 7D 00 0E tst  $000E
E58A: 2B 06    bmi  $E592
E58C: AB 00    adda (x+$00)
E58E: 25 08    bcs  $E598
E590: 20 0B    bra  $E59D
E592: AB 00    adda (x+$00)
E594: 27 02    beq  $E598
E596: 25 05    bcs  $E59D
E598: 5D       tstb 
E599: 27 08    beq  $E5A3
E59B: 20 0F    bra  $E5AC
E59D: 5D       tstb 
E59E: 26 03    bne  $E5A3
E5A0: DF 13    stx  $13
E5A2: 5C       incb 
E5A3: 08       inx  
E5A4: 9C 15    cmpx $15
E5A6: 26 DD    bne  $E585
E5A8: 5D       tstb 
E5A9: 26 01    bne  $E5AC
E5AB: 39       rts  
E5AC: DF 15    stx  $15
E5AE: 96 0D    lda  $0D
E5B0: 27 06    beq  $E5B8
E5B2: 8D 08    bsr  $E5BC
E5B4: 96 12    lda  $12
E5B6: 8D 16    bsr  $E5CE
E5B8: 7E E5 1C jmp  $E51C
E5BB: 39       rts  
;;WVTRAN
E5BC: CE 00 1C ldx  #$001C
E5BF: DF 08    stx  $08
E5C1: DE 10    ldx  $10
E5C3: E6 00    ldb  (x+$00)
E5C5: 08       inx  
E5C6: BD E6 00 jsr  $E600
E5C9: DE 08    ldx  $08
E5CB: DF 17    stx  $17
E5CD: 39       rts  
E5CE: 4D       tsta 
E5CF: 27 2E    beq  $E5FF
E5D1: DE 10    ldx  $10
E5D3: DF 06    stx  $06
E5D5: CE 00 1C ldx  #$001C
E5D8: 97 03    sta  $03
E5DA: DF 08    stx  $08
E5DC: DE 06    ldx  $06
E5DE: D6 03    ldb  $03
E5E0: D7 02    stb  $02
E5E2: E6 01    ldb  (x+$01)
E5E4: 54       lsrb 
E5E5: 54       lsrb 
E5E6: 54       lsrb 
E5E7: 54       lsrb 
E5E8: 08       inx  
E5E9: DF 06    stx  $06
E5EB: DE 08    ldx  $08
E5ED: A6 00    lda  (x+$00)
E5EF: 10       sba  
E5F0: 7A 00 02 dec  $0002
E5F3: 26 FA    bne  $E5EF
E5F5: A7 00    sta  (x+$00)
E5F7: 08       inx  
E5F8: 9C 17    cmpx $17
E5FA: 26 DE    bne  $E5DA
E5FC: 7C 00 73 inc  $0073
E5FF: 39       rts  
E600: 36       psha 
E601: A6 00    lda  (x+$00)
E603: DF 06    stx  $06
E605: DE 08    ldx  $08
E607: A7 00    sta  (x+$00)
E609: 08       inx  
E60A: DF 08    stx  $08
E60C: DE 06    ldx  $06
E60E: 08       inx  
E60F: 5A       decb 
E610: 26 EF    bne  $E601
E612: 32       pula 
E613: 39       rts  
E614: E6 1E    ldb  (x+$1E)
E616: E6 23    ldb  (x+$23)
E618: 01       nop  
E619: 01       nop  
E61A: 01       nop  
E61B: FF 03 E8 stx  $03E8
E61E: CE E6 18 ldx  #$E618
E621: 20 07    bra  $E62A
E623: 4F       clra 
E624: 97 10    sta  $10
E626: C6 03    ldb  #$03
E628: 20 10    bra  $E63A
E62A: A6 00    lda  (x+$00)
E62C: 97 10    sta  $10
E62E: A6 01    lda  (x+$01)
E630: 97 11    sta  $11
E632: A6 02    lda  (x+$02)
E634: E6 03    ldb  (x+$03)
E636: EE 04    ldx  (x+$04)
E638: 20 00    bra  $E63A
E63A: 97 0F    sta  $0F
E63C: D7 0A    stb  $0A
E63E: DF 0D    stx  $0D
E640: 7F 00 0C clr  $000C
E643: 86 AF    lda  #$AF
E645: B7 20 02 sta  $2002
E648: 97 00    sta  $00
E64A: 97 01    sta  $01
E64C: DE 0D    ldx  $0D
E64E: B6 20 02 lda  $2002
E651: 16       tab  
E652: 54       lsrb 
E653: 54       lsrb 
E654: 54       lsrb 
E655: D8 01    eorb $01
E657: 54       lsrb 
E658: 76 00 00 ror  $0000
E65B: 76 00 01 ror  $0001
E65E: D6 0A    ldb  $0A
E660: 7D 00 10 tst  $0010
E663: 27 04    beq  $E669
E665: D4 00    andb $00
E667: DB 11    addb $11
E669: D7 0B    stb  $0B
E66B: D6 0C    ldb  $0C
E66D: 91 01    cmpa $01
E66F: 22 12    bhi  $E683
E671: 09       dex  
E672: 27 26    beq  $E69A
E674: B7 20 02 sta  $2002
E677: DB 0C    addb $0C
E679: 99 0B    adca $0B
E67B: 25 16    bcs  $E693
E67D: 91 01    cmpa $01
E67F: 23 F0    bls  $E671
E681: 20 10    bra  $E693
E683: 09       dex  
E684: 27 14    beq  $E69A
E686: B7 20 02 sta  $2002
E689: D0 0C    subb $0C
E68B: 92 0B    sbca $0B
E68D: 25 04    bcs  $E693
E68F: 91 01    cmpa $01
E691: 22 F0    bhi  $E683
E693: 96 01    lda  $01
E695: B7 20 02 sta  $2002
E698: 20 B7    bra  $E651
E69A: D6 0F    ldb  $0F
E69C: 27 B3    beq  $E651
E69E: 96 0A    lda  $0A
E6A0: D6 0C    ldb  $0C
E6A2: 44       lsra 
E6A3: 56       rorb 
E6A4: 44       lsra 
E6A5: 56       rorb 
E6A6: 44       lsra 
E6A7: 56       rorb 
E6A8: 43       coma 
E6A9: 50       negb 
E6AA: 82 FF    sbca #$FF
E6AC: DB 0C    addb $0C
E6AE: 99 0A    adca $0A
E6B0: D7 0C    stb  $0C
E6B2: 97 0A    sta  $0A
E6B4: 26 96    bne  $E64C
E6B6: C1 07    cmpb #$07
E6B8: 26 92    bne  $E64C
E6BA: 39       rts  
E6BB: DE 6D    ldx  $6D
E6BD: 86 FF    lda  #$FF
E6BF: B7 20 02 sta  $2002
E6C2: 08       inx  
E6C3: 08       inx  
E6C4: 08       inx  
E6C5: 08       inx  
E6C6: 08       inx  
E6C7: A6 03    lda  (x+$03)
E6C9: 97 03    sta  $03
E6CB: A6 04    lda  (x+$04)
E6CD: B7 20 02 sta  $2002
E6D0: A6 01    lda  (x+$01)
E6D2: 97 02    sta  $02
E6D4: E6 00    ldb  (x+$00)
E6D6: 2A 0F    bpl  $E6E7
E6D8: C5 7F    bitb #$7F
E6DA: 27 FE    beq  $E6DA
E6DC: 86 FF    lda  #$FF
E6DE: 4A       deca 
E6DF: 26 FD    bne  $E6DE
E6E1: 5A       decb 
E6E2: 26 F8    bne  $E6DC
E6E4: 08       inx  
E6E5: 20 E0    bra  $E6C7
E6E7: D7 01    stb  $01
E6E9: A6 02    lda  (x+$02)
E6EB: 97 00    sta  $00
E6ED: 5A       decb 
E6EE: 26 FD    bne  $E6ED
E6F0: 73 20 02 com  $2002
E6F3: D6 01    ldb  $01
E6F5: 4A       deca 
E6F6: 26 F5    bne  $E6ED
E6F8: 96 00    lda  $00
E6FA: DB 03    addb $03
E6FC: D7 01    stb  $01
E6FE: D1 02    cmpb $02
E700: 26 EB    bne  $E6ED
E702: 20 BE    bra  $E6C2
E704: 2A 1B    bpl  $E721
E706: 32       pula 
E707: FF FF D8 stx  $FFD8
E70A: 2E 1D    bgt  $E729
E70C: 22 FF    bhi  $E70D
E70E: FF 23 49 stx  $2349
E711: 0F       sei  
E712: 01       nop  
E713: FF 80 2A stx  $802A
E716: 1B       aba  
E717: 32       pula 
E718: FF FF D8 stx  $FFD8
E71B: 2E 1D    bgt  $E73A
E71D: 22 FF    bhi  $E71E
E71F: FF 23 41 stx  $2341
E722: 0F       sei  
E723: 01       nop  
E724: FF 80 2D stx  $802D
E727: 0D       sec  
E728: 20 FF    bra  $E729
E72A: FF D8 30 stx  $D830
E72D: 19       daa  
E72E: 22 FF    bhi  $E72F
E730: FF 19 47 stx  $1947
E733: 0C       clc  
E734: 01       nop  
E735: FF 80 49 stx  $8049
E738: 31       ins  
E739: 12       illegal
E73A: FF FF D8 stx  $FFD8
E73D: 53       comb 
E73E: 3A       illegal
E73F: 15       illegal
E740: FF FF 38 stx  $FF38
E743: 61       illegal
E744: 10       sba  
E745: 01       nop  
E746: FF 80 96 stx  $8096
E749: 60 D6    neg  (x+$D6)
E74B: 61       illegal
E74C: 53       comb 
E74D: C5 09    bitb #$09
E74F: 26 05    bne  $E756
E751: 53       comb 
E752: 46       rora 
E753: 56       rorb 
E754: 20 09    bra  $E75F
E756: 53       comb 
E757: C5 09    bitb #$09
E759: 26 02    bne  $E75D
E75B: 27 F5    beq  $E752
E75D: 44       lsra 
E75E: 56       rorb 
E75F: 97 60    sta  $60
E761: D7 61    stb  $61
E763: 39       rts  
;;ADDX
E764: DF 69    stx  $69
E766: 9B 6A    adda $6A
E768: 97 6A    sta  $6A
E76A: 96 69    lda  $69
E76C: 89 00    adca #$00
E76E: 97 69    sta  $69
E770: DE 69    ldx  $69
E772: 39       rts  
;;ADDB?
E773: DF 69    stx  $69
E775: DB 6A    addb $6A
E777: D7 6A    stb  $6A
E779: 99 69    adca $69
E77B: 97 69    sta  $69
E77D: DE 69    ldx  $69
E77F: 39       rts  
;;
E780: CE 00 00 ldx  #$0000
E783: DF 5E    stx  $5E
E785: DE 6F    ldx  $6F
E787: DF 69    stx  $69
E789: DE 69    ldx  $69
E78B: A6 00    lda  (x+$00)
E78D: 08       inx  
E78E: DF 69    stx  $69
E790: D6 42    ldb  $42
E792: 27 17    beq  $E7AB
E794: D7 67    stb  $67
E796: 16       tab  
E797: 54       lsrb 
E798: 27 09    beq  $E7A3
E79A: 54       lsrb 
E79B: 27 06    beq  $E7A3
E79D: 54       lsrb 
E79E: 27 03    beq  $E7A3
E7A0: 54       lsrb 
E7A1: 26 02    bne  $E7A5
E7A3: C9 00    adcb #$00
E7A5: 10       sba  
E7A6: 7A 00 67 dec  $0067
E7A9: 26 EB    bne  $E796
E7AB: DE 5E    ldx  $5E
E7AD: A7 00    sta  (x+$00)
E7AF: 7C 00 5F inc  $005F
E7B2: 9C 71    cmpx $71
E7B4: 26 D3    bne  $E789
E7B6: 39       rts  
E7B7: CE 00 20 ldx  #$0020
E7BA: DF 5C    stx  $5C
E7BC: CE ED 2A ldx  #$ED2A
E7BF: DF 69    stx  $69
E7C1: DE 69    ldx  $69
E7C3: A6 00    lda  (x+$00)
E7C5: 08       inx  
E7C6: 8C ED 4A cmpx #$ED4A
E7C9: 26 03    bne  $E7CE
E7CB: CE ED 2A ldx  #$ED2A
E7CE: DF 69    stx  $69
E7D0: D6 4A    ldb  $4A
E7D2: 27 17    beq  $E7EB
E7D4: D7 4B    stb  $4B
E7D6: 16       tab  
E7D7: 54       lsrb 
E7D8: 27 09    beq  $E7E3
E7DA: 54       lsrb 
E7DB: 27 06    beq  $E7E3
E7DD: 54       lsrb 
E7DE: 27 03    beq  $E7E3
E7E0: 54       lsrb 
E7E1: 26 02    bne  $E7E5
E7E3: C9 00    adcb #$00
E7E5: 10       sba  
E7E6: 7A 00 4B dec  $004B
E7E9: 26 EB    bne  $E7D6
E7EB: DE 5C    ldx  $5C
E7ED: A7 00    sta  (x+$00)
E7EF: 7C 00 5D inc  $005D
E7F2: 8C 00 3F cmpx #$003F
E7F5: 26 CA    bne  $E7C1
E7F7: 39       rts  
E7F8: 36       psha 
E7F9: DE 6D    ldx  $6D
E7FB: A6 00    lda  (x+$00)
E7FD: 97 40    sta  $40
E7FF: 97 41    sta  $41
E801: A6 01    lda  (x+$01)
E803: 97 42    sta  $42
E805: 97 43    sta  $43
E807: A6 02    lda  (x+$02)
E809: 97 44    sta  $44
E80B: 97 45    sta  $45
E80D: A6 03    lda  (x+$03)
E80F: 97 46    sta  $46
E811: 97 47    sta  $47
E813: A6 04    lda  (x+$04)
E815: 97 48    sta  $48
E817: 97 49    sta  $49
E819: A6 05    lda  (x+$05)
E81B: 97 4A    sta  $4A
E81D: 97 4B    sta  $4B
E81F: A6 06    lda  (x+$06)
E821: 97 4C    sta  $4C
E823: 97 4D    sta  $4D
E825: A6 07    lda  (x+$07)
E827: 97 4E    sta  $4E
E829: 97 4F    sta  $4F
E82B: A6 08    lda  (x+$08)
E82D: 97 50    sta  $50
E82F: 97 51    sta  $51
E831: A6 09    lda  (x+$09)
E833: 97 52    sta  $52
E835: 97 53    sta  $53
E837: A6 0A    lda  (x+$0A)
E839: 97 54    sta  $54
E83B: 97 55    sta  $55
E83D: A6 0B    lda  (x+$0B)
E83F: 97 56    sta  $56
E841: A6 0C    lda  (x+$0C)
E843: 97 57    sta  $57
E845: A6 0D    lda  (x+$0D)
E847: 97 58    sta  $58
E849: 85 10    bita #$10
E84B: 26 19    bne  $E866
E84D: DE 6B    ldx  $6B
E84F: A6 00    lda  (x+$00)
E851: 97 40    sta  $40
E853: 97 41    sta  $41
E855: A6 01    lda  (x+$01)
E857: 97 54    sta  $54
E859: 97 55    sta  $55
E85B: A6 02    lda  (x+$02)
E85D: 97 42    sta  $42
E85F: 97 43    sta  $43
E861: 08       inx  
E862: 08       inx  
E863: 08       inx  
E864: DF 6B    stx  $6B
E866: 32       pula 
E867: 39       rts  
E868: 91 50    cmpa $50
E86A: 22 03    bhi  $E86F
E86C: 7F 00 52 clr  $0052
E86F: 91 51    cmpa $51
E871: 23 03    bls  $E876
E873: 7C 00 52 inc  $0052
E876: 4C       inca 
E877: D6 52    ldb  $52
E879: 27 02    beq  $E87D
E87B: 80 02    suba #$02
E87D: 97 53    sta  $53
E87F: 39       rts  
;;
E880: DE 6B    ldx  $6B
E882: A6 00    lda  (x+$00)
E884: 97 40    sta  $40
E886: 97 41    sta  $41
E888: A6 01    lda  (x+$01)
E88A: 97 48    sta  $48
E88C: 97 49    sta  $49
E88E: DE 6D    ldx  $6D
E890: A6 01    lda  (x+$01)
E892: 97 42    sta  $42
E894: 97 43    sta  $43
E896: A6 02    lda  (x+$02)
E898: 97 44    sta  $44
E89A: 97 45    sta  $45
E89C: A6 03    lda  (x+$03)
E89E: 97 46    sta  $46
E8A0: 97 47    sta  $47
E8A2: A6 05    lda  (x+$05)
E8A4: 97 4A    sta  $4A
E8A6: A6 06    lda  (x+$06)
E8A8: 97 4B    sta  $4B
E8AA: A6 07    lda  (x+$07)
E8AC: 97 4C    sta  $4C
E8AE: A6 08    lda  (x+$08)
E8B0: 97 4D    sta  $4D
E8B2: A6 0A    lda  (x+$0A)
E8B4: 97 4F    sta  $4F
E8B6: A6 09    lda  (x+$09)
E8B8: 97 4E    sta  $4E
E8BA: 85 20    bita #$20
E8BC: 27 07    beq  $E8C5
E8BE: BD E7 48 jsr  $E748
E8C1: 97 4A    sta  $4A
E8C3: 96 4E    lda  $4E
E8C5: 85 10    bita #$10
E8C7: 27 0C    beq  $E8D5
E8C9: A6 00    lda  (x+$00)
E8CB: 97 40    sta  $40
E8CD: 97 41    sta  $41
E8CF: A6 04    lda  (x+$04)
E8D1: 97 48    sta  $48
E8D3: 97 49    sta  $49
E8D5: 39       rts  
E8D6: DE 6D    ldx  $6D
E8D8: A6 0B    lda  (x+$0B)
E8DA: 27 0A    beq  $E8E6
E8DC: D6 65    ldb  $65
E8DE: 5C       incb 
E8DF: 11       cba  
E8E0: 27 04    beq  $E8E6
E8E2: D7 65    stb  $65
E8E4: 20 32    bra  $E918
E8E6: 7F 00 65 clr  $0065
E8E9: A6 0C    lda  (x+$0C)
E8EB: 2B 11    bmi  $E8FE
E8ED: 27 0A    beq  $E8F9
E8EF: D6 66    ldb  $66
E8F1: 7C 00 66 inc  $0066
E8F4: 11       cba  
E8F5: 27 02    beq  $E8F9
E8F7: 20 1F    bra  $E918
E8F9: 7F 00 66 clr  $0066
E8FC: 20 46    bra  $E944
E8FE: 84 7F    anda #$7F
E900: 27 0A    beq  $E90C
E902: D6 66    ldb  $66
E904: 5C       incb 
E905: 11       cba  
E906: 27 04    beq  $E90C
E908: D7 66    stb  $66
E90A: 20 0C    bra  $E918
E90C: EE 0D    ldx  (x+$0D)
E90E: DF 6D    stx  $6D
E910: BD E8 80 jsr  $E880
E913: 7F 00 66 clr  $0066
E916: 20 29    bra  $E941
E918: 96 48    lda  $48
E91A: 27 05    beq  $E921
E91C: 7A 00 49 dec  $0049
E91F: 26 1E    bne  $E93F
E921: DE 6B    ldx  $6B
E923: A6 01    lda  (x+$01)
E925: 97 48    sta  $48
E927: 97 49    sta  $49
E929: 27 0C    beq  $E937
E92B: A6 00    lda  (x+$00)
E92D: 97 40    sta  $40
E92F: 08       inx  
E930: 08       inx  
E931: DF 6B    stx  $6B
E933: 20 0C    bra  $E941
E935: 20 0D    bra  $E944
E937: A6 00    lda  (x+$00)
E939: 2C FE    bge  $E939
E93B: EE 02    ldx  (x+$02)
E93D: DF 6B    stx  $6B
E93F: 4F       clra 
E940: 39       rts  
E941: 86 01    lda  #$01
E943: 39       rts  
E944: 86 FF    lda  #$FF
E946: 39       rts  
E947: 96 4F    lda  $4F
E949: 44       lsra 
E94A: 24 06    bcc  $E952
E94C: 7C 00 40 inc  $0040
E94F: 7C 00 41 inc  $0041
E952: 44       lsra 
E953: 24 06    bcc  $E95B
E955: 7C 00 42 inc  $0042
E958: 7C 00 43 inc  $0043
E95B: 44       lsra 
E95C: 24 06    bcc  $E964
E95E: 7C 00 44 inc  $0044
E961: 7C 00 45 inc  $0045
E964: 44       lsra 
E965: 24 06    bcc  $E96D
E967: 7C 00 46 inc  $0046
E96A: 7C 00 47 inc  $0047
E96D: 44       lsra 
E96E: 24 06    bcc  $E976
E970: 7C 00 48 inc  $0048
E973: 7C 00 49 inc  $0049
E976: 44       lsra 
E977: 24 03    bcc  $E97C
E979: 7C 00 4C inc  $004C
E97C: 44       lsra 
E97D: 24 03    bcc  $E982
E97F: 7C 00 4D inc  $004D
E982: 39       rts  
E983: CE 00 00 ldx  #$0000
E986: 7F 00 60 clr  $0060
E989: 86 A5    lda  #$A5
E98B: C6 5A    ldb  #$5A
E98D: 97 61    sta  $61
E98F: D7 62    stb  $62
E991: 96 64    lda  $64
E993: 97 63    sta  $63
E995: 96 60    lda  $60
E997: D6 61    ldb  $61
E999: 53       comb 
E99A: C5 09    bitb #$09
E99C: 26 05    bne  $E9A3
E99E: 53       comb 
E99F: 46       rora 
E9A0: 56       rorb 
E9A1: 20 09    bra  $E9AC
E9A3: 53       comb 
E9A4: C5 09    bitb #$09
E9A6: 26 02    bne  $E9AA
E9A8: 27 F5    beq  $E99F
E9AA: 44       lsra 
E9AB: 56       rorb 
E9AC: 97 60    sta  $60
E9AE: D7 61    stb  $61
E9B0: A7 00    sta  (x+$00)
E9B2: 08       inx  
E9B3: 8C 00 3F cmpx #$003F
E9B6: 26 DD    bne  $E995
E9B8: 39       rts  
*
* INTERRUPT PROCESSING
*
E9B9: 8E 00 7F lds  #$007F
E9BC: B6 20 00 lda  $2000
E9BF: 0E       cli  
E9C0: 81 6F    cmpa #$6F
E9C2: 26 07    bne  $E9CB
E9C4: 97 02    sta  $02
E9C6: BD E0 09 jsr  $E009
E9C9: 96 02    lda  $02
;;
E9CB: 81 AF    cmpa #$AF
E9CD: 22 02    bhi  $E9D1
E9CF: 8D 28    bsr  $E9F9
E9D1: 86 3C    lda  #$3C
E9D3: B7 20 03 sta  $2003
E9D6: 86 37    lda  #$37
E9D8: B7 20 01 sta  $2001
E9DB: 20 FE    bra  $E9DB
E9DD: 0F       sei  
E9DE: 8E 00 7F lds  #$007F
E9E1: 4F       clra 
E9E2: CE FF FF ldx  #$FFFF
E9E5: 5F       clrb 
E9E6: E9 00    adcb (x+$00)
E9E8: 09       dex  
E9E9: 8C E0 00 cmpx #$E000
E9EC: 26 F8    bne  $E9E6
E9EE: E1 00    cmpb (x+$00)
E9F0: 26 FE    bne  $E9F0
E9F2: 86 01    lda  #$01
E9F4: 8D 03    bsr  $E9F9
E9F6: 20 E5    bra  $E9DD
E9F8: 39       rts  
;;
E9F9: C6 3C    ldb  #$3C
E9FB: F7 20 01 stb  $2001
E9FE: C6 3F    ldb  #$3F
EA00: F7 20 01 stb  $2001
EA03: 4D       tsta 
EA04: 27 F2    beq  $E9F8
EA06: D6 76    ldb  $76
EA08: CA 80    orb  #$80
EA0A: D7 76    stb  $76
EA0C: D6 75    ldb  $75
EA0E: 81 A0    cmpa #$A0
EA10: 26 0B    bne  $EA1D
EA12: 7F 00 74 clr  $0074
EA15: 7F 00 73 clr  $0073
EA18: 7F 00 76 clr  $0076
EA1B: 20 55    bra  $EA72
;;
EA1D: 81 A4    cmpa #$A4
EA1F: 26 0E    bne  $EA2F
EA21: D6 74    ldb  $74
EA23: CB 05    addb #$05
EA25: D7 73    stb  $73
EA27: D6 76    ldb  $76
EA29: C4 7F    andb #$7F
EA2B: D7 76    stb  $76
EA2D: 20 43    bra  $EA72
;;
EA2F: C1 A0    cmpb #$A0
EA31: 26 1B    bne  $EA4E
EA33: 97 75    sta  $75
EA35: D6 73    ldb  $73
EA37: D7 74    stb  $74
EA39: 96 07    lda  $07
EA3B: 90 14    suba $14
EA3D: D6 06    ldb  $06
EA3F: D0 13    subb $13
EA41: 56       rorb 
EA42: 1B       aba  
EA43: 8A 80    ora  #$80
EA45: 97 76    sta  $76
EA47: 96 75    lda  $75
EA49: 7F 00 73 clr  $0073
EA4C: 20 26    bra  $EA74
;;
EA4E: C1 A4    cmpb #$A4
EA50: 26 1D    bne  $EA6F
EA52: 97 75    sta  $75
EA54: D6 74    ldb  $74
EA56: DB 73    addb $73
EA58: D7 74    stb  $74
EA5A: 96 07    lda  $07
EA5C: 90 14    suba $14
EA5E: D6 06    ldb  $06
EA60: D0 13    subb $13
EA62: 56       rorb 
EA63: 1B       aba  
EA64: 8A 80    ora  #$80
EA66: 97 76    sta  $76
EA68: 96 75    lda  $75
EA6A: 7F 00 73 clr  $0073
EA6D: 20 05    bra  $EA74
;;
EA6F: 7F 00 73 clr  $0073
EA72: 97 75    sta  $75
EA74: CE EB AC ldx  #$EBAC
EA77: 4A       deca 
EA78: 16       tab  
EA79: 4F       clra 
EA7A: 58       aslb 
EA7B: 89 00    adca #$00
EA7D: BD E7 73 jsr  $E773
;;
EA80: A6 00    lda  (x+$00)
EA82: E6 01    ldb  (x+$01)
EA84: 48       asla 
EA85: CE EB 96 ldx  #$EB96
EA88: BD E7 64 jsr  $E764
EA8B: EE 00    ldx  (x+$00)
EA8D: 17       tba  
EA8E: 6E 00    jmp  (x+$00)
EA90: BD E4 B1 jsr  $E4B1
EA93: 7E E5 1C jmp  $E51C
EA96: CE E6 14 ldx  #$E614
EA99: 48       asla 
EA9A: BD E7 64 jsr  $E764
EA9D: EE 00    ldx  (x+$00)
EA9F: 6E 00    jmp  (x+$00)
EAA1: CE EA DA ldx  #$EADA
EAA4: 48       asla 
EAA5: 1B       aba  
EAA6: BD E7 64 jsr  $E764
EAA9: A6 00    lda  (x+$00)
EAAB: 97 40    sta  $40
EAAD: A6 01    lda  (x+$01)
EAAF: 97 45    sta  $45
EAB1: 97 46    sta  $46
EAB3: A6 02    lda  (x+$02)
EAB5: 97 48    sta  $48
EAB7: 7E E4 40 jmp  $E440
EABA: CE EA D2 ldx  #$EAD2
EABD: DF 69    stx  $69
EABF: 48       asla 
EAC0: 9B 6A    adda $6A
EAC2: 24 03    bcc  $EAC7
EAC4: 7C 00 69 inc  $0069
EAC7: 97 6A    sta  $6A
EAC9: DE 69    ldx  $69
EACB: EE 00    ldx  (x+$00)
EACD: DF 6D    stx  $6D
EACF: 7E E6 BB jmp  $E6BB
EAD2: E6 FF    ldb  (x+$FF)
EAD4: E7 10    stb  (x+$10)
EAD6: E7 21    stb  (x+$21)
EAD8: E7 32    stb  (x+$32)
EADA: 20 04    bra  $EAE0
EADC: 00       illegal
EADD: 19       daa  
EADE: 08       inx  
EADF: 01       nop  
EAE0: 13       illegal
EAE1: 09       dex  
EAE2: 01       nop  
EAE3: 05       illegal
EAE4: 05       illegal
EAE5: 02       illegal
EAE6: CE F3 BB ldx  #$F3BB
EAE9: 20 0D    bra  $EAF8
EAEB: CE F2 5B ldx  #$F25B
EAEE: 20 08    bra  $EAF8
EAF0: CE F2 7B ldx  #$F27B
EAF3: 20 03    bra  $EAF8
EAF5: CE F2 9B ldx  #$F29B
EAF8: BD E7 48 jsr  $E748
EAFB: C4 03    andb #$03
EAFD: 20 06    bra  $EB05
EAFF: 7E E9 D1 jmp  $E9D1
EB02: CE F2 BB ldx  #$F2BB
EB05: 4F       clra 
EB06: 58       aslb 
EB07: 89 00    adca #$00
EB09: 48       asla 
EB0A: 58       aslb 
EB0B: 89 00    adca #$00
EB0D: 48       asla 
EB0E: 58       aslb 
EB0F: 89 00    adca #$00
EB11: BD E7 73 jsr  $E773
EB14: 8C F3 EB cmpx #$F3EB
EB17: 27 E6    beq  $EAFF
EB19: A6 00    lda  (x+$00)
EB1B: 97 6B    sta  $6B
EB1D: A6 01    lda  (x+$01)
EB1F: 97 6C    sta  $6C
EB21: A6 02    lda  (x+$02)
EB23: 97 6D    sta  $6D
EB25: A6 03    lda  (x+$03)
EB27: 97 6E    sta  $6E
EB29: A6 04    lda  (x+$04)
EB2B: 97 6F    sta  $6F
EB2D: A6 05    lda  (x+$05)
EB2F: 97 70    sta  $70
EB31: A6 06    lda  (x+$06)
EB33: 97 71    sta  $71
EB35: A6 07    lda  (x+$07)
EB37: 97 72    sta  $72
EB39: DE 6B    ldx  $6B
EB3B: BD E7 F8 jsr  $E7F8
EB3E: 7F 00 66 clr  $0066
EB41: 7F 00 65 clr  $0065
EB44: 7F 00 59 clr  $0059
EB47: 7F 00 5A clr  $005A
EB4A: 7E E0 3D jmp  $E03D
EB4D: BD E7 48 jsr  $E748
EB50: 84 03    anda #$03
EB52: 48       asla 
EB53: CE EB 5D ldx  #$EB5D
EB56: BD E7 64 jsr  $E764
EB59: EE 00    ldx  (x+$00)
EB5B: 20 1B    bra  $EB78
EB5D: FA DF FA orb  $DFFA
EB60: E3       illegal
EB61: FA E7 FA orb  $E7FA
EB64: EB 
;;
EB65: 4F       CLRA
EB66: 58       aslb 
EB67: 89 00    adca #$00
EB69: 48       asla 
EB6A: 58       aslb 
EB6B: 89 00    adca #$00
EB6D: CE F9 B7 ldx  #$F9B7
EB70: BD E7 73 jsr  $E773
;;
EB73: 8C FA EF cmpx #$FAEF
EB76: 27 87    beq  $EAFF
EB78: A6 00    lda  (x+$00)
EB7A: 97 6B    sta  $6B
EB7C: A6 01    lda  (x+$01)
EB7E: 97 6C    sta  $6C
EB80: A6 02    lda  (x+$02)
EB82: 97 6D    sta  $6D
EB84: A6 03    lda  (x+$03)
EB86: 97 6E    sta  $6E
EB88: A6 04    lda  (x+$04)
EB8A: BD E8 80 jsr  $E880
EB8D: 7F 00 66 clr  $0066
EB90: 7F 00 65 clr  $0065
EB93: 7E E2 10 jmp  $E210
EB96: EA 90    orb  (x+$90)
EB98: EA 96    orb  (x+$96)
EB9A: EB 02    addb (x+$02)
EB9C: EB 65    addb (x+$65)
EB9E: EA A1    orb  (x+$A1)
EBA0: EA EB    orb  (x+$EB)
EBA2: EA F0    orb  (x+$F0)
EBA4: EA F5    orb  (x+$F5)
EBA6: EB 4D    addb (x+$4D)
EBA8: EA E6    orb  (x+$E6)
EBAA: EA BA    orb  (x+$BA)
;;
EBAC: 00       illegal
EBAD: 00       illegal
EBAE: 00       illegal
EBAF: 01       nop  
EBB0: 00       illegal
EBB1: 02       illegal
EBB2: 00       illegal
EBB3: 03       illegal
EBB4: 00       illegal
EBB5: 04       illegal
EBB6: 01       nop  
EBB7: 00       illegal
EBB8: 04       illegal
EBB9: 00       illegal
EBBA: 05       illegal
EBBB: 00       illegal
EBBC: 06       tap  
EBBD: 00       illegal
EBBE: 07       tpa  
EBBF: 00       illegal
EBC0: 02       illegal
EBC1: 00       illegal
EBC2: 02       illegal
EBC3: 24 02    bcc  $EBC7
EBC5: 01       nop  
EBC6: 00       illegal
EBC7: 00       illegal
EBC8: 00       illegal
EBC9: 00       illegal
EBCA: 00       illegal
EBCB: 00       illegal
EBCC: 00       illegal
EBCD: 00       illegal
EBCE: 00       illegal
EBCF: 00       illegal
EBD0: 02       illegal
EBD1: 02       illegal
EBD2: 00       illegal
EBD3: 00       illegal
EBD4: 00       illegal
EBD5: 00       illegal
EBD6: 00       illegal
EBD7: 00       illegal
EBD8: 02       illegal
EBD9: 03       illegal
EBDA: 00       illegal
EBDB: 00       illegal
EBDC: 00       illegal
EBDD: 00       illegal
EBDE: 02       illegal
EBDF: 04       illegal
EBE0: 00       illegal
EBE1: 00       illegal
EBE2: 00       illegal
EBE3: 00       illegal
EBE4: 02       illegal
EBE5: 05       illegal
EBE6: 02       illegal
EBE7: 06       tap  
EBE8: 02       illegal
EBE9: 07       tpa  
EBEA: 02       illegal
EBEB: 08       inx  
EBEC: 02       illegal
EBED: 09       dex  
EBEE: 00       illegal
EBEF: 00       illegal
EBF0: 00       illegal
EBF1: 00       illegal
EBF2: 00       illegal
EBF3: 00       illegal
EBF4: 02       illegal
EBF5: 0A       clv  
EBF6: 02       illegal
EBF7: 0B       sev  
EBF8: 00       illegal
EBF9: 00       illegal
EBFA: 02       illegal
EBFB: 0C       clc  
EBFC: 02       illegal
EBFD: 0D       sec  
EBFE: 02       illegal
EBFF: 0E       cli  
EC00: 00       illegal
EC01: 00       illegal
EC02: 00       illegal
EC03: 00       illegal
EC04: 02       illegal
EC05: 0E       cli  
EC06: 02       illegal
EC07: 0F       sei  
EC08: 02       illegal
EC09: 10       sba  
EC0A: 02       illegal
EC0B: 11       cba  
EC0C: 02       illegal
EC0D: 12       illegal
EC0E: 02       illegal
EC0F: 11       cba  
EC10: 00       illegal
EC11: 00       illegal
EC12: 02       illegal
EC13: 14       illegal
EC14: 00       illegal
EC15: 00       illegal
EC16: 02       illegal
EC17: 15       illegal
EC18: 02       illegal
EC19: 16       tab  
EC1A: 00       illegal
EC1B: 00       illegal
EC1C: 00       illegal
EC1D: 00       illegal
EC1E: 00       illegal
EC1F: 00       illegal
EC20: 02       illegal
EC21: 17       tba  
EC22: 02       illegal
EC23: 18       illegal
EC24: 02       illegal
EC25: 19       daa  
EC26: 02       illegal
EC27: 15       illegal
EC28: 02       illegal
EC29: 16       tab  
EC2A: 03       illegal
EC2B: 00       illegal
EC2C: 03       illegal
EC2D: 01       nop  
EC2E: 03       illegal
EC2F: 02       illegal
EC30: 03       illegal
EC31: 03       illegal
EC32: 03       illegal
EC33: 04       illegal
EC34: 03       illegal
EC35: 05       illegal
EC36: 03       illegal
EC37: 06       tap  
EC38: 03       illegal
EC39: 07       tpa  
EC3A: 03       illegal
EC3B: 08       inx  
EC3C: 03       illegal
EC3D: 09       dex  
EC3E: 03       illegal
EC3F: 0A       clv  
EC40: 03       illegal
EC41: 0B       sev  
EC42: 03       illegal
EC43: 0C       clc  
EC44: 03       illegal
EC45: 0D       sec  
EC46: 03       illegal
EC47: 0E       cli  
EC48: 03       illegal
EC49: 0F       sei  
EC4A: 03       illegal
EC4B: 10       sba  
EC4C: 03       illegal
EC4D: 11       cba  
EC4E: 03       illegal
EC4F: 12       illegal
EC50: 03       illegal
EC51: 13       illegal
EC52: 03       illegal
EC53: 14       illegal
EC54: 03       illegal
EC55: 15       illegal
EC56: 03       illegal
EC57: 16       tab  
EC58: 03       illegal
EC59: 17       tba  
EC5A: 03       illegal
EC5B: 18       illegal
EC5C: 03       illegal
EC5D: 19       daa  
EC5E: 03       illegal
EC5F: 1A       illegal
EC60: 03       illegal
EC61: 1B       aba  
EC62: 03       illegal
EC63: 1C       illegal
EC64: 03       illegal
EC65: 1D       illegal
EC66: 03       illegal
EC67: 1E       illegal
EC68: 03       illegal
EC69: 1F       illegal
EC6A: 03       illegal
EC6B: 20 03    bra  $EC70
EC6D: 21 03    brn  $EC72
EC6F: 22 03    bhi  $EC74
EC71: 23 03    bls  $EC76
EC73: 24 03    bcc  $EC78
EC75: 26 03    bne  $EC7A
EC77: 27 03    beq  $EC7C
EC79: 28 03    bvc  $EC7E
EC7B: 2A 03    bpl  $EC80
EC7D: 2B 03    bmi  $EC82
EC7F: 2F 03    ble  $EC84
EC81: 30       tsx  
EC82: 03       illegal
EC83: 31       ins  
EC84: 03       illegal
EC85: 32       pula 
EC86: 03       illegal
EC87: 33       pulb 
EC88: 03       illegal
EC89: 34       des  
EC8A: 03       illegal
EC8B: 35       txs  
EC8C: 03       illegal
EC8D: 36       psha 
EC8E: 03       illegal
EC8F: 37       pshb 
EC90: 03       illegal
EC91: 38       illegal
EC92: 03       illegal
EC93: 39       rts  
EC94: 04       illegal
EC95: 01       nop  
EC96: 04       illegal
EC97: 02       illegal
EC98: 00       illegal
EC99: 05       illegal
EC9A: 00       illegal
EC9B: 06       tap  
EC9C: 01       nop  
EC9D: 01       nop  
EC9E: 02       illegal
EC9F: 17       tba  
ECA0: 03       illegal
ECA1: 3A       illegal
ECA2: 03       illegal
ECA3: 3B       rti  
ECA4: 03       illegal
ECA5: 3C       illegal
ECA6: 03       illegal
ECA7: 3D       illegal
ECA8: 03       illegal
ECA9: 3E       wai  
ECAA: 03       illegal
ECAB: 3F       swi  
ECAC: 03       illegal
ECAD: 40       nega 
ECAE: 03       illegal
ECAF: 41       illegal
ECB0: 03       illegal
ECB1: 42       illegal
ECB2: 03       illegal
ECB3: 43       coma 
ECB4: 03       illegal
ECB5: 44       lsra 
ECB6: 03       illegal
ECB7: 45       illegal
ECB8: 03       illegal
ECB9: 46       rora 
ECBA: 03       illegal
ECBB: 47       asra 
ECBC: 02       illegal
ECBD: 18       illegal
ECBE: 02       illegal
ECBF: 1F       illegal
ECC0: 02       illegal
ECC1: 20 02    bra  $ECC5
ECC3: 1B       aba  
ECC4: 02       illegal
ECC5: 22 02    bhi  $ECC9
ECC7: 23 00    bls  $ECC9
ECC9: 00       illegal
ECCA: 00       illegal
ECCB: 00       illegal
ECCC: 00       illegal
ECCD: 00       illegal
ECCE: 00       illegal
ECCF: 00       illegal
ECD0: 00       illegal
ECD1: 00       illegal
ECD2: 00       illegal
ECD3: 00       illegal
ECD4: 00       illegal
ECD5: 00       illegal
ECD6: 00       illegal
ECD7: 00       illegal
ECD8: 03       illegal
ECD9: 48       asla 
ECDA: 03       illegal
ECDB: 49       rola 
ECDC: 08       inx  
ECDD: 00       illegal
ECDE: 03       illegal
ECDF: 4A       deca 
ECE0: 03       illegal
ECE1: 4B       illegal
ECE2: 03       illegal
ECE3: 4C       inca 
ECE4: 03       illegal
ECE5: 4D       tsta 
ECE6: 02       illegal
ECE7: 24 00    bcc  $ECE9
ECE9: 00       illegal
ECEA: 00       illegal
ECEB: 07       tpa  
ECEC: 00       illegal
ECED: 08       inx  
ECEE: 00       illegal
ECEF: 09       dex  
ECF0: 00       illegal
ECF1: 0A       clv  
ECF2: 00       illegal
ECF3: 0B       sev  
ECF4: 09       dex  
ECF5: 00       illegal
ECF6: 02       illegal
ECF7: 20 02    bra  $ECFB
ECF9: 21 02    brn  $ECFD
ECFB: 22 02    bhi  $ECFF
ECFD: 23 0A    bls  $ED09
ECFF: 00       illegal
ED00: 0A       clv  
ED01: 01       nop  
ED02: 0A       clv  
ED03: 02       illegal
ED04: 0A       clv  
ED05: 03       illegal
ED06: 04       illegal
ED07: 03       illegal
ED08: 02       illegal
ED09: 25 99    bcs  $ECA4
ED0B: B1 C8 DB cmpa $C8DB
ED0E: EB F7    addb (x+$F7)
ED10: FE FF FE ldx  $FFFE
ED13: F7 EB DB stb  $EBDB
ED16: C8 B1    eorb #$B1
ED18: 99 81    adca $81
ED1A: 68 50    asl  (x+$50)
ED1C: 39       rts  
ED1D: 26 16    bne  $ED35
ED1F: 0A       clv  
ED20: 03       illegal
ED21: 01       nop  
ED22: 03       illegal
ED23: 0A       clv  
ED24: 16       tab  
ED25: 26 39    bne  $ED60
ED27: 50       negb 
ED28: 68 81    asl  (x+$81)
ED2A: 99 B1    adca $B1
ED2C: C8 DB    eorb #$DB
ED2E: EB F7    addb (x+$F7)
ED30: FE FF FE ldx  $FFFE
ED33: F7 EB DB stb  $EBDB
ED36: C8 B1    eorb #$B1
ED38: 99 81    adca $81
ED3A: 68 50    asl  (x+$50)
ED3C: 39       rts  
ED3D: 26 16    bne  $ED55
ED3F: 0A       clv  
ED40: 03       illegal
ED41: 01       nop  
ED42: 03       illegal
ED43: 0A       clv  
ED44: 16       tab  
ED45: 26 39    bne  $ED80
ED47: 50       negb 
ED48: 68 81    asl  (x+$81)
ED4A: B1 A8 B5 cmpa $A8B5
ED4D: E7 F2    stb  (x+$F2)
ED4F: EC       illegal
ED50: FD       illegal
ED51: FE FF FE ldx  $FFFE
ED54: E2 CD    sbcb (x+$CD)
ED56: D8 BA    eorb $BA
ED58: 81 81    cmpa #$81
ED5A: 80 47    suba #$47
ED5C: 29 34    bvs  $ED92
ED5E: 1F       illegal
ED5F: 03       illegal
ED60: 02       illegal
ED61: 03       illegal
ED62: 04       illegal
ED63: 15       illegal
ED64: 0F       sei  
ED65: 1A       illegal
ED66: 4C       inca 
ED67: 59       rolb 
ED68: 50       negb 
ED69: 81 DA    cmpa #$DA
ED6B: FA FC F4 orb  $FCF4
ED6E: ED       illegal
ED6F: F6 FF FC ldb  $FFFC
ED72: FB FF E0 addb $FFE0
ED75: AA 9A    ora  (x+$9A)
ED77: B8 DF F1 eora $DFF1
ED7A: EE E0    ldx  (x+$E0)
ED7C: DB F4    addb $F4
ED7E: FD       illegal
ED7F: BF 76 5E sts  $765E
ED82: 6E 84    jmp  (x+$84)
ED84: 7D 56 2D tst  $562D
ED87: 20 3B    bra  $EDC4
ED89: 81 C6    cmpa #$C6
ED8B: E1 D4    cmpb (x+$D4)
ED8D: AB 84    adda (x+$84)
ED8F: 7D 93 A3 tst  $93A3
ED92: 8B 42    adda #$42
ED94: 04       illegal
ED95: 0D       sec  
ED96: 26 21    bne  $EDB9
ED98: 13       illegal
ED99: 10       sba  
ED9A: 22 49    bhi  $EDE5
ED9C: 67 57    asr  (x+$57)
ED9E: 21 01    brn  $EDA1
EDA0: 06       tap  
EDA1: 05       illegal
EDA2: 01       nop  
EDA3: 0B       sev  
EDA4: 14       illegal
EDA5: 0D       sec  
EDA6: 05       illegal
EDA7: 07       tpa  
EDA8: 27 81    beq  $ED2B
EDAA: FB FD C5 addb $FDC5
EDAD: A5 DF    bita (x+$DF)
EDAF: FD       illegal
EDB0: FC       illegal
EDB1: FB FF EE addb $FFEE
EDB4: F5 FB CA bitb $FBCA
EDB7: 3F       swi  
EDB8: 1E       illegal
EDB9: 81 E3    cmpa #$E3
EDBB: C2 37    sbcb #$37
EDBD: 06       tap  
EDBE: 0C       clc  
EDBF: 13       illegal
EDC0: 02       illegal
EDC1: 06       tap  
EDC2: 05       illegal
EDC3: 04       illegal
EDC4: 22 5C    bhi  $EE22
EDC6: 3C       illegal
EDC7: 04       illegal
EDC8: 06       tap  
EDC9: 81 B9    cmpa #$B9
EDCB: B0 A4 94 suba $A494
EDCE: 80 6C    suba #$6C
EDD0: 59       rolb 
EDD1: 49       rola 
EDD2: 40       nega 
EDD3: 38       illegal
EDD4: 38       illegal
EDD5: 3A       illegal
EDD6: 3E       wai  
EDD7: 40       nega 
EDD8: 41       illegal
EDD9: 43       coma 
EDDA: 45       illegal
EDDB: 4B       illegal
EDDC: 53       comb 
EDDD: 5D       tstb 
EDDE: 6B       illegal
EDDF: 7B       illegal
EDE0: 8F 9F AF sts  #$9FAF
EDE3: B8 C5 CF eora $C5CF
EDE6: DB E2    addb $E2
EDE8: E2 DA    sbcb (x+$DA)
EDEA: D0 C6    subb $C6
EDEC: 00       illegal
EDED: 00       illegal
EDEE: FF 00 ED stx  $00ED
EDF1: EE 04    ldx  (x+$04)
EDF3: 04       illegal
EDF4: 04       illegal
EDF5: 1E       illegal
EDF6: 00       illegal
EDF7: 00       illegal
EDF8: 60 04    neg  (x+$04)
EDFA: 60 08    neg  (x+$08)
EDFC: 60 18    neg  (x+$18)
EDFE: 00       illegal
EDFF: 00       illegal
EE00: 01       nop  
EE01: 20 02    bra  $EE05
EE03: 20 03    bra  $EE08
EE05: 1D       illegal
EE06: 02       illegal
EE07: 20 04    bra  $EE0D
EE09: 10       sba  
EE0A: 03       illegal
EE0B: 20 05    bra  $EE12
EE0D: 0A       clv  
EE0E: 01       nop  
EE0F: 40       nega 
EE10: 00       illegal
EE11: 00       illegal
EE12: C0 07    subb #$07
EE14: C0 20    subb #$20
EE16: 80 20    suba #$20
EE18: 70 40 50 neg  $4050
EE1B: 60 40    neg  (x+$40)
EE1D: 80 30    suba #$30
EE1F: A0 20    suba (x+$20)
EE21: C0 10    subb #$10
EE23: D0 FF    subb $FF
EE25: 00       illegal
EE26: EE 12    ldx  (x+$12)
EE28: 09       dex  
EE29: C0 0A    subb #$0A
EE2B: BC 09 C0 cmpx $09C0
EE2E: 0A       clv  
EE2F: BC 09 C0 cmpx $09C0
EE32: 00       illegal
EE33: 00       illegal
EE34: 01       nop  
EE35: 10       sba  
EE36: 02       illegal
EE37: 03       illegal
EE38: 01       nop  
EE39: 72       illegal
EE3A: 01       nop  
EE3B: 00       illegal
EE3C: 50       negb 
EE3D: 60 40    neg  (x+$40)
EE3F: 80 20    suba #$20
EE41: C0 10    subb #$10
EE43: D0 FF    subb $FF
EE45: 00       illegal
EE46: EE 3C    ldx  (x+$3C)
EE48: 01       nop  
EE49: 2E 02    bgt  $EE4D
EE4B: 37       pshb 
EE4C: 03       illegal
EE4D: A1 04    cmpa (x+$04)
EE4F: EF 07    stx  (x+$07)
EE51: E6 00    ldb  (x+$00)
EE53: 00       illegal
EE54: 03       illegal
EE55: 2E 01    bgt  $EE58
EE57: 37       pshb 
EE58: 03       illegal
EE59: 8B 04    adda #$04
EE5B: 8C 0B 72 cmpx #$0B72
EE5E: 10       sba  
EE5F: FF 00 00 stx  $0000
EE62: 01       nop  
EE63: 13       illegal
EE64: 04       illegal
EE65: 09       dex  
EE66: 05       illegal
EE67: 09       dex  
EE68: 05       illegal
EE69: 07       tpa  
EE6A: 04       illegal
EE6B: 09       dex  
EE6C: 09       dex  
EE6D: 0F       sei  
EE6E: 09       dex  
EE6F: 0F       sei  
EE70: 09       dex  
EE71: 0F       sei  
EE72: 01       nop  
EE73: 10       sba  
EE74: 04       illegal
EE75: 09       dex  
EE76: 03       illegal
EE77: 07       tpa  
EE78: 05       illegal
EE79: 09       dex  
EE7A: 04       illegal
EE7B: 09       dex  
EE7C: 09       dex  
EE7D: 0F       sei  
EE7E: 09       dex  
EE7F: 0F       sei  
EE80: 09       dex  
EE81: 0F       sei  
EE82: 09       dex  
EE83: 0F       sei  
EE84: 00       illegal
EE85: 00       illegal
EE86: 00       illegal
EE87: 00       illegal
EE88: 00       illegal
EE89: FF 00 00 stx  $0000
EE8C: EE 89    ldx  (x+$89)
EE8E: 02       illegal
EE8F: 20 00    bra  $EE91
EE91: 04       illegal
EE92: 20 03    bra  $EE97
EE94: 07       tpa  
EE95: 20 01    bra  $EE98
EE97: 06       tap  
EE98: 20 09    bra  $EEA3
EE9A: 05       illegal
EE9B: 20 05    bra  $EEA2
EE9D: 03       illegal
EE9E: 20 01    bra  $EEA1
EEA0: 05       illegal
EEA1: 20 09    bra  $EEAC
EEA3: 04       illegal
EEA4: 02       illegal
EEA5: 03       illegal
EEA6: 01       nop  
EEA7: 06       tap  
EEA8: 09       dex  
EEA9: 04       illegal
EEAA: 02       illegal
EEAB: 05       illegal
EEAC: 01       nop  
EEAD: 06       tap  
EEAE: 00       illegal
EEAF: 04       illegal
EEB0: 02       illegal
EEB1: 00       illegal
EEB2: 01       nop  
EEB3: 06       tap  
EEB4: 04       illegal
EEB5: 05       illegal
EEB6: 20 05    bra  $EEBD
EEB8: 01       nop  
EEB9: 20 02    bra  $EEBD
EEBB: 04       illegal
EEBC: 20 02    bra  $EEC0
EEBE: 01       nop  
EEBF: 20 01    bra  $EEC2
EEC1: 02       illegal
EEC2: 20 09    bra  $EECD
EEC4: 04       illegal
EEC5: 20 09    bra  $EED0
EEC7: 07       tpa  
EEC8: 20 03    bra  $EECD
EECA: 05       illegal
EECB: 20 04    bra  $EED1
EECD: 09       dex  
EECE: 20 02    bra  $EED2
EED0: 08       inx  
EED1: 24 00    bcc  $EED3
EED3: 0A       clv  
EED4: 09       dex  
EED5: 01       nop  
EED6: 0B       sev  
EED7: F0 00 00 subb $0000
EEDA: 00       illegal
EEDB: 00       illegal
EEDC: 06       tap  
EEDD: 07       tpa  
EEDE: 00       illegal
EEDF: 07       tpa  
EEE0: 07       tpa  
EEE1: 00       illegal
EEE2: 08       inx  
EEE3: 05       illegal
EEE4: 00       illegal
EEE5: 00       illegal
EEE6: 00       illegal
EEE7: 00       illegal
EEE8: 00       illegal
EEE9: 07       tpa  
EEEA: 02       illegal
EEEB: 00       illegal
EEEC: 06       tap  
EEED: 04       illegal
EEEE: 00       illegal
EEEF: 05       illegal
EEF0: 18       illegal
EEF1: 00       illegal
EEF2: 00       illegal
EEF3: 00       illegal
EEF4: 00       illegal
EEF5: 08       inx  
EEF6: 02       illegal
EEF7: 00       illegal
EEF8: 07       tpa  
EEF9: 04       illegal
EEFA: 00       illegal
EEFB: 06       tap  
EEFC: 0B       sev  
EEFD: 00       illegal
EEFE: 00       illegal
EEFF: 00       illegal
EF00: 00       illegal
EF01: 06       tap  
EF02: 0B       sev  
EF03: 00       illegal
EF04: 07       tpa  
EF05: 04       illegal
EF06: 00       illegal
EF07: 04       illegal
EF08: 10       sba  
EF09: 00       illegal
EF0A: 00       illegal
EF0B: 00       illegal
EF0C: 00       illegal
EF0D: 01       nop  
EF0E: 03       illegal
EF0F: 00       illegal
EF10: 04       illegal
EF11: 10       sba  
EF12: 00       illegal
EF13: 00       illegal
EF14: 00       illegal
EF15: 00       illegal
EF16: 05       illegal
EF17: 07       tpa  
EF18: 02       illegal
EF19: 03       illegal
EF1A: 1C       illegal
EF1B: 15       illegal
EF1C: 00       illegal
EF1D: 00       illegal
EF1E: 00       illegal
EF1F: 07       tpa  
EF20: 18       illegal
EF21: 00       illegal
EF22: 00       illegal
EF23: 00       illegal
EF24: 00       illegal
EF25: 04       illegal
EF26: 2C 00    bge  $EF28
EF28: 00       illegal
EF29: 00       illegal
EF2A: 00       illegal
EF2B: 01       nop  
EF2C: 28 00    bvc  $EF2E
EF2E: 02       illegal
EF2F: 27 00    beq  $EF31
EF31: 03       illegal
EF32: 26 00    bne  $EF34
EF34: 06       tap  
EF35: 1C       illegal
EF36: 00       illegal
EF37: 09       dex  
EF38: 40       nega 
EF39: 00       illegal
EF3A: 00       illegal
EF3B: 00       illegal
EF3C: 00       illegal
EF3D: 04       illegal
EF3E: 20 00    bra  $EF40
EF40: 05       illegal
EF41: 20 00    bra  $EF43
EF43: 04       illegal
EF44: 20 00    bra  $EF46
EF46: 03       illegal
EF47: 20 00    bra  $EF49
EF49: EF 3D    stx  (x+$3D)
EF4B: 01       nop  
EF4C: 00       illegal
EF4D: 00       illegal
EF4E: 00       illegal
EF4F: 00       illegal
EF50: 00       illegal
EF51: 00       illegal
EF52: 00       illegal
EF53: FF 01 FF stx  $01FF
EF56: 20 0F    bra  $EF67
EF58: 10       sba  
EF59: 7F FF EF clr  $FFEF
EF5C: 4B       illegal
EF5D: 00       illegal
EF5E: 08       inx  
EF5F: 00       illegal
EF60: 00       illegal
EF61: 1F       illegal
EF62: 05       illegal
EF63: 00       illegal
EF64: 00       illegal
EF65: 15       illegal
EF66: 05       illegal
EF67: FF 20 0F stx  $200F
EF6A: 11       cba  
EF6B: FF FF EF stx  $FFEF
EF6E: 5D       tstb 
EF6F: 00       illegal
EF70: 08       inx  
EF71: 00       illegal
EF72: 00       illegal
EF73: 1A       illegal
EF74: 05       illegal
EF75: 00       illegal
EF76: 00       illegal
EF77: 15       illegal
EF78: 05       illegal
EF79: FF 20 0F stx  $200F
EF7C: 11       cba  
EF7D: FF FF EF stx  $FFEF
EF80: 6F 00    clr  (x+$00)
EF82: 08       inx  
EF83: 00       illegal
EF84: 00       illegal
EF85: 2B 05    bmi  $EF8C
EF87: 00       illegal
EF88: 00       illegal
EF89: 15       illegal
EF8A: 05       illegal
EF8B: FF 20 0F stx  $200F
EF8E: 11       cba  
EF8F: FF FF EF stx  $FFEF
EF92: 81 01    cmpa #$01
EF94: 00       illegal
EF95: 05       illegal
EF96: 19       daa  
EF97: F4 00 00 andb $0000
EF9A: 00       illegal
EF9B: 0B       sev  
EF9C: 01       nop  
EF9D: 1B       aba  
EF9E: 10       sba  
EF9F: 0F       sei  
EFA0: 12       illegal
EFA1: 19       daa  
EFA2: 00       illegal
EFA3: 00       illegal
EFA4: 00       illegal
EFA5: 05       illegal
EFA6: 19       daa  
EFA7: F4 00 00 andb $0000
EFAA: 00       illegal
EFAB: 0B       sev  
EFAC: 01       nop  
EFAD: 34       des  
EFAE: 10       sba  
EFAF: 0F       sei  
EFB0: 12       illegal
EFB1: 31       ins  
EFB2: 00       illegal
EFB3: FD       illegal
EFB4: 04       illegal
EFB5: 00       illegal
EFB6: 00       illegal
EFB7: 0D       sec  
EFB8: 13       illegal
EFB9: 00       illegal
EFBA: 00       illegal
EFBB: 0D       sec  
EFBC: FA FF 20 orb  $FF20
EFBF: 0F       sei  
EFC0: 91 FF    cmpa $FF
EFC2: FF EF B3 stx  $EFB3
EFC5: FE 04 50 ldx  $0450
EFC8: 01       nop  
EFC9: 14       illegal
EFCA: 00       illegal
EFCB: 00       illegal
EFCC: 00       illegal
EFCD: 0D       sec  
EFCE: FA 6E 20 orb  $6E20
EFD1: 0F       sei  
EFD2: 91 FF    cmpa $FF
EFD4: 00       illegal
EFD5: 05       illegal
EFD6: 00       illegal
EFD7: 51       illegal
EFD8: 19       daa  
EFD9: DD       illegal
EFDA: 00       illegal
EFDB: F3       illegal
EFDC: 00       illegal
EFDD: FF 01 00 stx  $0100
EFE0: 10       sba  
EFE1: 0F       sei  
EFE2: 00       illegal
EFE3: FF 00 02 stx  $0002
EFE6: 00       illegal
EFE7: 00       illegal
EFE8: 00       illegal
EFE9: F4 00 0C andb $000C
EFEC: 06       tap  
EFED: 50       negb 
EFEE: FC       illegal
EFEF: 00       illegal
EFF0: 21 0F    brn  $F001
EFF2: 91 12    cmpa $12
EFF4: 00       illegal
EFF5: 0A       clv  
EFF6: 01       nop  
EFF7: 00       illegal
EFF8: 00       illegal
EFF9: 01       nop  
EFFA: 07       tpa  
EFFB: 00       illegal
EFFC: 00       illegal
EFFD: 03       illegal
EFFE: 09       dex  
EFFF: FF 0F 0F stx  $0F0F
F002: 12       illegal
F003: FF FF EF stx  $FFEF
F006: F5 F9 00 bitb $F900
F009: 1C       illegal
F00A: 12       illegal
F00B: FF 00 E6 stx  $00E6
F00E: 09       dex  
F00F: 0D       sec  
F010: 1C       illegal
F011: 55       illegal
F012: 16       tab  
F013: 15       illegal
F014: F3       illegal
F015: 09       dex  
F016: 80 F0    suba #$F0
F018: 19       daa  
F019: 0A       clv  
F01A: 10       sba  
F01B: 00       illegal
F01C: 00       illegal
F01D: 01       nop  
F01E: 07       tpa  
F01F: 00       illegal
F020: 00       illegal
F021: 03       illegal
F022: 09       dex  
F023: FF 0F 0F stx  $0F0F
F026: 12       illegal
F027: FF 7F 05 stx  $7F05
F02A: 01       nop  
F02B: 00       illegal
F02C: 00       illegal
F02D: 01       nop  
F02E: 02       illegal
F02F: 00       illegal
F030: 00       illegal
F031: 09       dex  
F032: 1F       illegal
F033: FF 0F 0F stx  $0F0F
F036: 12       illegal
F037: 7F 75 0A clr  $750A
F03A: 01       nop  
F03B: 00       illegal
F03C: 00       illegal
F03D: 01       nop  
F03E: 0F       sei  
F03F: 00       illegal
F040: 00       illegal
F041: 09       dex  
F042: 1F       illegal
F043: 03       illegal
F044: 0F       sei  
F045: 0F       sei  
F046: 12       illegal
F047: 01       nop  
F048: 75       illegal
F049: 00       illegal
F04A: 00       illegal
F04B: 50       negb 
F04C: 01       nop  
F04D: 17       tba  
F04E: 06       tap  
F04F: 00       illegal
F050: 00       illegal
F051: 00       illegal
F052: FF 09 20 stx  $0920
F055: 0F       sei  
F056: 91 03    cmpa $03
F058: 10       sba  
F059: 02       illegal
F05A: 00       illegal
F05B: 00       illegal
F05C: 00       illegal
F05D: 01       nop  
F05E: 09       dex  
F05F: 00       illegal
F060: 00       illegal
F061: 08       inx  
F062: 00       illegal
F063: 00       illegal
F064: 20 0F    bra  $F075
F066: 00       illegal
F067: 10       sba  
F068: 81 02    cmpa #$02
F06A: 00       illegal
F06B: 00       illegal
F06C: 00       illegal
F06D: 01       nop  
F06E: 05       illegal
F06F: 00       illegal
F070: 00       illegal
F071: 08       inx  
F072: 00       illegal
F073: 00       illegal
F074: 20 0F    bra  $F085
F076: 00       illegal
F077: 10       sba  
F078: 00       illegal
F079: 01       nop  
F07A: 00       illegal
F07B: 00       illegal
F07C: 00       illegal
F07D: 01       nop  
F07E: 00       illegal
F07F: 00       illegal
F080: 00       illegal
F081: 02       illegal
F082: 01       nop  
F083: 00       illegal
F084: 0F       sei  
F085: 0F       sei  
F086: 11       cba  
F087: FF 00 01 stx  $0001
F08A: 00       illegal
F08B: 80 09    suba #$09
F08D: 00       illegal
F08E: 00       illegal
F08F: 00       illegal
F090: 00       illegal
F091: 02       illegal
F092: 01       nop  
F093: 00       illegal
F094: 0F       sei  
F095: 0F       sei  
F096: 10       sba  
F097: FF FF F0 stx  $FFF0
F09A: 89 08    adca #$08
F09C: 10       sba  
F09D: 00       illegal
F09E: 00       illegal
F09F: 01       nop  
F0A0: 07       tpa  
F0A1: 00       illegal
F0A2: 00       illegal
F0A3: 09       dex  
F0A4: 1F       illegal
F0A5: FF 0F 00 stx  $0F00
F0A8: 12       illegal
F0A9: FF 7F 12 stx  $7F12
F0AC: 0C       clc  
F0AD: 00       illegal
F0AE: 00       illegal
F0AF: 02       illegal
F0B0: 04       illegal
F0B1: 00       illegal
F0B2: 00       illegal
F0B3: 09       dex  
F0B4: 1F       illegal
F0B5: FF 0F 0F stx  $0F0F
F0B8: 14       illegal
F0B9: FF 7F F9 stx  $7FF9
F0BC: 00       illegal
F0BD: 1C       illegal
F0BE: 12       illegal
F0BF: FF 00 E6 stx  $00E6
F0C2: 09       dex  
F0C3: 0D       sec  
F0C4: 1C       illegal
F0C5: 55       illegal
F0C6: 16       tab  
F0C7: 15       illegal
F0C8: F3       illegal
F0C9: 1C       illegal
F0CA: 00       illegal
F0CB: F9 00 1C adcb $001C
F0CE: 12       illegal
F0CF: FF 00 E6 stx  $00E6
F0D2: 09       dex  
F0D3: 0D       sec  
F0D4: 1C       illegal
F0D5: 55       illegal
F0D6: 16       tab  
F0D7: 15       illegal
F0D8: F3       illegal
F0D9: 1A       illegal
F0DA: 00       illegal
F0DB: 01       nop  
F0DC: 00       illegal
F0DD: 1C       illegal
F0DE: 12       illegal
F0DF: F2 00 E8 sbcb $00E8
F0E2: 08       inx  
F0E3: 0D       sec  
F0E4: 1C       illegal
F0E5: 55       illegal
F0E6: 16       tab  
F0E7: 15       illegal
F0E8: 13       illegal
F0E9: 32       pula 
F0EA: 00       illegal
F0EB: 01       nop  
F0EC: 00       illegal
F0ED: 1C       illegal
F0EE: 12       illegal
F0EF: F2 00 E8 sbcb $00E8
F0F2: 08       inx  
F0F3: 0D       sec  
F0F4: 1C       illegal
F0F5: 55       illegal
F0F6: 16       tab  
F0F7: 15       illegal
F0F8: 11       cba  
F0F9: 38       illegal
F0FA: 00       illegal
F0FB: 00       illegal
F0FC: 00       illegal
F0FD: 1C       illegal
F0FE: 12       illegal
F0FF: F2 00 E8 sbcb $00E8
F102: 08       inx  
F103: 0D       sec  
F104: 1C       illegal
F105: 55       illegal
F106: 16       tab  
F107: 15       illegal
F108: 11       cba  
F109: 38       illegal
F10A: 00       illegal
F10B: 02       illegal
F10C: 00       illegal
F10D: 00       illegal
F10E: 00       illegal
F10F: 02       illegal
F110: 02       illegal
F111: 80 03    suba #$03
F113: 0D       sec  
F114: 20 4A    bra  $F160
F116: 13       illegal
F117: 13       illegal
F118: 1B       aba  
F119: A9 00    adca (x+$00)
F11B: 01       nop  
F11C: 00       illegal
F11D: 1C       illegal
F11E: 12       illegal
F11F: F2 00 E8 sbcb $00E8
F122: 08       inx  
F123: 0D       sec  
F124: 1C       illegal
F125: 55       illegal
F126: 16       tab  
F127: 15       illegal
F128: 1C       illegal
F129: 4F       clra 
F12A: 00       illegal
F12B: 01       nop  
F12C: 00       illegal
F12D: 1C       illegal
F12E: 12       illegal
F12F: F2 00 E8 sbcb $00E8
F132: 08       inx  
F133: 0D       sec  
F134: 1C       illegal
F135: 55       illegal
F136: 16       tab  
F137: 15       illegal
F138: 1A       illegal
F139: 63 00    com  (x+$00)
F13B: 01       nop  
F13C: 00       illegal
F13D: 1C       illegal
F13E: 12       illegal
F13F: F2 00 E8 sbcb $00E8
F142: 08       inx  
F143: 0D       sec  
F144: 1C       illegal
F145: 55       illegal
F146: 16       tab  
F147: 15       illegal
F148: 18       illegal
F149: 73 00 01 com  $0001
F14C: 00       illegal
F14D: 1C       illegal
F14E: 12       illegal
F14F: F2 00 E8 sbcb $00E8
F152: 08       inx  
F153: 0D       sec  
F154: 1C       illegal
F155: 55       illegal
F156: 16       tab  
F157: 15       illegal
F158: 17       tba  
F159: 4D       tsta 
F15A: 00       illegal
F15B: 00       illegal
F15C: 02       illegal
F15D: 1C       illegal
F15E: 12       illegal
F15F: CD       illegal
F160: 13       illegal
F161: DF F4    stx  $F4
F163: 35       txs  
F164: 0F       sei  
F165: 48       asla 
F166: 11       cba  
F167: 23 F1    bls  $F15A
F169: 9B 00    adda $00
F16B: 01       nop  
F16C: 00       illegal
F16D: 00       illegal
F16E: 00       illegal
F16F: FF 08 26 stx  $0826
F172: 13       illegal
F173: 0D       sec  
F174: 21 4A    brn  $F1C0
F176: 14       illegal
F177: 15       illegal
F178: 13       illegal
F179: 2E 00    bgt  $F17B
F17B: 01       nop  
F17C: 00       illegal
F17D: 00       illegal
F17E: 00       illegal
F17F: FF 06 26 stx  $0626
F182: 13       illegal
F183: 0D       sec  
F184: 21 4A    brn  $F1D0
F186: 14       illegal
F187: 0C       clc  
F188: F1 3A 00 cmpb $3A00
F18B: 00       illegal
F18C: 07       tpa  
F18D: 00       illegal
F18E: 00       illegal
F18F: 07       tpa  
F190: 16       tab  
F191: DF F4    stx  $F4
F193: 35       txs  
F194: 0F       sei  
F195: 48       asla 
F196: 11       cba  
F197: 23 F1    bls  $F18A
F199: 30       tsx  
F19A: 00       illegal
F19B: 00       illegal
F19C: 07       tpa  
F19D: 00       illegal
F19E: 00       illegal
F19F: 06       tap  
F1A0: 16       tab  
F1A1: DF F4    stx  $F4
F1A3: 35       txs  
F1A4: 0F       sei  
F1A5: 48       asla 
F1A6: 11       cba  
F1A7: 23 F1    bls  $F19A
F1A9: 2E 00    bgt  $F1AB
F1AB: 01       nop  
F1AC: 07       tpa  
F1AD: 00       illegal
F1AE: 00       illegal
F1AF: 3E       wai  
F1B0: 05       illegal
F1B1: BA 10 34 ora  $1034
F1B4: 0D       sec  
F1B5: 45       illegal
F1B6: 0F       sei  
F1B7: 19       daa  
F1B8: F1 21 00 cmpb $2100
F1BB: 01       nop  
F1BC: 07       tpa  
F1BD: 00       illegal
F1BE: 00       illegal
F1BF: 3C       illegal
F1C0: 0E       cli  
F1C1: BA F3 34 ora  $F334
F1C4: 0D       sec  
F1C5: 45       illegal
F1C6: 0F       sei  
F1C7: 19       daa  
F1C8: F1 1A 00 cmpb $1A00
F1CB: 03       illegal
F1CC: 00       illegal
F1CD: 00       illegal
F1CE: 00       illegal
F1CF: 01       nop  
F1D0: 0E       cli  
F1D1: 00       illegal
F1D2: 00       illegal
F1D3: 04       illegal
F1D4: 1F       illegal
F1D5: FF 20 0F stx  $200F
F1D8: 12       illegal
F1D9: 7F 7F 03 clr  $7F03
F1DC: 00       illegal
F1DD: 00       illegal
F1DE: 00       illegal
F1DF: 01       nop  
F1E0: 13       illegal
F1E1: 00       illegal
F1E2: 00       illegal
F1E3: 04       illegal
F1E4: 1F       illegal
F1E5: FF 20 0F stx  $200F
F1E8: 12       illegal
F1E9: 7F 7F 01 clr  $7F01
F1EC: 00       illegal
F1ED: 0A       clv  
F1EE: 1D       illegal
F1EF: 12       illegal
F1F0: 23 00    bls  $F1F2
F1F2: 00       illegal
F1F3: FF 01 FF stx  $01FF
F1F6: 20 0F    bra  $F207
F1F8: 10       sba  
F1F9: 88 01    eora #$01
F1FB: 01       nop  
F1FC: 00       illegal
F1FD: 0A       clv  
F1FE: 1D       illegal
F1FF: FC       illegal
F200: 23 00    bls  $F202
F202: 00       illegal
F203: FF 01 FF stx  $01FF
F206: 20 0F    bra  $F217
F208: 10       sba  
F209: 92 02    sbca $02
F20B: 00       illegal
F20C: 01       nop  
F20D: 0A       clv  
F20E: 0A       clv  
F20F: F3       illegal
F210: 08       inx  
F211: 10       sba  
F212: FB E5 31 addb $E531
F215: 03       illegal
F216: 20 0B    bra  $F223
F218: 11       cba  
F219: 78 00 01 asl  $0001
F21C: 00       illegal
F21D: 1C       illegal
F21E: 12       illegal
F21F: F2 03 E8 sbcb $03E8
F222: 08       inx  
F223: 0D       sec  
F224: 1C       illegal
F225: 55       illegal
F226: 16       tab  
F227: 15       illegal
F228: 1C       illegal
F229: 4F       clra 
F22A: 00       illegal
F22B: 01       nop  
F22C: 00       illegal
F22D: 1C       illegal
F22E: 12       illegal
F22F: F2 0C E8 sbcb $0CE8
F232: 08       inx  
F233: 0D       sec  
F234: 1C       illegal
F235: 55       illegal
F236: 21 15    brn  $F24D
F238: 1A       illegal
F239: 4B       illegal
F23A: 00       illegal
F23B: 03       illegal
F23C: 00       illegal
F23D: 1C       illegal
F23E: 12       illegal
F23F: F3       illegal
F240: 01       nop  
F241: E8 08    eorb (x+$08)
F243: 0D       sec  
F244: 1C       illegal
F245: 55       illegal
F246: 16       tab  
F247: 15       illegal
F248: 1C       illegal
F249: 32       pula 
F24A: 00       illegal
F24B: 02       illegal
F24C: 00       illegal
F24D: 00       illegal
F24E: 00       illegal
F24F: E0 06    subb (x+$06)
F251: 0C       clc  
F252: 08       inx  
F253: 57       asrb 
F254: 01       nop  
F255: 03       illegal
F256: 26 F7    bne  $F24F
F258: 91 1B    cmpa $1B
F25A: 00       illegal
F25B: EE 89    ldx  (x+$89)
F25D: EF 93    stx  (x+$93)
F25F: ED       illegal
F260: 6A 00    dec  (x+$00)
F262: 3F       swi  
F263: EF 16    stx  (x+$16)
F265: EF D5    stx  (x+$D5)
F267: ED       illegal
F268: 0A       clv  
F269: 00       illegal
F26A: 1F       illegal
F26B: EE 89    ldx  (x+$89)
F26D: EF A3    stx  (x+$A3)
F26F: ED       illegal
F270: 6A 00    dec  (x+$00)
F272: 3F       swi  
F273: EE 89    ldx  (x+$89)
F275: F0 FB ED subb $FBED
F278: 4A       deca 
F279: 00       illegal
F27A: 1F       illegal
F27B: EE 89    ldx  (x+$89)
F27D: F1 2B ED cmpb $2BED
F280: 4A       deca 
F281: 00       illegal
F282: 1F       illegal
F283: EE 89    ldx  (x+$89)
F285: F1 4B ED cmpb $4BED
F288: 4A       deca 
F289: 00       illegal
F28A: 1F       illegal
F28B: EE 89    ldx  (x+$89)
F28D: F2 2B ED sbcb $2BED
F290: 4A       deca 
F291: 00       illegal
F292: 1F       illegal
F293: EE 89    ldx  (x+$89)
F295: F2 3B ED sbcb $3BED
F298: 4A       deca 
F299: 00       illegal
F29A: 1F       illegal
F29B: EE 89    ldx  (x+$89)
F29D: F0 EB ED subb $EBED
F2A0: 4A       deca 
F2A1: 00       illegal
F2A2: 1F       illegal
F2A3: EE 89    ldx  (x+$89)
F2A5: F2 1B ED sbcb $1BED
F2A8: 4A       deca 
F2A9: 00       illegal
F2AA: 1F       illegal
F2AB: EE 89    ldx  (x+$89)
F2AD: F1 7B ED cmpb $7BED
F2B0: 4A       deca 
F2B1: 00       illegal
F2B2: 1F       illegal
F2B3: EE 89    ldx  (x+$89)
F2B5: F1 1B ED cmpb $1BED
F2B8: 4A       deca 
F2B9: 00       illegal
F2BA: 1F       illegal
F2BB: EE 89    ldx  (x+$89)
F2BD: EF E5    stx  (x+$E5)
F2BF: ED       illegal
F2C0: 0A       clv  
F2C1: 00       illegal
F2C2: 1F       illegal
F2C3: EE 89    ldx  (x+$89)
F2C5: F0 49 ED subb $49ED
F2C8: AA 00    ora  (x+$00)
F2CA: 1F       illegal
F2CB: EE 89    ldx  (x+$89)
F2CD: F1 5B ED cmpb $5BED
F2D0: 4A       deca 
F2D1: 00       illegal
F2D2: 1F       illegal
F2D3: EE 89    ldx  (x+$89)
F2D5: F1 EB ED cmpb $EBED
F2D8: CA 00    orb  #$00
F2DA: 1F       illegal
F2DB: EE 89    ldx  (x+$89)
F2DD: F1 FB ED cmpb $FBED
F2E0: CA 00    orb  #$00
F2E2: 1F       illegal
F2E3: EE 89    ldx  (x+$89)
F2E5: F2 0B ED sbcb $0BED
F2E8: CA 00    orb  #$00
F2EA: 1F       illegal
F2EB: EE 89    ldx  (x+$89)
F2ED: EF 5D    stx  (x+$5D)
F2EF: ED       illegal
F2F0: 0A       clv  
F2F1: 00       illegal
F2F2: 1F       illegal
F2F3: EE 89    ldx  (x+$89)
F2F5: EF 6F    stx  (x+$6F)
F2F7: ED       illegal
F2F8: 0A       clv  
F2F9: 00       illegal
F2FA: 1F       illegal
F2FB: EE 89    ldx  (x+$89)
F2FD: EF 81    stx  (x+$81)
F2FF: ED       illegal
F300: 0A       clv  
F301: 00       illegal
F302: 1F       illegal
F303: EE 89    ldx  (x+$89)
F305: EF B3    stx  (x+$B3)
F307: ED       illegal
F308: 0A       clv  
F309: 00       illegal
F30A: 1F       illegal
F30B: EE 89    ldx  (x+$89)
F30D: EF F5    stx  (x+$F5)
F30F: ED       illegal
F310: 4A       deca 
F311: 00       illegal
F312: 1F       illegal
F313: EE 89    ldx  (x+$89)
F315: F0 9B ED subb $9BED
F318: 4A       deca 
F319: 00       illegal
F31A: 1F       illegal
F31B: EE 89    ldx  (x+$89)
F31D: F0 29 ED subb $29ED
F320: 4A       deca 
F321: 00       illegal
F322: 1F       illegal
F323: EE 89    ldx  (x+$89)
F325: F0 AB ED subb $ABED
F328: 4A       deca 
F329: 00       illegal
F32A: 1F       illegal
F32B: EE 89    ldx  (x+$89)
F32D: F0 39 ED subb $39ED
F330: 4A       deca 
F331: 00       illegal
F332: 1F       illegal
F333: EE 89    ldx  (x+$89)
F335: F1 CB ED cmpb $CBED
F338: CA 00    orb  #$00
F33A: 1F       illegal
F33B: EE 89    ldx  (x+$89)
F33D: F1 DB ED cmpb $DBED
F340: CA 00    orb  #$00
F342: 1F       illegal
F343: EF 2B    stx  (x+$2B)
F345: F0 89 ED subb $89ED
F348: 0A       clv  
F349: 00       illegal
F34A: 1F       illegal
F34B: EE 8E    ldx  (x+$8E)
F34D: F0 89 ED subb $89ED
F350: 0A       clv  
F351: 00       illegal
F352: 1F       illegal
F353: EE 89    ldx  (x+$89)
F355: F0 BB ED subb $BBED
F358: 4A       deca 
F359: 00       illegal
F35A: 1F       illegal
F35B: EE 89    ldx  (x+$89)
F35D: F0 CB ED subb $CBED
F360: 4A       deca 
F361: 00       illegal
F362: 1F       illegal
F363: EE 89    ldx  (x+$89)
F365: F0 07 ED subb $07ED
F368: 4A       deca 
F369: 00       illegal
F36A: 1F       illegal
F36B: EE 89    ldx  (x+$89)
F36D: F0 DB ED subb $DBED
F370: 4A       deca 
F371: 00       illegal
F372: 1F       illegal
F373: EE 89    ldx  (x+$89)
F375: F2 4B ED sbcb $4BED
F378: 4A       deca 
F379: 00       illegal
F37A: 1F       illegal
F37B: EE F5    ldx  (x+$F5)
F37D: F0 79 ED subb $79ED
F380: 0A       clv  
F381: 00       illegal
F382: 1F       illegal
F383: EE 89    ldx  (x+$89)
F385: F1 3B ED cmpb $3BED
F388: 4A       deca 
F389: 00       illegal
F38A: 1F       illegal
F38B: EE 89    ldx  (x+$89)
F38D: F1 1B ED cmpb $1BED
F390: 4A       deca 
F391: 00       illegal
F392: 1F       illegal
F393: EE 89    ldx  (x+$89)
F395: F1 6B ED cmpb $6BED
F398: 4A       deca 
F399: 00       illegal
F39A: 1F       illegal
F39B: EE 89    ldx  (x+$89)
F39D: F1 2B ED cmpb $2BED
F3A0: 4A       deca 
F3A1: 00       illegal
F3A2: 1F       illegal
F3A3: EE 89    ldx  (x+$89)
F3A5: F1 4B ED cmpb $4BED
F3A8: 4A       deca 
F3A9: 00       illegal
F3AA: 1F       illegal
F3AB: EF 01    stx  (x+$01)
F3AD: F0 79 ED subb $79ED
F3B0: 0A       clv  
F3B1: 00       illegal
F3B2: 1F       illegal
F3B3: EF 0D    stx  (x+$0D)
F3B5: F0 79 ED subb $79ED
F3B8: 0A       clv  
F3B9: 00       illegal
F3BA: 1F       illegal
F3BB: EE 89    ldx  (x+$89)
F3BD: F1 8B ED cmpb $8BED
F3C0: 4A       deca 
F3C1: 00       illegal
F3C2: 1F       illegal
F3C3: EE 89    ldx  (x+$89)
F3C5: F1 9B ED cmpb $9BED
F3C8: 4A       deca 
F3C9: 00       illegal
F3CA: 1F       illegal
F3CB: EE 89    ldx  (x+$89)
F3CD: F1 AB ED cmpb $ABED
F3D0: 4A       deca 
F3D1: 00       illegal
F3D2: 1F       illegal
F3D3: EE 89    ldx  (x+$89)
F3D5: F1 BB ED cmpb $BBED
F3D8: 4A       deca 
F3D9: 00       illegal
F3DA: 1F       illegal
F3DB: EE 89    ldx  (x+$89)
F3DD: EF C5    stx  (x+$C5)
F3DF: ED       illegal
F3E0: 0A       clv  
F3E1: 00       illegal
F3E2: 1F       illegal
F3E3: EE 89    ldx  (x+$89)
F3E5: F1 0B ED cmpb $0BED
F3E8: 4A       deca 
F3E9: 00       illegal
F3EA: 1F       illegal
F3EB: 01       nop  
F3EC: 09       dex  
F3ED: 00       illegal
F3EE: 00       illegal
F3EF: FF 00 00 stx  $0000
F3F2: 00       illegal
F3F3: 00       illegal
F3F4: 13       illegal
F3F5: 00       illegal
F3F6: FF 7F 0D stx  $7F0D
F3F9: 1E       illegal
F3FA: 00       illegal
F3FB: 00       illegal
F3FC: FF 00 00 stx  $0000
F3FF: 04       illegal
F400: 02       illegal
F401: 10       sba  
F402: 00       illegal
F403: FF 7F 0D stx  $7F0D
F406: 24 00    bcc  $F408
F408: 00       illegal
F409: FF 00 00 stx  $0000
F40C: 04       illegal
F40D: 02       illegal
F40E: 10       sba  
F40F: 00       illegal
F410: FF 7F 0D stx  $7F0D
F413: 32       pula 
F414: 00       illegal
F415: 00       illegal
F416: FF 00 00 stx  $0000
F419: 04       illegal
F41A: 02       illegal
F41B: 10       sba  
F41C: 00       illegal
F41D: FF 7F 0D stx  $7F0D
F420: 3C       illegal
F421: 00       illegal
F422: 00       illegal
F423: FF 00 00 stx  $0000
F426: 04       illegal
F427: 02       illegal
F428: 10       sba  
F429: 00       illegal
F42A: 1E       illegal
F42B: 00       illegal
F42C: 0D       sec  
F42D: 76 00 00 ror  $0000
F430: FF 00 00 stx  $0000
F433: 04       illegal
F434: 02       illegal
F435: 10       sba  
F436: 00       illegal
F437: 07       tpa  
F438: 00       illegal
F439: 04       illegal
F43A: 7C 08 C9 inc  $08C9
F43D: FF FE FC stx  $FEFC
F440: 04       illegal
F441: 02       illegal
F442: 00       illegal
F443: 20 1E    bra  $F463
F445: 00       illegal
F446: 0F       sei  
F447: 06       tap  
F448: 02       illegal
F449: F7 09 66 stb  $0966
F44C: 34       des  
F44D: 01       nop  
F44E: 00       illegal
F44F: 00       illegal
F450: 00       illegal
F451: F9 42 0F adcb $420F
F454: 06       tap  
F455: 02       illegal
F456: F7 09 DF stb  $09DF
F459: D9 01    adcb $01
F45B: 00       illegal
F45C: 00       illegal
F45D: 00       illegal
F45E: F9 42 14 adcb $4214
F461: 08       inx  
F462: 02       illegal
F463: F7 FF DF stb  $FFDF
F466: D9 00    adcb $00
F468: 00       illegal
F469: 00       illegal
F46A: 00       illegal
F46B: FF 8F 15 stx  $8F15
F46E: 08       inx  
F46F: 02       illegal
F470: F7 FF DF stb  $FFDF
F473: D9 00    adcb $00
F475: 00       illegal
F476: 10       sba  
F477: 00       illegal
F478: FF 8F F4 stx  $8FF4
F47B: 6D 14    tst  (x+$14)
F47D: 09       dex  
F47E: 02       illegal
F47F: F7 FF DF stb  $FFDF
F482: D9 00    adcb $00
F484: 00       illegal
F485: 10       sba  
F486: 00       illegal
F487: FF 8F F4 stx  $8FF4
F48A: 8B 14    adda #$14
F48C: 0A       clv  
F48D: 02       illegal
F48E: F7 FF DF stb  $FFDF
F491: D9 00    adcb $00
F493: 00       illegal
F494: 10       sba  
F495: 00       illegal
F496: FF 8F F4 stx  $8FF4
F499: 9A 14    ora  $14
F49B: 08       inx  
F49C: 02       illegal
F49D: F7 FF DF stb  $FFDF
F4A0: D9 00    adcb $00
F4A2: 00       illegal
F4A3: 10       sba  
F4A4: 00       illegal
F4A5: FF 8F F4 stx  $8FF4
F4A8: 6D 08    tst  (x+$08)
F4AA: 08       inx  
F4AB: 02       illegal
F4AC: F7 FF DF stb  $FFDF
F4AF: D9 00    adcb $00
F4B1: 00       illegal
F4B2: 00       illegal
F4B3: 00       illegal
F4B4: 80 04    suba #$04
F4B6: 14       illegal
F4B7: 09       dex  
F4B8: 02       illegal
F4B9: F7 FF DF stb  $FFDF
F4BC: D9 00    adcb $00
F4BE: 00       illegal
F4BF: 00       illegal
F4C0: 00       illegal
F4C1: FD       illegal
F4C2: 8F F4 C5 sts  #$F4C5
F4C5: 14       illegal
F4C6: 0A       clv  
F4C7: 02       illegal
F4C8: F7 FF DF stb  $FFDF
F4CB: D9 00    adcb $00
F4CD: 00       illegal
F4CE: 00       illegal
F4CF: 00       illegal
F4D0: F8 88 F4 eorb $88F4
F4D3: D4 14    andb $14
F4D5: 09       dex  
F4D6: 02       illegal
F4D7: F7 FF DF stb  $FFDF
F4DA: D9 00    adcb $00
F4DC: 00       illegal
F4DD: 00       illegal
F4DE: 00       illegal
F4DF: FD       illegal
F4E0: 88 F4    eora #$F4
F4E2: E3       illegal
F4E3: 14       illegal
F4E4: 08       inx  
F4E5: 02       illegal
F4E6: F7 FF DF stb  $FFDF
F4E9: D9 00    adcb $00
F4EB: 00       illegal
F4EC: 00       illegal
F4ED: 00       illegal
F4EE: FF 8A F4 stx  $8AF4
F4F1: A9 01    adca (x+$01)
F4F3: 02       illegal
F4F4: 04       illegal
F4F5: FF 40 FF stx  $40FF
F4F8: 3F       swi  
F4F9: 00       illegal
F4FA: 00       illegal
F4FB: 10       sba  
F4FC: 00       illegal
F4FD: FF FF F4 stx  $FFF4
F500: F2 01 02 sbcb $0102
F503: 00       illegal
F504: 00       illegal
F505: FF 00 00 stx  $0000
F508: 00       illegal
F509: 02       illegal
F50A: 10       sba  
F50B: 00       illegal
F50C: FF FF F5 stx  $FFF5
F50F: 01       nop  
F510: 01       nop  
F511: 04       illegal
F512: 00       illegal
F513: 00       illegal
F514: 00       illegal
F515: FF 00 01 stx  $0001
F518: 03       illegal
F519: 11       cba  
F51A: 00       illegal
F51B: FF FF F5 stx  $FFF5
F51E: 10       sba  
F51F: 08       inx  
F520: 13       illegal
F521: 02       illegal
F522: F9 FF E3 adcb $FFE3
F525: E0 05    subb (x+$05)
F527: 08       inx  
F528: 14       illegal
F529: 00       illegal
F52A: C0 05    subb #$05
F52C: 01       nop  
F52D: 00       illegal
F52E: 01       nop  
F52F: 01       nop  
F530: FF D9 55 stx  $D955
F533: 00       illegal
F534: 00       illegal
F535: 10       sba  
F536: 00       illegal
F537: 00       illegal
F538: 00       illegal
F539: 01       nop  
F53A: 00       illegal
F53B: 01       nop  
F53C: 01       nop  
F53D: FF D9 55 stx  $D955
F540: 00       illegal
F541: 00       illegal
F542: 11       cba  
F543: 00       illegal
F544: 00       illegal
F545: 00       illegal
F546: 01       nop  
F547: 00       illegal
F548: 01       nop  
F549: 01       nop  
F54A: FF D9 55 stx  $D955
F54D: 00       illegal
F54E: 00       illegal
F54F: 12       illegal
F550: 00       illegal
F551: 00       illegal
F552: 00       illegal
F553: 01       nop  
F554: 00       illegal
F555: 01       nop  
F556: 01       nop  
F557: FF D9 55 stx  $D955
F55A: 00       illegal
F55B: 00       illegal
F55C: 13       illegal
F55D: 00       illegal
F55E: 00       illegal
F55F: 00       illegal
F560: 01       nop  
F561: 00       illegal
F562: 01       nop  
F563: 01       nop  
F564: FF D9 55 stx  $D955
F567: 00       illegal
F568: 00       illegal
F569: 14       illegal
F56A: 00       illegal
F56B: 00       illegal
F56C: 00       illegal
F56D: 02       illegal
F56E: 06       tap  
F56F: 04       illegal
F570: 02       illegal
F571: FF 00 00 stx  $0000
F574: 00       illegal
F575: 00       illegal
F576: 10       sba  
F577: 00       illegal
F578: FF 7F 37 stx  $7F37
F57B: 01       nop  
F57C: 00       illegal
F57D: 00       illegal
F57E: FF 00 00 stx  $0000
F581: 02       illegal
F582: 01       nop  
F583: 11       cba  
F584: 00       illegal
F585: FF 7F 0A stx  $7F0A
F588: 05       illegal
F589: 00       illegal
F58A: 09       dex  
F58B: FF 83 DE stx  $83DE
F58E: 00       illegal
F58F: 00       illegal
F590: 10       sba  
F591: 00       illegal
F592: FF FF F5 stx  $FFF5
F595: 87 01    sta  #$01
F597: 04       illegal
F598: 02       illegal
F599: 13       illegal
F59A: FF 1E 63 stx  $1E63
F59D: 00       illegal
F59E: 00       illegal
F59F: 10       sba  
F5A0: 00       illegal
F5A1: FF 03 F0 stx  $03F0
F5A4: 05       illegal
F5A5: 02       illegal
F5A6: 16       tab  
F5A7: FF 82 94 stx  $8294
F5AA: 00       illegal
F5AB: 00       illegal
F5AC: 10       sba  
F5AD: 00       illegal
F5AE: FF 7F 02 stx  $7F02
F5B1: 0F       sei  
F5B2: 00       illegal
F5B3: 00       illegal
F5B4: FF 00 00 stx  $0000
F5B7: 00       illegal
F5B8: 00       illegal
F5B9: 00       illegal
F5BA: 00       illegal
F5BB: FF 7F 02 stx  $7F02
F5BE: 18       illegal
F5BF: 00       illegal
F5C0: 00       illegal
F5C1: FF 00 00 stx  $0000
F5C4: 00       illegal
F5C5: 00       illegal
F5C6: 00       illegal
F5C7: 00       illegal
F5C8: FF 7F 04 stx  $7F04
F5CB: 14       illegal
F5CC: 00       illegal
F5CD: 00       illegal
F5CE: FF 00 00 stx  $0000
F5D1: 00       illegal
F5D2: 00       illegal
F5D3: 00       illegal
F5D4: 00       illegal
F5D5: FF 7F FB stx  $7FFB
F5D8: 00       illegal
F5D9: 01       nop  
F5DA: 07       tpa  
F5DB: 06       tap  
F5DC: DF F2    stx  $F2
F5DE: 05       illegal
F5DF: 03       illegal
F5E0: 14       illegal
F5E1: 00       illegal
F5E2: FF 00 F5 stx  $00F5
F5E5: E6 FB    ldb  (x+$FB)
F5E7: 00       illegal
F5E8: 01       nop  
F5E9: 07       tpa  
F5EA: 06       tap  
F5EB: DF F2    stx  $F2
F5ED: 05       illegal
F5EE: 03       illegal
F5EF: 14       illegal
F5F0: 01       nop  
F5F1: FF 00 F5 stx  $00F5
F5F4: F5 FB 00 bitb $FB00
F5F7: 01       nop  
F5F8: 07       tpa  
F5F9: 06       tap  
F5FA: DF F2    stx  $F2
F5FC: 05       illegal
F5FD: 03       illegal
F5FE: 14       illegal
F5FF: 02       illegal
F600: FF 00 F6 stx  $00F6
F603: 04       illegal
F604: FB 00 01 addb $0001
F607: 07       tpa  
F608: 06       tap  
F609: DF F2    stx  $F2
F60B: 05       illegal
F60C: 03       illegal
F60D: 14       illegal
F60E: 03       illegal
F60F: FF 00 F6 stx  $00F6
F612: 13       illegal
F613: FB 00 01 addb $0001
F616: 07       tpa  
F617: 06       tap  
F618: DF F2    stx  $F2
F61A: 05       illegal
F61B: 03       illegal
F61C: 14       illegal
F61D: 04       illegal
F61E: FF 00 F5 stx  $00F5
F621: D7 01    stb  $01
F623: 02       illegal
F624: 01       nop  
F625: 01       nop  
F626: FF D9 55 stx  $D955
F629: F7 01 11 stb  $0111
F62C: 00       illegal
F62D: FF 7F 21 stx  $7F21
F630: 02       illegal
F631: FF 0E 00 stx  $0E00
F634: 01       nop  
F635: 01       nop  
F636: 00       illegal
F637: C7 11    stb  #$11
F639: 00       illegal
F63A: FF 7F 21 stx  $7F21
F63D: 02       illegal
F63E: FF 0E 00 stx  $0E00
F641: 01       nop  
F642: 01       nop  
F643: 00       illegal
F644: D3       illegal
F645: 11       cba  
F646: 00       illegal
F647: 93       illegal
F648: 80 F6    suba #$F6
F64A: 4B       illegal
F64B: 4A       deca 
F64C: 03       illegal
F64D: 00       illegal
F64E: 00       illegal
F64F: F0 00 00 subb $0000
F652: 00       illegal
F653: 00       illegal
F654: 11       cba  
F655: 00       illegal
F656: 0F       sei  
F657: 80 F6    suba #$F6
F659: 4B       illegal
F65A: 02       illegal
F65B: 02       illegal
F65C: 00       illegal
F65D: 00       illegal
F65E: FF 00 00 stx  $0000
F661: 00       illegal
F662: 15       illegal
F663: 11       cba  
F664: 00       illegal
F665: FF 7F 04 stx  $7F04
F668: 01       nop  
F669: 00       illegal
F66A: 00       illegal
F66B: FF 00 00 stx  $0000
F66E: 01       nop  
F66F: 01       nop  
F670: 11       cba  
F671: 00       illegal
F672: FF 7F 01 stx  $7F01
F675: 01       nop  
F676: 00       illegal
F677: 00       illegal
F678: FF 00 00 stx  $0000
F67B: 00       illegal
F67C: E3       illegal
F67D: 11       cba  
F67E: 00       illegal
F67F: FF 7F 01 stx  $7F01
F682: 06       tap  
F683: 00       illegal
F684: 00       illegal
F685: FF 00 00 stx  $0000
F688: 01       nop  
F689: 35       txs  
F68A: 11       cba  
F68B: 00       illegal
F68C: FF 7F 01 stx  $7F01
F68F: 0B       sev  
F690: 00       illegal
F691: 02       illegal
F692: 00       illegal
F693: 00       illegal
F694: 00       illegal
F695: 01       nop  
F696: FA 01 00 orb  $0100
F699: FF 7F 01 stx  $7F01
F69C: 0B       sev  
F69D: 00       illegal
F69E: 02       illegal
F69F: FF 00 00 stx  $0000
F6A2: 01       nop  
F6A3: ED       illegal
F6A4: 11       cba  
F6A5: 00       illegal
F6A6: FF 7F 01 stx  $7F01
F6A9: 0B       sev  
F6AA: 00       illegal
F6AB: 02       illegal
F6AC: FF 00 00 stx  $0000
F6AF: 01       nop  
F6B0: EB 11    addb (x+$11)
F6B2: 00       illegal
F6B3: FF 7F 01 stx  $7F01
F6B6: 0B       sev  
F6B7: 00       illegal
F6B8: 02       illegal
F6B9: FF 00 00 stx  $0000
F6BC: 01       nop  
F6BD: DE 11    ldx  $11
F6BF: 00       illegal
F6C0: FF 7F 01 stx  $7F01
F6C3: 0B       sev  
F6C4: 00       illegal
F6C5: 02       illegal
F6C6: FF 00 00 stx  $0000
F6C9: 01       nop  
F6CA: C7 11    stb  #$11
F6CC: 00       illegal
F6CD: FF 7F 01 stx  $7F01
F6D0: 0B       sev  
F6D1: 00       illegal
F6D2: 02       illegal
F6D3: 00       illegal
F6D4: 00       illegal
F6D5: 00       illegal
F6D6: 00       illegal
F6D7: F0 11 00 subb $1100
F6DA: 40       nega 
F6DB: 00       illegal
F6DC: 01       nop  
F6DD: 0B       sev  
F6DE: 01       nop  
F6DF: 03       illegal
F6E0: 01       nop  
F6E1: 01       nop  
F6E2: 02       illegal
F6E3: 01       nop  
F6E4: EE 11    ldx  (x+$11)
F6E6: 00       illegal
F6E7: 40       nega 
F6E8: 00       illegal
F6E9: 3C       illegal
F6EA: 02       illegal
F6EB: 01       nop  
F6EC: 03       illegal
F6ED: 01       nop  
F6EE: 01       nop  
F6EF: 02       illegal
F6F0: 01       nop  
F6F1: FF 12 DD stx  $12DD
F6F4: 40       nega 
F6F5: 00       illegal
F6F6: 01       nop  
F6F7: 0B       sev  
F6F8: 01       nop  
F6F9: 03       illegal
F6FA: 01       nop  
F6FB: 01       nop  
F6FC: 02       illegal
F6FD: 01       nop  
F6FE: EE 11    ldx  (x+$11)
F700: 00       illegal
F701: 10       sba  
F702: 80 F7    suba #$F7
F704: 05       illegal
F705: 01       nop  
F706: 0B       sev  
F707: 00       illegal
F708: 02       illegal
F709: 00       illegal
F70A: 00       illegal
F70B: 00       illegal
F70C: 00       illegal
F70D: F0 11 00 subb $1100
F710: 40       nega 
F711: 00       illegal
F712: 01       nop  
F713: 0B       sev  
F714: 01       nop  
F715: 03       illegal
F716: 01       nop  
F717: 01       nop  
F718: 02       illegal
F719: 01       nop  
F71A: EE 11    ldx  (x+$11)
F71C: 00       illegal
F71D: 10       sba  
F71E: 80 F7    suba #$F7
F720: 21 01    brn  $F723
F722: 0B       sev  
F723: 00       illegal
F724: 02       illegal
F725: FF 00 00 stx  $0000
F728: 01       nop  
F729: C7 11    stb  #$11
F72B: 00       illegal
F72C: FF 7F 07 stx  $7F07
F72F: 04       illegal
F730: 00       illegal
F731: 02       illegal
F732: 00       illegal
F733: 04       illegal
F734: 07       tpa  
F735: 7F FF 13 clr  $FF13
F738: 01       nop  
F739: 13       illegal
F73A: 00       illegal
F73B: FF 7F 0C stx  $7F0C
F73E: 02       illegal
F73F: 01       nop  
F740: 0B       sev  
F741: FF 00 00 stx  $0000
F744: 00       illegal
F745: BE 11 00 lds  $1100
F748: FF 7F 0C stx  $7F0C
F74B: 05       illegal
F74C: 01       nop  
F74D: 0B       sev  
F74E: FF 00 00 stx  $0000
F751: 00       illegal
F752: BE 01 00 lds  $0100
F755: FF 7F 08 stx  $7F08
F758: 02       illegal
F759: 00       illegal
F75A: 00       illegal
F75B: D4 00    andb $00
F75D: 00       illegal
F75E: 01       nop  
F75F: EF 11    stx  (x+$11)
F761: 00       illegal
F762: 81 00    cmpa #$00
F764: 02       illegal
F765: 01       nop  
F766: 00       illegal
F767: 01       nop  
F768: D7 01    stb  $01
F76A: 01       nop  
F76B: 01       nop  
F76C: F4 13 03 andb $1303
F76F: 2D 00    blt  $F771
F771: 01       nop  
F772: 09       dex  
F773: 00       illegal
F774: 00       illegal
F775: FF 00 00 stx  $0000
F778: 00       illegal
F779: 00       illegal
F77A: 03       illegal
F77B: 00       illegal
F77C: FF 00 02 stx  $0002
F77F: 01       nop  
F780: 00       illegal
F781: 00       illegal
F782: 20 00    bra  $F784
F784: 00       illegal
F785: 00       illegal
F786: 35       txs  
F787: 01       nop  
F788: 00       illegal
F789: 81 01    cmpa #$01
F78B: 01       nop  
F78C: 02       illegal
F78D: 05       illegal
F78E: 00       illegal
F78F: FF 00 00 stx  $0000
F792: F9 FA 11 adcb $FA11
F795: 00       illegal
F796: FF FF F7 stx  $FFF7
F799: 9A 02    ora  $02
F79B: 02       illegal
F79C: 00       illegal
F79D: 00       illegal
F79E: FF 00 00 stx  $0000
F7A1: 46       rora 
F7A2: 7D 11 00 tst  $1100
F7A5: FF FF F7 stx  $FFF7
F7A8: 8B 03    adda #$03
F7AA: 74 02 04 lsr  $0204
F7AD: 04       illegal
F7AE: DC       illegal
F7AF: DB FB    addb $FB
F7B1: 08       inx  
F7B2: 14       illegal
F7B3: FB FF 0F addb $FF0F
F7B6: 03       illegal
F7B7: 74 02 04 lsr  $0204
F7BA: 04       illegal
F7BB: DC       illegal
F7BC: DB FB    addb $FB
F7BE: 08       inx  
F7BF: 14       illegal
F7C0: F8 FF 0F eorb $FF0F
F7C3: 03       illegal
F7C4: 74 02 04 lsr  $0204
F7C7: 04       illegal
F7C8: DC       illegal
F7C9: DB FB    addb $FB
F7CB: 08       inx  
F7CC: 14       illegal
F7CD: F9 FF 0F adcb $FF0F
F7D0: 03       illegal
F7D1: 74 02 04 lsr  $0204
F7D4: 04       illegal
F7D5: DC       illegal
F7D6: DB FB    addb $FB
F7D8: 08       inx  
F7D9: 14       illegal
F7DA: FA FF 0F orb  $FF0F
F7DD: 03       illegal
F7DE: 74 02 04 lsr  $0204
F7E1: 04       illegal
F7E2: DC       illegal
F7E3: DB FB    addb $FB
F7E5: 08       inx  
F7E6: 14       illegal
F7E7: 02       illegal
F7E8: FF 0F 09 stx  $0F09
F7EB: 05       illegal
F7EC: 08       inx  
F7ED: F7 FF DF stb  $FFDF
F7F0: D9 00    adcb $00
F7F2: 02       illegal
F7F3: 00       illegal
F7F4: 00       illegal
F7F5: 80 04    suba #$04
F7F7: 09       dex  
F7F8: 05       illegal
F7F9: 09       dex  
F7FA: F7 FF DF stb  $FFDF
F7FD: D9 00    adcb $00
F7FF: 02       illegal
F800: 00       illegal
F801: 00       illegal
F802: 80 04    suba #$04
F804: 09       dex  
F805: 05       illegal
F806: 0A       clv  
F807: F7 FF DF stb  $FFDF
F80A: D9 00    adcb $00
F80C: 02       illegal
F80D: 00       illegal
F80E: 00       illegal
F80F: 80 04    suba #$04
F811: 0A       clv  
F812: 02       illegal
F813: 01       nop  
F814: 0B       sev  
F815: FF 00 00 stx  $0000
F818: 00       illegal
F819: BE 12 00 lds  $1200
F81C: FF 7F 0A stx  $7F0A
F81F: 02       illegal
F820: 07       tpa  
F821: 0E       cli  
F822: 05       illegal
F823: 03       illegal
F824: 03       illegal
F825: 03       illegal
F826: C3       illegal
F827: 10       sba  
F828: 00       illegal
F829: FF 03 04 stx  $0304
F82C: 3B       rti  
F82D: 00       illegal
F82E: 00       illegal
F82F: FF 00 00 stx  $0000
F832: 04       illegal
F833: 02       illegal
F834: 10       sba  
F835: 00       illegal
F836: FF 7F 06 stx  $7F06
F839: 4C       inca 
F83A: 00       illegal
F83B: 00       illegal
F83C: FF 00 00 stx  $0000
F83F: 04       illegal
F840: 02       illegal
F841: 10       sba  
F842: 00       illegal
F843: 12       illegal
F844: 00       illegal
F845: 06       tap  
F846: 86 00    lda  #$00
F848: 00       illegal
F849: FF 00 00 stx  $0000
F84C: 04       illegal
F84D: 02       illegal
F84E: 10       sba  
F84F: 00       illegal
F850: 08       inx  
F851: 00       illegal
F852: 06       tap  
F853: 26 00    bne  $F855
F855: 00       illegal
F856: FF 00 00 stx  $0000
F859: 04       illegal
F85A: 02       illegal
F85B: 10       sba  
F85C: 00       illegal
F85D: 0A       clv  
F85E: 00       illegal
F85F: 06       tap  
F860: 1F       illegal
F861: 00       illegal
F862: 00       illegal
F863: FF 00 00 stx  $0000
F866: 04       illegal
F867: 02       illegal
F868: 10       sba  
F869: 00       illegal
F86A: 08       inx  
F86B: 00       illegal
F86C: 06       tap  
F86D: 1E       illegal
F86E: 00       illegal
F86F: 00       illegal
F870: FF 00 00 stx  $0000
F873: 04       illegal
F874: 02       illegal
F875: 10       sba  
F876: 00       illegal
F877: FF 7F 06 stx  $7F06
F87A: 1D       illegal
F87B: 00       illegal
F87C: 00       illegal
F87D: FF 00 00 stx  $0000
F880: 04       illegal
F881: 02       illegal
F882: 10       sba  
F883: 00       illegal
F884: 2F 00    ble  $F886
F886: 08       inx  
F887: 19       daa  
F888: 00       illegal
F889: 00       illegal
F88A: FF 00 00 stx  $0000
F88D: 04       illegal
F88E: 02       illegal
F88F: 10       sba  
F890: 00       illegal
F891: 08       inx  
F892: 00       illegal
F893: 21 02    brn  $F897
F895: FF 0E 00 stx  $0E00
F898: 01       nop  
F899: 01       nop  
F89A: 00       illegal
F89B: D3       illegal
F89C: 11       cba  
F89D: 00       illegal
F89E: FF 8F F8 stx  $8FF8
F8A1: A2 01    sbca (x+$01)
F8A3: 0B       sev  
F8A4: 00       illegal
F8A5: 02       illegal
F8A6: 00       illegal
F8A7: 00       illegal
F8A8: 00       illegal
F8A9: 00       illegal
F8AA: F0 11 00 subb $1100
F8AD: 40       nega 
F8AE: 80 F8    suba #$F8
F8B0: B1 21 02 cmpa $2102
F8B3: FF 0E 00 stx  $0E00
F8B6: 01       nop  
F8B7: 01       nop  
F8B8: 00       illegal
F8B9: D3       illegal
F8BA: 11       cba  
F8BB: 00       illegal
F8BC: FF 7F 0D stx  $7F0D
F8BF: 1E       illegal
F8C0: 00       illegal
F8C1: 00       illegal
F8C2: FF 00 00 stx  $0000
F8C5: 04       illegal
F8C6: 02       illegal
F8C7: 10       sba  
F8C8: 00       illegal
F8C9: 0C       clc  
F8CA: 00       illegal
F8CB: 0D       sec  
F8CC: 24 00    bcc  $F8CE
F8CE: 00       illegal
F8CF: FF 00 00 stx  $0000
F8D2: 04       illegal
F8D3: 02       illegal
F8D4: 10       sba  
F8D5: 00       illegal
F8D6: FF 7F 0D stx  $7F0D
F8D9: 32       pula 
F8DA: 00       illegal
F8DB: 00       illegal
F8DC: FF 00 00 stx  $0000
F8DF: 04       illegal
F8E0: 02       illegal
F8E1: 10       sba  
F8E2: 00       illegal
F8E3: FF 7F 0D stx  $7F0D
F8E6: 3C       illegal
F8E7: 00       illegal
F8E8: 00       illegal
F8E9: FF 00 00 stx  $0000
F8EC: 04       illegal
F8ED: 02       illegal
F8EE: 10       sba  
F8EF: 00       illegal
F8F0: FF 7F 04 stx  $7F04
F8F3: 3B       rti  
F8F4: 00       illegal
F8F5: 00       illegal
F8F6: FF 00 00 stx  $0000
F8F9: 04       illegal
F8FA: 02       illegal
F8FB: 10       sba  
F8FC: 00       illegal
F8FD: FF 7F 06 stx  $7F06
F900: 1C       illegal
F901: 00       illegal
F902: 00       illegal
F903: FF 00 00 stx  $0000
F906: 04       illegal
F907: 02       illegal
F908: 10       sba  
F909: 00       illegal
F90A: 19       daa  
F90B: 00       illegal
F90C: 09       dex  
F90D: 24 00    bcc  $F90F
F90F: 00       illegal
F910: 01       nop  
F911: E3       illegal
F912: F5 04 02 bitb $0402
F915: 10       sba  
F916: 00       illegal
F917: 11       cba  
F918: 00       illegal
F919: 09       dex  
F91A: 24 00    bcc  $F91C
F91C: 00       illegal
F91D: 01       nop  
F91E: E3       illegal
F91F: 0E       cli  
F920: 04       illegal
F921: 02       illegal
F922: 10       sba  
F923: 00       illegal
F924: 0D       sec  
F925: 00       illegal
F926: 0B       sev  
F927: 32       pula 
F928: 00       illegal
F929: 00       illegal
F92A: FF 6A 0F stx  $6A0F
F92D: 06       tap  
F92E: 02       illegal
F92F: 10       sba  
F930: 00       illegal
F931: FF 7F 04 stx  $7F04
F934: 3B       rti  
F935: 00       illegal
F936: 00       illegal
F937: FF 00 00 stx  $0000
F93A: 04       illegal
F93B: 02       illegal
F93C: 10       sba  
F93D: 00       illegal
F93E: 43       coma 
F93F: 00       illegal
F940: 04       illegal
F941: 3B       rti  
F942: 00       illegal
F943: 00       illegal
F944: FF 00 00 stx  $0000
F947: 04       illegal
F948: 02       illegal
F949: 10       sba  
F94A: 00       illegal
F94B: 33       pulb 
F94C: 00       illegal
F94D: 04       illegal
F94E: 3B       rti  
F94F: 00       illegal
F950: 00       illegal
F951: FF 00 00 stx  $0000
F954: 04       illegal
F955: 02       illegal
F956: 10       sba  
F957: 00       illegal
F958: 08       inx  
F959: 00       illegal
F95A: 04       illegal
F95B: 3B       rti  
F95C: 00       illegal
F95D: 00       illegal
F95E: FF 00 00 stx  $0000
F961: 04       illegal
F962: 02       illegal
F963: 10       sba  
F964: 00       illegal
F965: 33       pulb 
F966: 80 F9    suba #$F9
F968: 4D       tsta 
F969: 09       dex  
F96A: 23 00    bls  $F96C
F96C: 00       illegal
F96D: 01       nop  
F96E: E3       illegal
F96F: 0E       cli  
F970: 06       tap  
F971: 04       illegal
F972: 10       sba  
F973: 00       illegal
F974: 0D       sec  
F975: 00       illegal
F976: 08       inx  
F977: 26 00    bne  $F979
F979: 00       illegal
F97A: 01       nop  
F97B: E3       illegal
F97C: 0E       cli  
F97D: 06       tap  
F97E: 04       illegal
F97F: 10       sba  
F980: 00       illegal
F981: 0D       sec  
F982: 00       illegal
F983: 08       inx  
F984: 26 00    bne  $F986
F986: 00       illegal
F987: 01       nop  
F988: E3       illegal
F989: 0E       cli  
F98A: 06       tap  
F98B: 04       illegal
F98C: 30       tsx  
F98D: 00       illegal
F98E: 0D       sec  
F98F: 00       illegal
F990: 06       tap  
F991: 1C       illegal
F992: 00       illegal
F993: 00       illegal
F994: FF 00 00 stx  $0000
F997: 04       illegal
F998: 02       illegal
F999: 30       tsx  
F99A: 00       illegal
F99B: 19       daa  
F99C: 00       illegal
F99D: 09       dex  
F99E: 24 00    bcc  $F9A0
F9A0: 00       illegal
F9A1: 01       nop  
F9A2: E3       illegal
F9A3: F5 04 02 bitb $0402
F9A6: 30       tsx  
F9A7: 00       illegal
F9A8: 11       cba  
F9A9: 00       illegal
F9AA: 09       dex  
F9AB: 24 00    bcc  $F9AD
F9AD: 00       illegal
F9AE: 01       nop  
F9AF: E3       illegal
F9B0: 0E       cli  
F9B1: 04       illegal
F9B2: 02       illegal
F9B3: 30       tsx  
F9B4: 00       illegal
F9B5: 0D       sec  
F9B6: 00       illegal
F9B7: EE 28    ldx  (x+$28)
F9B9: F4 60 ED andb $60ED
F9BC: EE F6    ldx  (x+$F6)
F9BE: 4B       illegal
F9BF: ED       illegal
F9C0: EE F7    ldx  (x+$F7)
F9C2: 57       asrb 
F9C3: ED       illegal
F9C4: EE F7    ldx  (x+$F7)
F9C6: 64 ED    lsr  (x+$ED)
F9C8: EE F7    ldx  (x+$F7)
F9CA: 9A EE    ora  $EE
F9CC: 54       lsrb 
F9CD: F7 4A EE stb  $4AEE
F9D0: 12       illegal
F9D1: F4 6D EE andb $6DEE
F9D4: 3C       illegal
F9D5: F4 A9 EE andb $A9EE
F9D8: 00       illegal
F9D9: F5 10 ED bitb $10ED
F9DC: EE F7    ldx  (x+$F7)
F9DE: 3D       illegal
F9DF: ED       illegal
F9E0: EE F6    ldx  (x+$F6)
F9E2: 5A       decb 
F9E3: ED       illegal
F9E4: EE F6    ldx  (x+$F6)
F9E6: 74 ED EE lsr  $EDEE
F9E9: F6 81 EE ldb  $81EE
F9EC: 34       des  
F9ED: F6 8E ED ldb  $8EED
F9F0: EE F6    ldx  (x+$F6)
F9F2: CF ED EE stx  #$EDEE
F9F5: F6 DC ED ldb  $DCED
F9F8: EE F6    ldx  (x+$F6)
F9FA: E9 ED    adcb (x+$ED)
F9FC: EE F6    ldx  (x+$F6)
F9FE: 2F ED    ble  $F9ED
FA00: EE F6    ldx  (x+$F6)
FA02: 3C       illegal
FA03: ED       illegal
FA04: EE F3    ldx  (x+$F3)
FA06: EB ED    addb (x+$ED)
FA08: EE F3    ldx  (x+$F3)
FA0A: F8 ED EE eorb $EDEE
FA0D: F4 05 ED andb $05ED
FA10: EE F4    ldx  (x+$F4)
FA12: 12       illegal
FA13: ED       illegal
FA14: EE F4    ldx  (x+$F4)
FA16: 1F       illegal
FA17: ED       illegal
FA18: EE F4    ldx  (x+$F4)
FA1A: 2C ED    bge  $FA09
FA1C: F2 F4 39 sbcb $F439
FA1F: ED       illegal
FA20: F8 F4 39 eorb $F439
FA23: ED       illegal
FA24: EE F7    ldx  (x+$F7)
FA26: 8B ED    adda #$ED
FA28: EE F6    ldx  (x+$F6)
FA2A: 67 EE    asr  (x+$EE)
FA2C: 48       asla 
FA2D: F6 67 EE ldb  $67EE
FA30: 62       illegal
FA31: F7 4A EE stb  $4AEE
FA34: 12       illegal
FA35: F5 1F EE bitb $1FEE
FA38: 00       illegal
FA39: F5 6D ED bitb $6DED
FA3C: EE F5    ldx  (x+$F5)
FA3E: 87 EE    sta  #$EE
FA40: 12       illegal
FA41: F4 A9 ED andb $A9ED
FA44: EE F6    ldx  (x+$F6)
FA46: 9B ED    adda $ED
FA48: EE F6    ldx  (x+$F6)
FA4A: A8 ED    eora (x+$ED)
FA4C: EE F6    ldx  (x+$F6)
FA4E: C2 ED    sbcb #$ED
FA50: EE F6    ldx  (x+$F6)
FA52: F6 ED EE ldb  $EDEE
FA55: F7 12 ED stb  $12ED
FA58: EE F7    ldx  (x+$F7)
FA5A: A9 ED    adca (x+$ED)
FA5C: EE F7    ldx  (x+$F7)
FA5E: B6 ED EE lda  $EDEE
FA61: F7 C3 ED stb  $C3ED
FA64: EE F7    ldx  (x+$F7)
FA66: D0 ED    subb $ED
FA68: EE F7    ldx  (x+$F7)
FA6A: DD       illegal
FA6B: ED       illegal
FA6C: EE F7    ldx  (x+$F7)
FA6E: EA ED    orb  (x+$ED)
FA70: EE F7    ldx  (x+$F7)
FA72: F7 ED EE stb  $EDEE
FA75: F8 04 ED eorb $04ED
FA78: EE F8    ldx  (x+$F8)
FA7A: 11       cba  
FA7B: ED       illegal
FA7C: EE F8    ldx  (x+$F8)
FA7E: 1E       illegal
FA7F: ED       illegal
FA80: EE F8    ldx  (x+$F8)
FA82: 2B ED    bmi  $FA71
FA84: EE F8    ldx  (x+$F8)
FA86: 38       illegal
FA87: ED       illegal
FA88: EE F8    ldx  (x+$F8)
FA8A: 45       illegal
FA8B: ED       illegal
FA8C: EE F8    ldx  (x+$F8)
FA8E: 52       illegal
FA8F: ED       illegal
FA90: EE F8    ldx  (x+$F8)
FA92: 5F       clrb 
FA93: ED       illegal
FA94: EE F8    ldx  (x+$F8)
FA96: 6C ED    inc  (x+$ED)
FA98: EE F8    ldx  (x+$F8)
FA9A: 79 ED EE rol  $EDEE
FA9D: F8 86 ED eorb $86ED
FAA0: EE F8    ldx  (x+$F8)
FAA2: 93       illegal
FAA3: ED       illegal
FAA4: EE F8    ldx  (x+$F8)
FAA6: BE ED EE lds  $EDEE
FAA9: F8 CB ED eorb $CBED
FAAC: EE F8    ldx  (x+$F8)
FAAE: D8 ED    eorb $ED
FAB0: EE F8    ldx  (x+$F8)
FAB2: E5 ED    bitb (x+$ED)
FAB4: EE F8    ldx  (x+$F8)
FAB6: F2 ED EE sbcb $EDEE
FAB9: F8 FF ED eorb $FFED
FABC: EE F9    ldx  (x+$F9)
FABE: 0C       clc  
FABF: ED       illegal
FAC0: EE F9    ldx  (x+$F9)
FAC2: 19       daa  
FAC3: ED       illegal
FAC4: EE F9    ldx  (x+$F9)
FAC6: 26 ED    bne  $FAB5
FAC8: EE F9    ldx  (x+$F9)
FACA: 33       pulb 
FACB: ED       illegal
FACC: EE F9    ldx  (x+$F9)
FACE: 40       nega 
FACF: ED       illegal
FAD0: EE F9    ldx  (x+$F9)
FAD2: 4D       tsta 
FAD3: ED       illegal
FAD4: EE F9    ldx  (x+$F9)
FAD6: 5A       decb 
FAD7: ED       illegal
FAD8: EE F9    ldx  (x+$F9)
FADA: 69 ED    rol  (x+$ED)
FADC: EE F9    ldx  (x+$F9)
FADE: 76 ED EE ror  $EDEE
FAE1: F9 83 ED adcb $83ED
FAE4: EE F9    ldx  (x+$F9)
FAE6: 90 ED    suba $ED
FAE8: EE F9    ldx  (x+$F9)
FAEA: 9D ED    jsr  $ED
FAEC: EE F9    ldx  (x+$F9)
FAEE: AA
;;GWVTAB 
;; GS28 (Used in Sinistar)
FAEF: 1C   
FAF0: 80 40    suba #$40
FAF2: 29 1B    bvs  $FB0F
FAF4: 10       sba  
FAF5: 09       dex  
FAF6: 06       tap  
FAF7: 04       illegal
FAF8: 07       tpa  
FAF9: 0C       clc  
FAFA: 12       illegal
FAFB: 1E       illegal
FAFC: 30       tsx  
FAFD: 49       rola 
FAFE: A4 C9    anda (x+$C9)
FB00: DF EB    stx  $EB
FB02: F6 FB FF ldb  $FBFF
FB05: FF FB F5 stx  $FBF5
FB08: EA DD    orb  (x+$DD)
FB0A: C7 9B    stb  #$9B
;;
FB0C: 10       sba  
FB0D: 00       illegal
FB0E: F4 00 E8 andb $00E8
FB11: 00       illegal
FB12: DC       illegal
FB13: 00       illegal
FB14: E2 00    sbcb (x+$00)
FB16: DC       illegal
FB17: 00       illegal
FB18: E8 00    eorb (x+$00)
FB1A: F4 00 00 andb $0000
;;
FB1D: 20 4C    bra  $FB6B
FB1F: 45       illegal
FB20: 41       illegal
FB21: 41       illegal
FB22: 43       coma 
FB23: 47       asra 
FB24: 77 87 90 asr  $8790
FB27: 97 A1    sta  $A1
FB29: A7 AE    sta  (x+$AE)
FB2B: B5 B8 BC bita $B8BC
FB2E: BE BF C1 lds  $BFC1
FB31: C2 C2    sbcb #$C2
FB33: C2 C1    sbcb #$C1
FB35: BF BE BB sts  $BEBB
FB38: B6 B1 AC lda  $B1AC
FB3B: A4 9E    anda (x+$9E)
FB3D: 93       illegal
;;
FB3E: 10       sba  
FB3F: 3C       illegal
FB40: 10       sba  
FB41: 17       tba  
FB42: 3F       swi  
FB43: 70 92 95 neg  $9295
FB46: 7F 7C 7E clr  $7C7E
FB49: 8A BE    ora  #$BE
FB4B: E7 EF    stb  (x+$EF)
FB4D: C5 7F    bitb #$7F
;;GSQ2
FB4F: 08       inx  
FB50: FF FF FF stx  $FFFF
FB53: FF 00 00 stx  $0000
FB56: 00       illegal
FB57: 00       illegal
;;GSQ22
FB58: 10       sba  
FB59: FF FF FF stx  $FFFF
FB5C: FF 00 00 stx  $0000
FB5F: 00       illegal
FB60: 00       illegal
FB61: FF FF FF stx  $FFFF
FB64: FF 00 00 stx  $0000
FB67: 00       illegal
FB68: 00       illegal
;;GS72
FB69: 48       asla 
FB6A: 8A 95    ora  #$95
FB6C: A0 AB    suba (x+$AB)
FB6E: B5 BF C8 bita $BFC8
FB71: D1 DA    cmpb $DA
FB73: E1 E8    cmpb (x+$E8)
FB75: EE F3    ldx  (x+$F3)
FB77: F7 FB FD stb  $FBFD
FB7A: FE FF FE ldx  $FFFE
FB7D: FD       illegal
FB7E: FB F7 F3 addb $F7F3
FB81: EE E8    ldx  (x+$E8)
FB83: E1 DA    cmpb (x+$DA)
FB85: D1 C8    cmpb $C8
FB87: BF B5 AB sts  $B5AB
FB8A: A0 95    suba (x+$95)
FB8C: 8A 7F    ora  #$7F
FB8E: 75       illegal
FB8F: 6A 5F    dec  (x+$5F)
FB91: 54       lsrb 
FB92: 4A       deca 
FB93: 40       nega 
FB94: 37       pshb 
FB95: 2E 25    bgt  $FBBC
FB97: 1E       illegal
FB98: 17       tba  
FB99: 11       cba  
FB9A: 0C       clc  
FB9B: 08       inx  
FB9C: 04       illegal
FB9D: 02       illegal
FB9E: 01       nop  
FB9F: 00       illegal
FBA0: 01       nop  
FBA1: 02       illegal
FBA2: 04       illegal
FBA3: 08       inx  
FBA4: 0C       clc  
FBA5: 11       cba  
FBA6: 17       tba  
FBA7: 1E       illegal
FBA8: 25 2E    bcs  $FBD8
FBAA: 37       pshb 
FBAB: 40       nega 
FBAC: 4A       deca 
FBAD: 54       lsrb 
FBAE: 5F       clrb 
FBAF: 6A 75    dec  (x+$75)
FBB1: 7F
;;SVTAB 
FBB2: 73 20 00 00 00 04 00
FBB9: A3 11 00 01 01 10 04       illegal
FBC0: FF 12 14 01 01 04 14       illegal
FBC7: 3D 53 01 01 01 02 18       illegal
FBCE: 01 14 00 00 00 08 1A       illegal
FBD5: 81 25 00 00 00 16 22
FBDC: 01 16 01 01 01 01 38       illegal
FBE3: FE 10 00 00 00 20 4C
FBEA: F1 10 00 00 00 4D 4C       inca 
FBF1: F1 15 00 00 00 4D 4C       inca 
FBF8: F1 16 00 00 00 4D 4C       inca 
FBFF: FE 10 00 00 00 20 4C    bra  $FC52
;;GFRTAB
FC06: 08       inx  
FC07: 10       sba  
FC08: 20 30    bra  $FC3A
FC0A: 14       illegal
FC0B: 18       illegal
FC0C: 20 30    bra  $FC3E
FC0E: 40       nega 
FC0F: 50       negb 
FC10: 40       nega 
FC11: 30       tsx  
FC12: 20 10    bra  $FC24
FC14: 0C       clc  
FC15: 0A       clv  
FC16: 08       inx  
FC17: 07       tpa  
FC18: 06       tap  
FC19: 05       illegal
FC1A: 01       nop  
FC1B: 02       illegal
FC1C: 02       illegal
FC1D: 03       illegal
FC1E: 98 90    eora $90
FC20: 02       illegal
FC21: 03       illegal
FC22: 04       illegal
FC23: 05       illegal
FC24: 06       tap  
FC25: 07       tpa  
FC26: 08       inx  
FC27: 09       dex  
FC28: 01       nop  
FC29: 01       nop  
FC2A: 02       illegal
FC2B: 02       illegal
FC2C: 04       illegal
FC2D: 04       illegal
FC2E: 08       inx  
FC2F: 08       inx  
FC30: 10       sba  
FC31: 20 28    bra  $FC5B
FC33: 30       tsx  
FC34: 38       illegal
FC35: 40       nega 
FC36: 48       asla 
FC37: 50       negb 
FC38: 60 70    neg  (x+$70)
FC3A: 80 A0    suba #$A0
FC3C: B0 C0 08 suba $C008
FC3F: 40       nega 
FC40: 08       inx  
FC41: 40       nega 
FC42: 08       inx  
FC43: 40       nega 
FC44: 08       inx  
FC45: 40       nega 
FC46: 08       inx  
FC47: 40       nega 
FC48: 08       inx  
FC49: 40       nega 
FC4A: 08       inx  
FC4B: 40       nega 
FC4C: 08       inx  
FC4D: 40       nega 
FC4E: 08       inx  
FC4F: 40       nega 
FC50: 08       inx  
FC51: 40       nega 
FC52: 01       nop  
FC53: 01       nop  
FC54: 01       nop  
FC55: 02       illegal
FC56: 02       illegal
FC57: 03       illegal
FC58: 03       illegal
FC59: 04       illegal
FC5A: 02       illegal
FC5B: 02       illegal
FC5C: 03       illegal
FC5D: 03       illegal
FC5E: 04       illegal
FC5F: 04       illegal
FC60: 05       illegal
FC61: 03       illegal
FC62: 03       illegal
FC63: 03       illegal
FC64: 04       illegal
FC65: 04       illegal
FC66: 05       illegal
FC67: 05       illegal
FC68: 06       tap  
FC69: 02       illegal
FC6A: 02       illegal
FC6B: 02       illegal
FC6C: 03       illegal
FC6D: 03       illegal
FC6E: 04       illegal
FC6F: 04       illegal
FC70: 05       illegal
FC71: 03       illegal
FC72: 03       illegal
FC73: 03       illegal
FC74: 04       illegal
FC75: 04       illegal
FC76: 05       illegal
FC77: 05       illegal
FC78: 06       tap  
FC79: 04       illegal
FC7A: 04       illegal
FC7B: 04       illegal
FC7C: 05       illegal
FC7D: 05       illegal
FC7E: 06       tap  
FC7F: 06       tap  
FC80: 07       tpa  
FC81: 07       tpa  
FC82: 07       tpa  
FC83: 07       tpa  
FC84: 08       inx  
FC85: 08       inx  
FC86: 09       dex  
FC87: 09       dex  
FC88: 0A       clv  
FC89: 0C       clc  
FC8A: 0C       clc  
FC8B: 0C       clc  
FC8C: 0D       sec  
FC8D: 0D       sec  
FC8E: 0E       cli  
FC8F: 0E       cli  
FC90: 0F       sei  
FC91: 06       tap  
FC92: 06       tap  
FC93: 06       tap  
FC94: 07       tpa  
FC95: 07       tpa  
FC96: 08       inx  
FC97: 08       inx  
FC98: 09       dex  
FC99: 02       illegal
FC9A: 02       illegal
FC9B: 02       illegal
FC9C: 03       illegal
FC9D: 03       illegal
FC9E: 04       illegal
FC9F: 04       illegal
FCA0: 05       illegal
FCA1: FF FF FF stx  $FFFF
FCA4: FF FF FF stx  $FFFF
FCA7: FF FF FF stx  $FFFF
FCAA: FF FF FF stx  $FFFF
FCAD: FF FF FF stx  $FFFF
FCB0: FF FF FF stx  $FFFF
FCB3: FF FF FF stx  $FFFF
FCB6: FF FF FF stx  $FFFF
FCB9: FF FF FF stx  $FFFF
FCBC: FF FF FF stx  $FFFF
FCBF: FF FF FF stx  $FFFF
FCC2: FF FF FF stx  $FFFF
FCC5: FF FF FF stx  $FFFF
FCC8: FF FF FF stx  $FFFF
FCCB: FF FF FF stx  $FFFF
FCCE: FF FF FF stx  $FFFF
FCD1: FF FF FF stx  $FFFF
FCD4: FF FF FF stx  $FFFF
FCD7: FF FF FF stx  $FFFF
FCDA: FF FF FF stx  $FFFF
FCDD: FF FF FF stx  $FFFF
FCE0: FF FF FF stx  $FFFF
FCE3: FF FF FF stx  $FFFF
FCE6: FF FF FF stx  $FFFF
FCE9: FF FF FF stx  $FFFF
FCEC: FF FF FF stx  $FFFF
FCEF: FF FF FF stx  $FFFF
FCF2: FF FF FF stx  $FFFF
FCF5: FF FF FF stx  $FFFF
FCF8: FF FF FF stx  $FFFF
FCFB: FF FF FF stx  $FFFF
FCFE: FF FF FF stx  $FFFF
FD01: FF FF FF stx  $FFFF
FD04: FF FF FF stx  $FFFF
FD07: FF FF FF stx  $FFFF
FD0A: FF FF FF stx  $FFFF
FD0D: FF FF FF stx  $FFFF
FD10: FF FF FF stx  $FFFF
FD13: FF FF FF stx  $FFFF
FD16: FF FF FF stx  $FFFF
FD19: FF FF FF stx  $FFFF
FD1C: FF FF FF stx  $FFFF
FD1F: FF FF FF stx  $FFFF
FD22: FF FF FF stx  $FFFF
FD25: FF FF FF stx  $FFFF
FD28: FF FF FF stx  $FFFF
FD2B: FF FF FF stx  $FFFF
FD2E: FF FF FF stx  $FFFF
FD31: FF FF FF stx  $FFFF
FD34: FF FF FF stx  $FFFF
FD37: FF FF FF stx  $FFFF
FD3A: FF FF FF stx  $FFFF
FD3D: FF FF FF stx  $FFFF
FD40: FF FF FF stx  $FFFF
FD43: FF FF FF stx  $FFFF
FD46: FF FF FF stx  $FFFF
FD49: FF FF FF stx  $FFFF
FD4C: FF FF FF stx  $FFFF
FD4F: FF FF FF stx  $FFFF
FD52: FF FF FF stx  $FFFF
FD55: FF FF FF stx  $FFFF
FD58: FF FF FF stx  $FFFF
FD5B: FF FF FF stx  $FFFF
FD5E: FF FF FF stx  $FFFF
FD61: FF FF FF stx  $FFFF
FD64: FF FF FF stx  $FFFF
FD67: FF FF FF stx  $FFFF
FD6A: FF FF FF stx  $FFFF
FD6D: FF FF FF stx  $FFFF
FD70: FF FF FF stx  $FFFF
FD73: FF FF FF stx  $FFFF
FD76: FF FF FF stx  $FFFF
FD79: FF FF FF stx  $FFFF
FD7C: FF FF FF stx  $FFFF
FD7F: FF FF FF stx  $FFFF
FD82: FF FF FF stx  $FFFF
FD85: FF FF FF stx  $FFFF
FD88: FF FF FF stx  $FFFF
FD8B: FF FF FF stx  $FFFF
FD8E: FF FF FF stx  $FFFF
FD91: FF FF FF stx  $FFFF
FD94: FF FF FF stx  $FFFF
FD97: FF FF FF stx  $FFFF
FD9A: FF FF FF stx  $FFFF
FD9D: FF FF FF stx  $FFFF
FDA0: FF FF FF stx  $FFFF
FDA3: FF FF FF stx  $FFFF
FDA6: FF FF FF stx  $FFFF
FDA9: FF FF FF stx  $FFFF
FDAC: FF FF FF stx  $FFFF
FDAF: FF FF FF stx  $FFFF
FDB2: FF FF FF stx  $FFFF
FDB5: FF FF FF stx  $FFFF
FDB8: FF FF FF stx  $FFFF
FDBB: FF FF FF stx  $FFFF
FDBE: FF FF FF stx  $FFFF
FDC1: FF FF FF stx  $FFFF
FDC4: FF FF FF stx  $FFFF
FDC7: FF FF FF stx  $FFFF
FDCA: FF FF FF stx  $FFFF
FDCD: FF FF FF stx  $FFFF
FDD0: FF FF FF stx  $FFFF
FDD3: FF FF FF stx  $FFFF
FDD6: FF FF FF stx  $FFFF
FDD9: FF FF FF stx  $FFFF
FDDC: FF FF FF stx  $FFFF
FDDF: FF FF FF stx  $FFFF
FDE2: FF FF FF stx  $FFFF
FDE5: FF FF FF stx  $FFFF
FDE8: FF FF FF stx  $FFFF
FDEB: FF FF FF stx  $FFFF
FDEE: FF FF FF stx  $FFFF
FDF1: FF FF FF stx  $FFFF
FDF4: FF FF FF stx  $FFFF
FDF7: FF FF FF stx  $FFFF
FDFA: FF FF FF stx  $FFFF
FDFD: FF FF FF stx  $FFFF
FE00: FF FF FF stx  $FFFF
FE03: FF FF FF stx  $FFFF
FE06: FF FF FF stx  $FFFF
FE09: FF FF FF stx  $FFFF
FE0C: FF FF FF stx  $FFFF
FE0F: FF FF FF stx  $FFFF
FE12: FF FF FF stx  $FFFF
FE15: FF FF FF stx  $FFFF
FE18: FF FF FF stx  $FFFF
FE1B: FF FF FF stx  $FFFF
FE1E: FF FF FF stx  $FFFF
FE21: FF FF FF stx  $FFFF
FE24: FF FF FF stx  $FFFF
FE27: FF FF FF stx  $FFFF
FE2A: FF FF FF stx  $FFFF
FE2D: FF FF FF stx  $FFFF
FE30: FF FF FF stx  $FFFF
FE33: FF FF FF stx  $FFFF
FE36: FF FF FF stx  $FFFF
FE39: FF FF FF stx  $FFFF
FE3C: FF FF FF stx  $FFFF
FE3F: FF FF FF stx  $FFFF
FE42: FF FF FF stx  $FFFF
FE45: FF FF FF stx  $FFFF
FE48: FF FF FF stx  $FFFF
FE4B: FF FF FF stx  $FFFF
FE4E: FF FF FF stx  $FFFF
FE51: FF FF FF stx  $FFFF
FE54: FF FF FF stx  $FFFF
FE57: FF FF FF stx  $FFFF
FE5A: FF FF FF stx  $FFFF
FE5D: FF FF FF stx  $FFFF
FE60: FF FF FF stx  $FFFF
FE63: FF FF FF stx  $FFFF
FE66: FF FF FF stx  $FFFF
FE69: FF FF FF stx  $FFFF
FE6C: FF FF FF stx  $FFFF
FE6F: FF FF FF stx  $FFFF
FE72: FF FF FF stx  $FFFF
FE75: FF FF FF stx  $FFFF
FE78: FF FF FF stx  $FFFF
FE7B: FF FF FF stx  $FFFF
FE7E: FF FF FF stx  $FFFF
FE81: FF FF FF stx  $FFFF
FE84: FF FF FF stx  $FFFF
FE87: FF FF FF stx  $FFFF
FE8A: FF FF FF stx  $FFFF
FE8D: FF FF FF stx  $FFFF
FE90: FF FF FF stx  $FFFF
FE93: FF FF FF stx  $FFFF
FE96: FF FF FF stx  $FFFF
FE99: FF FF FF stx  $FFFF
FE9C: FF FF FF stx  $FFFF
FE9F: FF FF FF stx  $FFFF
FEA2: FF FF FF stx  $FFFF
FEA5: FF FF FF stx  $FFFF
FEA8: FF FF FF stx  $FFFF
FEAB: FF FF FF stx  $FFFF
FEAE: FF FF FF stx  $FFFF
FEB1: FF FF FF stx  $FFFF
FEB4: FF FF FF stx  $FFFF
FEB7: FF FF FF stx  $FFFF
FEBA: FF FF FF stx  $FFFF
FEBD: FF FF FF stx  $FFFF
FEC0: FF FF FF stx  $FFFF
FEC3: FF FF FF stx  $FFFF
FEC6: FF FF FF stx  $FFFF
FEC9: FF FF FF stx  $FFFF
FECC: FF FF FF stx  $FFFF
FECF: FF FF FF stx  $FFFF
FED2: FF FF FF stx  $FFFF
FED5: FF FF FF stx  $FFFF
FED8: FF FF FF stx  $FFFF
FEDB: FF FF FF stx  $FFFF
FEDE: FF FF FF stx  $FFFF
FEE1: FF FF FF stx  $FFFF
FEE4: FF FF FF stx  $FFFF
FEE7: FF FF FF stx  $FFFF
FEEA: FF FF FF stx  $FFFF
FEED: FF FF FF stx  $FFFF
FEF0: FF FF FF stx  $FFFF
FEF3: FF FF FF stx  $FFFF
FEF6: FF FF FF stx  $FFFF
FEF9: FF FF FF stx  $FFFF
FEFC: FF FF FF stx  $FFFF
FEFF: FF FF FF stx  $FFFF
FF02: FF FF FF stx  $FFFF
FF05: FF FF FF stx  $FFFF
FF08: FF FF FF stx  $FFFF
FF0B: FF FF FF stx  $FFFF
FF0E: FF FF FF stx  $FFFF
FF11: FF FF FF stx  $FFFF
FF14: FF FF FF stx  $FFFF
FF17: FF FF FF stx  $FFFF
FF1A: FF FF FF stx  $FFFF
FF1D: FF FF FF stx  $FFFF
FF20: FF FF FF stx  $FFFF
FF23: FF FF FF stx  $FFFF
FF26: FF FF FF stx  $FFFF
FF29: FF FF FF stx  $FFFF
FF2C: FF FF FF stx  $FFFF
FF2F: FF FF FF stx  $FFFF
FF32: FF FF FF stx  $FFFF
FF35: FF FF FF stx  $FFFF
FF38: FF FF FF stx  $FFFF
FF3B: FF FF FF stx  $FFFF
FF3E: FF FF FF stx  $FFFF
FF41: FF FF FF stx  $FFFF
FF44: FF FF FF stx  $FFFF
FF47: FF FF FF stx  $FFFF
FF4A: FF FF FF stx  $FFFF
FF4D: FF FF FF stx  $FFFF
FF50: FF FF FF stx  $FFFF
FF53: FF FF FF stx  $FFFF
FF56: FF FF FF stx  $FFFF
FF59: FF FF FF stx  $FFFF
FF5C: FF FF FF stx  $FFFF
FF5F: FF FF FF stx  $FFFF
FF62: FF FF FF stx  $FFFF
FF65: FF FF FF stx  $FFFF
FF68: FF FF FF stx  $FFFF
FF6B: FF FF FF stx  $FFFF
FF6E: FF FF FF stx  $FFFF
FF71: FF FF FF stx  $FFFF
FF74: FF FF FF stx  $FFFF
FF77: FF FF FF stx  $FFFF
FF7A: FF FF FF stx  $FFFF
FF7D: FF FF FF stx  $FFFF
FF80: FF FF FF stx  $FFFF
FF83: FF FF FF stx  $FFFF
FF86: FF FF FF stx  $FFFF
FF89: FF FF FF stx  $FFFF
FF8C: FF FF FF stx  $FFFF
FF8F: FF FF FF stx  $FFFF
FF92: FF FF FF stx  $FFFF
FF95: FF FF FF stx  $FFFF
FF98: FF FF FF stx  $FFFF
FF9B: FF FF FF stx  $FFFF
FF9E: FF FF FF stx  $FFFF
FFA1: FF FF FF stx  $FFFF
FFA4: FF FF FF stx  $FFFF
FFA7: FF FF FF stx  $FFFF
FFAA: FF FF FF stx  $FFFF
FFAD: FF FF FF stx  $FFFF
FFB0: FF FF FF stx  $FFFF
FFB3: FF FF FF stx  $FFFF
FFB6: FF FF FF stx  $FFFF
FFB9: FF FF FF stx  $FFFF
FFBC: FF FF FF stx  $FFFF
FFBF: FF FF FF stx  $FFFF
FFC2: FF FF FF stx  $FFFF
FFC5: FF FF FF stx  $FFFF
FFC8: FF FF FF stx  $FFFF
FFCB: FF FF FF stx  $FFFF
FFCE: FF FF FF stx  $FFFF
FFD1: FF FF FF stx  $FFFF
FFD4: FF FF FF stx  $FFFF
FFD7: FF FF FF stx  $FFFF
FFDA: FF FF FF stx  $FFFF
FFDD: FF FF FF stx  $FFFF
FFE0: FF FF FF stx  $FFFF
FFE3: FF FF FF stx  $FFFF
FFE6: FF FF FF stx  $FFFF
FFE9: FF FF FF stx  $FFFF
FFEC: FF FF FF stx  $FFFF
FFEF: FF FF FF stx  $FFFF
FFF2: FF FF FF stx  $FFFF
FFF5: FF FF FF stx  $FFFF
;;IRQV
FFF8: E9 B9    adcb (x+$B9)
;;SWIV
FFFA: E0 01    subb (x+$01)
;;NMIV
FFFC: E9 DD    adcb (x+$DD)
;;RESETV
FFFE: E0 01    subb (x+$01)
