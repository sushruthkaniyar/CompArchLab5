;====================================================
; pagetable.asm
; Page Table
; Starting address: x1000
; PTE: [13:9] PFN, [3] P, [2] V, [1] M, [0] R
;====================================================

.ORIG x1000

.FILL x0004      ; page 0 -> frame 0, protected, valid
.FILL x0204      ; page 1 -> frame 1, protected, valid
.FILL x0404      ; page 2 -> frame 2, protected, valid
.FILL x0604      ; page 3 -> frame 3, protected, valid
.FILL x0804      ; page 4 -> frame 4, protected, valid
.FILL x0A04      ; page 5 -> frame 5, protected, valid
.FILL x0C04      ; page 6 -> frame 6, protected, valid
.FILL x0E04      ; page 7 -> frame 7, protected, valid
.FILL x1004      ; page 8 -> frame 8, protected, valid
.FILL x1204      ; page 9 -> frame 9, protected, valid
.FILL x1404      ; page 10 -> frame 10, protected, valid
.FILL x1604      ; page 11 -> frame 11, protected, valid
.FILL x1804      ; page 12 -> frame 12, protected, valid
.FILL x1A04      ; page 13 -> frame 13, protected, valid
.FILL x1C04      ; page 14 -> frame 14, protected, valid
.FILL x1E04      ; page 15 -> frame 15, protected, valid
.FILL x2004      ; page 16 -> frame 16, protected, valid
.FILL x2204      ; page 17 -> frame 17, protected, valid
.FILL x2404      ; page 18 -> frame 18, protected, valid
.FILL x2604      ; page 19 -> frame 19, protected, valid
.FILL x2804      ; page 20 -> frame 20, protected, valid
.FILL x2A04      ; page 21 -> frame 21, protected, valid
.FILL x2C04      ; page 22 -> frame 22, protected, valid
.FILL x2E04      ; page 23 -> frame 23, protected, valid
.FILL x320C      ; page 24 -> frame 25, unprotected, valid
.FILL x0008      ; page 25: unprotected, invalid
.FILL x0008      ; page 26: unprotected, invalid
.FILL x0008      ; page 27: unprotected, invalid
.FILL x0008      ; page 28: unprotected, invalid
.FILL x0008      ; page 29: unprotected, invalid
.FILL x0008      ; page 30: unprotected, invalid
.FILL x0008      ; page 31: unprotected, invalid
.FILL x0008      ; page 32: unprotected, invalid
.FILL x0008      ; page 33: unprotected, invalid
.FILL x0008      ; page 34: unprotected, invalid
.FILL x0008      ; page 35: unprotected, invalid
.FILL x0008      ; page 36: unprotected, invalid
.FILL x0008      ; page 37: unprotected, invalid
.FILL x0008      ; page 38: unprotected, invalid
.FILL x0008      ; page 39: unprotected, invalid
.FILL x0008      ; page 40: unprotected, invalid
.FILL x0008      ; page 41: unprotected, invalid
.FILL x0008      ; page 42: unprotected, invalid
.FILL x0008      ; page 43: unprotected, invalid
.FILL x0008      ; page 44: unprotected, invalid
.FILL x0008      ; page 45: unprotected, invalid
.FILL x0008      ; page 46: unprotected, invalid
.FILL x0008      ; page 47: unprotected, invalid
.FILL x0008      ; page 48: unprotected, invalid
.FILL x0008      ; page 49: unprotected, invalid
.FILL x0008      ; page 50: unprotected, invalid
.FILL x0008      ; page 51: unprotected, invalid
.FILL x0008      ; page 52: unprotected, invalid
.FILL x0008      ; page 53: unprotected, invalid
.FILL x0008      ; page 54: unprotected, invalid
.FILL x0008      ; page 55: unprotected, invalid
.FILL x0008      ; page 56: unprotected, invalid
.FILL x0008      ; page 57: unprotected, invalid
.FILL x0008      ; page 58: unprotected, invalid
.FILL x0008      ; page 59: unprotected, invalid
.FILL x0008      ; page 60: unprotected, invalid
.FILL x0008      ; page 61: unprotected, invalid
.FILL x0008      ; page 62: unprotected, invalid
.FILL x0008      ; page 63: unprotected, invalid
.FILL x0008      ; page 64: unprotected, invalid
.FILL x0008      ; page 65: unprotected, invalid
.FILL x0008      ; page 66: unprotected, invalid
.FILL x0008      ; page 67: unprotected, invalid
.FILL x0008      ; page 68: unprotected, invalid
.FILL x0008      ; page 69: unprotected, invalid
.FILL x0008      ; page 70: unprotected, invalid
.FILL x0008      ; page 71: unprotected, invalid
.FILL x0008      ; page 72: unprotected, invalid
.FILL x0008      ; page 73: unprotected, invalid
.FILL x0008      ; page 74: unprotected, invalid
.FILL x0008      ; page 75: unprotected, invalid
.FILL x0008      ; page 76: unprotected, invalid
.FILL x0008      ; page 77: unprotected, invalid
.FILL x0008      ; page 78: unprotected, invalid
.FILL x0008      ; page 79: unprotected, invalid
.FILL x0008      ; page 80: unprotected, invalid
.FILL x0008      ; page 81: unprotected, invalid
.FILL x0008      ; page 82: unprotected, invalid
.FILL x0008      ; page 83: unprotected, invalid
.FILL x0008      ; page 84: unprotected, invalid
.FILL x0008      ; page 85: unprotected, invalid
.FILL x0008      ; page 86: unprotected, invalid
.FILL x0008      ; page 87: unprotected, invalid
.FILL x0008      ; page 88: unprotected, invalid
.FILL x0008      ; page 89: unprotected, invalid
.FILL x0008      ; page 90: unprotected, invalid
.FILL x0008      ; page 91: unprotected, invalid
.FILL x0008      ; page 92: unprotected, invalid
.FILL x0008      ; page 93: unprotected, invalid
.FILL x0008      ; page 94: unprotected, invalid
.FILL x0008      ; page 95: unprotected, invalid
.FILL x380C      ; page 96 -> frame 28, unprotected, valid
.FILL x0008      ; page 97: unprotected, invalid
.FILL x0008      ; page 98: unprotected, invalid
.FILL x0008      ; page 99: unprotected, invalid
.FILL x0008      ; page 100: unprotected, invalid
.FILL x0008      ; page 101: unprotected, invalid
.FILL x0008      ; page 102: unprotected, invalid
.FILL x0008      ; page 103: unprotected, invalid
.FILL x0008      ; page 104: unprotected, invalid
.FILL x0008      ; page 105: unprotected, invalid
.FILL x0008      ; page 106: unprotected, invalid
.FILL x0008      ; page 107: unprotected, invalid
.FILL x0008      ; page 108: unprotected, invalid
.FILL x0008      ; page 109: unprotected, invalid
.FILL x0008      ; page 110: unprotected, invalid
.FILL x0008      ; page 111: unprotected, invalid
.FILL x0008      ; page 112: unprotected, invalid
.FILL x0008      ; page 113: unprotected, invalid
.FILL x0008      ; page 114: unprotected, invalid
.FILL x0008      ; page 115: unprotected, invalid
.FILL x0008      ; page 116: unprotected, invalid
.FILL x0008      ; page 117: unprotected, invalid
.FILL x0008      ; page 118: unprotected, invalid
.FILL x0008      ; page 119: unprotected, invalid
.FILL x0008      ; page 120: unprotected, invalid
.FILL x0008      ; page 121: unprotected, invalid
.FILL x0008      ; page 122: unprotected, invalid
.FILL x0008      ; page 123: unprotected, invalid
.FILL x0008      ; page 124: unprotected, invalid
.FILL x0008      ; page 125: unprotected, invalid
.FILL x3A0C      ; page 126 -> frame 29, unprotected, valid
.FILL x0008      ; page 127: unprotected, invalid

.END