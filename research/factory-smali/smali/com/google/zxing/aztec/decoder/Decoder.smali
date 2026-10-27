.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 46
    const-string v0, "CTRL_PS"

    const-string v1, " "

    const-string v2, "A"

    const-string v3, "B"

    const-string v4, "C"

    const-string v5, "D"

    const-string v6, "E"

    const-string v7, "F"

    const-string v8, "G"

    const-string v9, "H"

    const-string v10, "I"

    const-string v11, "J"

    const-string v12, "K"

    const-string v13, "L"

    const-string v14, "M"

    const-string v15, "N"

    const-string v16, "O"

    const-string v17, "P"

    const-string v18, "Q"

    const-string v19, "R"

    const-string v20, "S"

    const-string v21, "T"

    const-string v22, "U"

    const-string v23, "V"

    const-string v24, "W"

    const-string v25, "X"

    const-string v26, "Y"

    const-string v27, "Z"

    const-string v28, "CTRL_LL"

    const-string v29, "CTRL_ML"

    const-string v30, "CTRL_DL"

    const-string v31, "CTRL_BS"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 51
    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "a"

    const-string v4, "b"

    const-string v5, "c"

    const-string v6, "d"

    const-string v7, "e"

    const-string v8, "f"

    const-string v9, "g"

    const-string v10, "h"

    const-string v11, "i"

    const-string v12, "j"

    const-string v13, "k"

    const-string v14, "l"

    const-string v15, "m"

    const-string v16, "n"

    const-string v17, "o"

    const-string v18, "p"

    const-string v19, "q"

    const-string v20, "r"

    const-string v21, "s"

    const-string v22, "t"

    const-string v23, "u"

    const-string v24, "v"

    const-string v25, "w"

    const-string v26, "x"

    const-string v27, "y"

    const-string v28, "z"

    const-string v29, "CTRL_US"

    const-string v30, "CTRL_ML"

    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 56
    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "\u0001"

    const-string v4, "\u0002"

    const-string v5, "\u0003"

    const-string v6, "\u0004"

    const-string v7, "\u0005"

    const-string v8, "\u0006"

    const-string v9, "\u0007"

    const-string v10, "\u0008"

    const-string v11, "\t"

    const-string v12, "\n"

    const-string v13, "\u000b"

    const-string v14, "\u000c"

    const-string v15, "\r"

    const-string v16, "\u001b"

    const-string v17, "\u001c"

    const-string v18, "\u001d"

    const-string v19, "\u001e"

    const-string v20, "\u001f"

    const-string v21, "@"

    const-string v22, "\\"

    const-string v23, "^"

    const-string v24, "_"

    const-string v25, "`"

    const-string v26, "|"

    const-string v27, "~"

    const-string v28, "\u007f"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_UL"

    const-string v31, "CTRL_PL"

    const-string v32, "CTRL_BS"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 62
    const-string v1, ""

    const-string v2, "\r"

    const-string v3, "\r\n"

    const-string v4, ". "

    const-string v5, ", "

    const-string v6, ": "

    const-string v7, "!"

    const-string v8, "\""

    const-string v9, "#"

    const-string v10, "$"

    const-string v11, "%"

    const-string v12, "&"

    const-string v13, "\'"

    const-string v14, "("

    const-string v15, ")"

    const-string v16, "*"

    const-string v17, "+"

    const-string v18, ","

    const-string v19, "-"

    const-string v20, "."

    const-string v21, "/"

    const-string v22, ":"

    const-string v23, ";"

    const-string v24, "<"

    const-string v25, "="

    const-string v26, ">"

    const-string v27, "?"

    const-string v28, "["

    const-string v29, "]"

    const-string v30, "{"

    const-string v31, "}"

    const-string v32, "CTRL_UL"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 67
    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, ","

    const-string v14, "."

    const-string v15, "CTRL_UL"

    const-string v16, "CTRL_US"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private correctBits([Z)[Z
    .locals 20
    .param p1, "rawbits"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 202
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    .line 203
    const/4 v0, 0x6

    .line 204
    .local v0, "codewordSize":I
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 213
    .end local v0    # "codewordSize":I
    .local v3, "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    .local v4, "codewordSize":I
    :goto_0
    move v4, v0

    goto :goto_1

    .line 205
    .end local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    .end local v4    # "codewordSize":I
    :cond_0
    iget-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v3, :cond_1

    .line 206
    const/16 v0, 0x8

    .line 207
    .restart local v0    # "codewordSize":I
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 208
    .end local v0    # "codewordSize":I
    :cond_1
    iget-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v0

    const/16 v3, 0x16

    if-gt v0, v3, :cond_2

    .line 209
    const/16 v0, 0xa

    .line 210
    .restart local v0    # "codewordSize":I
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 212
    .end local v0    # "codewordSize":I
    :cond_2
    const/16 v0, 0xc

    .line 213
    .restart local v0    # "codewordSize":I
    sget-object v3, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    .line 216
    .end local v0    # "codewordSize":I
    .restart local v3    # "gf":Lcom/google/zxing/common/reedsolomon/GenericGF;
    .restart local v4    # "codewordSize":I
    :goto_1
    iget-object v0, v1, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    move-result v5

    .line 217
    .local v5, "numDataCodewords":I
    array-length v0, v2

    div-int v6, v0, v4

    .line 218
    .local v6, "numCodewords":I
    if-lt v6, v5, :cond_e

    .line 221
    array-length v0, v2

    rem-int/2addr v0, v4

    .line 222
    .local v0, "offset":I
    sub-int v7, v6, v5

    .line 224
    .local v7, "numECCodewords":I
    new-array v8, v6, [I

    .line 225
    .local v8, "dataWords":[I
    move v10, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v10, "offset":I
    :goto_2
    if-ge v0, v6, :cond_3

    .line 226
    invoke-static {v2, v10, v4}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v11

    aput v11, v8, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v10, v4

    goto :goto_2

    .line 230
    .end local v0    # "i":I
    :cond_3
    :try_start_0
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v0, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 231
    .local v0, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    invoke-virtual {v0, v8, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    nop

    .line 238
    const/4 v0, 0x1

    shl-int v11, v0, v4

    sub-int/2addr v11, v0

    .line 239
    .local v11, "mask":I
    const/4 v12, 0x0

    .line 240
    .local v12, "stuffedBits":I
    move v13, v12

    const/4 v12, 0x0

    .local v12, "i":I
    .local v13, "stuffedBits":I
    :goto_3
    if-ge v12, v5, :cond_7

    .line 241
    aget v14, v8, v12

    .line 242
    .local v14, "dataWord":I
    if-eqz v14, :cond_6

    if-eq v14, v11, :cond_6

    .line 244
    if-eq v14, v0, :cond_4

    add-int/lit8 v15, v11, -0x1

    if-ne v14, v15, :cond_5

    .line 245
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 240
    .end local v14    # "dataWord":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 243
    .restart local v14    # "dataWord":I
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 249
    .end local v12    # "i":I
    .end local v14    # "dataWord":I
    :cond_7
    mul-int v12, v5, v4

    sub-int/2addr v12, v13

    new-array v12, v12, [Z

    .line 250
    .local v12, "correctedBits":[Z
    const/4 v14, 0x0

    .line 251
    .local v14, "index":I
    move v15, v14

    const/4 v14, 0x0

    .local v14, "i":I
    .local v15, "index":I
    :goto_4
    if-ge v14, v5, :cond_d

    .line 252
    aget v9, v8, v14

    .line 253
    .local v9, "dataWord":I
    if-eq v9, v0, :cond_a

    add-int/lit8 v0, v11, -0x1

    if-ne v9, v0, :cond_8

    goto :goto_7

    .line 258
    :cond_8
    add-int/lit8 v0, v4, -0x1

    .local v0, "bit":I
    :goto_5
    if-ltz v0, :cond_c

    .line 259
    add-int/lit8 v17, v15, 0x1

    .local v17, "index":I
    const/16 v16, 0x1

    shl-int v18, v16, v0

    and-int v18, v9, v18

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    goto :goto_6

    :cond_9
    const/16 v18, 0x0

    :goto_6
    aput-boolean v18, v12, v15

    .line 258
    .end local v15    # "index":I
    add-int/lit8 v0, v0, -0x1

    move/from16 v15, v17

    goto :goto_5

    .line 255
    .end local v0    # "bit":I
    .end local v17    # "index":I
    .restart local v15    # "index":I
    :cond_a
    :goto_7
    add-int v0, v15, v4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le v9, v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    invoke-static {v12, v15, v0, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 256
    add-int/lit8 v0, v4, -0x1

    add-int/2addr v15, v0

    .line 251
    .end local v9    # "dataWord":I
    :cond_c
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x1

    move-object/from16 v1, p0

    goto :goto_4

    .line 263
    .end local v14    # "i":I
    :cond_d
    return-object v12

    .line 232
    .end local v11    # "mask":I
    .end local v12    # "correctedBits":[Z
    .end local v13    # "stuffedBits":I
    .end local v15    # "index":I
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 219
    .end local v0    # "ignored":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    .end local v7    # "numECCodewords":I
    .end local v8    # "dataWords":[I
    .end local v10    # "offset":I
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 2
    .param p0, "table"    # Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .param p1, "code"    # I

    .line 175
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    invoke-virtual {p0}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 183
    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 181
    :pswitch_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 179
    :pswitch_3
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 177
    :pswitch_4
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEncodedData([Z)Ljava/lang/String;
    .locals 11
    .param p0, "correctedBits"    # [Z

    .line 93
    array-length v0, p0

    .line 94
    .local v0, "endIndex":I
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 95
    .local v1, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 96
    .local v2, "shiftTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    move-object v5, v1

    move v1, v4

    .line 98
    .local v1, "index":I
    .local v5, "latchTable":Lcom/google/zxing/aztec/decoder/Decoder$Table;
    :goto_0
    if-ge v1, v0, :cond_a

    .line 99
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v7, 0x5

    if-ne v2, v6, :cond_5

    .line 100
    sub-int v6, v0, v1

    if-ge v6, v7, :cond_0

    .line 101
    goto/16 :goto_5

    .line 103
    :cond_0
    invoke-static {p0, v1, v7}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v6

    .line 104
    .local v6, "length":I
    add-int/lit8 v1, v1, 0x5

    .line 105
    if-nez v6, :cond_2

    .line 106
    sub-int v7, v0, v1

    const/16 v8, 0xb

    if-ge v7, v8, :cond_1

    .line 107
    goto/16 :goto_5

    .line 109
    :cond_1
    invoke-static {p0, v1, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v7

    add-int/lit8 v6, v7, 0x1f

    .line 110
    add-int/lit8 v1, v1, 0xb

    .line 112
    :cond_2
    move v7, v1

    move v1, v4

    .local v1, "charCount":I
    .local v7, "index":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 113
    sub-int v8, v0, v7

    const/16 v9, 0x8

    if-ge v8, v9, :cond_3

    .line 114
    move v7, v0

    .line 115
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {p0, v7, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    .line 118
    .local v8, "code":I
    int-to-char v9, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v7, v7, 0x8

    .line 112
    .end local v8    # "code":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v7    # "index":I
    .local v1, "index":I
    :cond_4
    :goto_2
    move v1, v7

    move-object v2, v5

    .line 123
    .end local v6    # "length":I
    goto :goto_0

    .line 124
    :cond_5
    sget-object v6, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v2, v6, :cond_6

    const/4 v6, 0x4

    goto :goto_3

    :cond_6
    move v6, v7

    .line 125
    .local v6, "size":I
    :goto_3
    sub-int v8, v0, v1

    if-ge v8, v6, :cond_7

    .line 126
    goto :goto_5

    .line 128
    :cond_7
    invoke-static {p0, v1, v6}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    .line 129
    .restart local v8    # "code":I
    add-int/2addr v1, v6

    .line 130
    invoke-static {v2, v8}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    move-result-object v9

    .line 131
    .local v9, "str":Ljava/lang/String;
    const-string v10, "CTRL_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 133
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v2

    .line 134
    const/4 v7, 0x6

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x4c

    if-ne v7, v10, :cond_9

    .line 135
    move-object v5, v2

    goto :goto_4

    .line 138
    :cond_8
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-object v2, v5

    .line 142
    .end local v6    # "size":I
    .end local v8    # "code":I
    .end local v9    # "str":Ljava/lang/String;
    :cond_9
    :goto_4
    goto :goto_0

    .line 144
    :cond_a
    :goto_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1
    .param p0, "t"    # C

    .line 151
    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44

    if-eq p0, v0, :cond_1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 164
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 157
    :pswitch_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 153
    :pswitch_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 155
    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 159
    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    .line 161
    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static highLevelDecode([Z)Ljava/lang/String;
    .locals 1
    .param p0, "correctedBits"    # [Z

    .line 84
    invoke-static {p0}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readCode([ZII)I
    .locals 3
    .param p0, "rawbits"    # [Z
    .param p1, "startIndex"    # I
    .param p2, "length"    # I

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "res":I
    move v1, v0

    move v0, p1

    .local v0, "i":I
    .local v1, "res":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    .line 327
    shl-int/lit8 v1, v1, 0x1

    .line 328
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    .line 329
    or-int/lit8 v1, v1, 0x1

    .line 326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2
    .param p0, "layers"    # I
    .param p1, "compact"    # Z

    .line 336
    if-eqz p1, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0x70

    :goto_0
    const/16 v1, 0x10

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .param p1, "detectorResult"    # Lcom/google/zxing/aztec/AztecDetectorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 75
    invoke-virtual {p1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 76
    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {p0, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    move-result-object v1

    .line 77
    .local v1, "rawbits":[Z
    invoke-direct {p0, v1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    move-result-object v2

    .line 78
    .local v2, "correctedBits":[Z
    invoke-static {v2}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v5, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v4
.end method

.method extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 20
    .param p1, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v0, p0

    .line 272
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    move-result v2

    .line 273
    .local v2, "compact":Z
    iget-object v3, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    move-result v3

    .line 274
    .local v3, "layers":I
    if-eqz v2, :cond_0

    const/16 v4, 0xb

    :goto_0
    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v4, v5

    goto :goto_1

    :cond_0
    const/16 v4, 0xe

    goto :goto_0

    .line 275
    .local v4, "baseMatrixSize":I
    :goto_1
    new-array v5, v4, [I

    .line 276
    .local v5, "alignmentMap":[I
    invoke-static {v3, v2}, Lcom/google/zxing/aztec/decoder/Decoder;->totalBitsInLayer(IZ)I

    move-result v6

    new-array v6, v6, [Z

    .line 278
    .local v6, "rawbits":[Z
    const/4 v8, 0x2

    if-eqz v2, :cond_1

    .line 279
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v5

    if-ge v9, v10, :cond_2

    .line 280
    aput v9, v5, v9

    .line 279
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 283
    .end local v9    # "i":I
    :cond_1
    add-int/lit8 v9, v4, 0x1

    div-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0xf

    mul-int/2addr v10, v8

    add-int/2addr v9, v10

    .line 284
    .local v9, "matrixSize":I
    div-int/lit8 v10, v4, 0x2

    .line 285
    .local v10, "origCenter":I
    div-int/lit8 v11, v9, 0x2

    .line 286
    .local v11, "center":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v10, :cond_2

    .line 287
    div-int/lit8 v13, v12, 0xf

    add-int/2addr v13, v12

    .line 288
    .local v13, "newOffset":I
    sub-int v14, v10, v12

    add-int/lit8 v14, v14, -0x1

    sub-int v15, v11, v13

    add-int/lit8 v15, v15, -0x1

    aput v15, v5, v14

    .line 289
    add-int v14, v10, v12

    add-int v15, v11, v13

    add-int/lit8 v15, v15, 0x1

    aput v15, v5, v14

    .line 286
    .end local v13    # "newOffset":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 292
    .end local v9    # "matrixSize":I
    .end local v10    # "origCenter":I
    .end local v11    # "center":I
    .end local v12    # "i":I
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    move v10, v9

    const/4 v9, 0x0

    .local v9, "rowOffset":I
    .local v10, "i":I
    :goto_4
    if-ge v10, v3, :cond_6

    .line 293
    const/4 v11, 0x4

    if-eqz v2, :cond_3

    sub-int v12, v3, v10

    mul-int/2addr v12, v11

    add-int/lit8 v12, v12, 0x9

    goto :goto_5

    :cond_3
    sub-int v12, v3, v10

    mul-int/2addr v12, v11

    add-int/lit8 v12, v12, 0xc

    .line 295
    .local v12, "rowSize":I
    :goto_5
    mul-int/lit8 v13, v10, 0x2

    .line 297
    .local v13, "low":I
    add-int/lit8 v14, v4, -0x1

    sub-int/2addr v14, v13

    .line 299
    .local v14, "high":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_6
    if-ge v15, v12, :cond_5

    .line 300
    mul-int/lit8 v16, v15, 0x2

    .line 301
    .local v16, "columnOffset":I
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_7
    move/from16 v18, v17

    .end local v17    # "k":I
    .local v18, "k":I
    move/from16 v7, v18

    if-ge v7, v8, :cond_4

    .line 303
    .end local v18    # "k":I
    .local v7, "k":I
    add-int v17, v9, v16

    add-int v17, v17, v7

    add-int v18, v13, v7

    aget v11, v5, v18

    add-int v18, v13, v15

    aget v8, v5, v18

    .line 304
    invoke-virtual {v1, v11, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v6, v17

    .line 306
    const/4 v8, 0x2

    mul-int v11, v8, v12

    add-int/2addr v11, v9

    add-int v11, v11, v16

    add-int/2addr v11, v7

    add-int v17, v13, v15

    aget v8, v5, v17

    sub-int v17, v14, v7

    aget v0, v5, v17

    .line 307
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v11

    .line 309
    const/4 v0, 0x4

    mul-int v11, v0, v12

    add-int/2addr v11, v9

    add-int v11, v11, v16

    add-int/2addr v11, v7

    sub-int v8, v14, v7

    aget v8, v5, v8

    sub-int v17, v14, v15

    aget v0, v5, v17

    .line 310
    invoke-virtual {v1, v8, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    aput-boolean v0, v6, v11

    .line 312
    const/4 v0, 0x6

    mul-int/2addr v0, v12

    add-int/2addr v0, v9

    add-int v0, v0, v16

    add-int/2addr v0, v7

    sub-int v8, v14, v15

    aget v8, v5, v8

    add-int v18, v13, v7

    aget v11, v5, v18

    .line 313
    invoke-virtual {v1, v8, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    aput-boolean v8, v6, v0

    .line 301
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "k":I
    .restart local v17    # "k":I
    move-object/from16 v0, p0

    const/4 v8, 0x2

    const/4 v11, 0x4

    goto :goto_7

    .line 299
    .end local v16    # "columnOffset":I
    .end local v17    # "k":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    const/4 v11, 0x4

    goto :goto_6

    .line 316
    .end local v15    # "j":I
    :cond_5
    mul-int/lit8 v0, v12, 0x8

    add-int/2addr v9, v0

    .line 292
    .end local v12    # "rowSize":I
    .end local v13    # "low":I
    .end local v14    # "high":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    goto/16 :goto_4

    .line 318
    .end local v9    # "rowOffset":I
    .end local v10    # "i":I
    :cond_6
    return-object v6
.end method
