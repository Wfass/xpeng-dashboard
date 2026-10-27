.class public Lcom/alibaba/fastjson/util/UTF8Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF8Decoder.java"


# static fields
.field private static final charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    sget-object v0, Lcom/alibaba/fastjson/util/UTF8Decoder;->charset:Ljava/nio/charset/Charset;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 39
    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 19
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    move-object/from16 v6, p1

    .line 122
    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 123
    .local v8, "srcArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    .local v0, "srcPosition":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int v9, v1, v2

    .line 126
    .local v9, "srcLength":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v10

    .line 127
    .local v10, "destArray":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 128
    .local v1, "destPosition":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int v11, v2, v3

    .line 129
    .local v11, "destLength":I
    sub-int v2, v9, v0

    sub-int v3, v11, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v1

    .local v2, "destLengthASCII":I
    :goto_0
    move v12, v2

    .line 132
    .end local v2    # "destLengthASCII":I
    .local v12, "destLengthASCII":I
    if-ge v1, v12, :cond_0

    aget-byte v2, v8, v0

    if-ltz v2, :cond_0

    .line 133
    add-int/lit8 v2, v1, 0x1

    .local v2, "destPosition":I
    add-int/lit8 v3, v0, 0x1

    .local v3, "srcPosition":I
    aget-byte v0, v8, v0

    .end local v0    # "srcPosition":I
    int-to-char v0, v0

    aput-char v0, v10, v1

    .line 129
    .end local v1    # "destPosition":I
    move v1, v2

    move v0, v3

    move v2, v12

    goto :goto_0

    .line 136
    .end local v2    # "destPosition":I
    .end local v3    # "srcPosition":I
    .restart local v0    # "srcPosition":I
    .restart local v1    # "destPosition":I
    :cond_0
    move v13, v0

    move v14, v1

    .end local v0    # "srcPosition":I
    .end local v1    # "destPosition":I
    .local v13, "srcPosition":I
    .local v14, "destPosition":I
    :goto_1
    if-ge v13, v9, :cond_10

    .line 137
    aget-byte v15, v8, v13

    .line 138
    .local v15, "b1":I
    if-ltz v15, :cond_2

    .line 140
    if-lt v14, v11, :cond_1

    .line 141
    const/4 v5, 0x1

    move-object v0, v6

    move v1, v13

    move v2, v9

    move-object v3, v7

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 143
    :cond_1
    add-int/lit8 v0, v14, 0x1

    .local v0, "destPosition":I
    int-to-char v1, v15

    aput-char v1, v10, v14

    .line 144
    .end local v14    # "destPosition":I
    add-int/lit8 v13, v13, 0x1

    .line 186
    move v14, v0

    goto/16 :goto_5

    .line 145
    .end local v0    # "destPosition":I
    .restart local v14    # "destPosition":I
    :cond_2
    shr-int/lit8 v0, v15, 0x5

    const/4 v1, -0x2

    const/4 v2, 0x2

    if-ne v0, v1, :cond_6

    .line 147
    sub-int v0, v9, v13

    if-lt v0, v2, :cond_5

    if-lt v14, v11, :cond_3

    goto :goto_3

    .line 150
    :cond_3
    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    .line 151
    .local v0, "b2":I
    invoke-static {v15, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed2(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 152
    invoke-static {v6, v13, v7, v14, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 154
    :cond_4
    add-int/lit8 v1, v14, 0x1

    .restart local v1    # "destPosition":I
    shl-int/lit8 v2, v15, 0x6

    xor-int/2addr v2, v0

    xor-int/lit16 v2, v2, 0xf80

    int-to-char v2, v2

    aput-char v2, v10, v14

    .line 155
    .end local v14    # "destPosition":I
    add-int/lit8 v13, v13, 0x2

    .line 156
    .end local v0    # "b2":I
    nop

    .line 186
    .end local v1    # "destPosition":I
    .end local v15    # "b1":I
    .restart local v14    # "destPosition":I
    :goto_2
    move v14, v1

    goto/16 :goto_5

    .line 148
    .restart local v15    # "b1":I
    :cond_5
    :goto_3
    const/4 v5, 0x2

    move-object v0, v6

    move v1, v13

    move v2, v9

    move-object v3, v7

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 156
    :cond_6
    shr-int/lit8 v0, v15, 0x4

    if-ne v0, v1, :cond_a

    .line 158
    sub-int v0, v9, v13

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    if-lt v14, v11, :cond_7

    goto :goto_4

    .line 161
    :cond_7
    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    .line 162
    .restart local v0    # "b2":I
    add-int/lit8 v2, v13, 0x2

    aget-byte v2, v8, v2

    .line 163
    .local v2, "b3":I
    invoke-static {v15, v0, v2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed3(III)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 164
    invoke-static {v6, v13, v7, v14, v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 166
    :cond_8
    add-int/lit8 v1, v14, 0x1

    .restart local v1    # "destPosition":I
    shl-int/lit8 v3, v15, 0xc

    shl-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    xor-int/2addr v3, v2

    xor-int/lit16 v3, v3, 0x1f80

    int-to-char v3, v3

    aput-char v3, v10, v14

    .line 167
    .end local v14    # "destPosition":I
    add-int/lit8 v13, v13, 0x3

    .line 168
    .end local v0    # "b2":I
    .end local v2    # "b3":I
    goto :goto_2

    .line 159
    .end local v1    # "destPosition":I
    .restart local v14    # "destPosition":I
    :cond_9
    :goto_4
    const/4 v5, 0x3

    move-object v0, v6

    move v1, v13

    move v2, v9

    move-object v3, v7

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 168
    :cond_a
    shr-int/lit8 v0, v15, 0x3

    if-ne v0, v1, :cond_f

    .line 170
    sub-int v0, v9, v13

    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    sub-int v0, v11, v14

    if-ge v0, v2, :cond_b

    goto :goto_7

    .line 173
    :cond_b
    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    .line 174
    .restart local v0    # "b2":I
    add-int/lit8 v2, v13, 0x2

    aget-byte v2, v8, v2

    .line 175
    .restart local v2    # "b3":I
    add-int/lit8 v3, v13, 0x3

    aget-byte v3, v8, v3

    .line 176
    .local v3, "b4":I
    and-int/lit8 v4, v15, 0x7

    shl-int/lit8 v4, v4, 0x12

    and-int/lit8 v5, v0, 0x3f

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    and-int/lit8 v5, v2, 0x3f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x3f

    or-int/2addr v4, v5

    .line 177
    .local v4, "uc":I
    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isMalformed4(III)Z

    move-result v5

    if-nez v5, :cond_d

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_d

    const v1, 0x10ffff

    if-le v4, v1, :cond_c

    .line 178
    move/from16 v18, v0

    goto :goto_6

    .line 180
    :cond_c
    add-int/lit8 v1, v14, 0x1

    .restart local v1    # "destPosition":I
    const v16, 0xd800

    sub-int v17, v4, v5

    shr-int/lit8 v5, v17, 0xa

    and-int/lit16 v5, v5, 0x3ff

    or-int v5, v16, v5

    int-to-char v5, v5

    aput-char v5, v10, v14

    .line 181
    .end local v14    # "destPosition":I
    add-int/lit8 v5, v1, 0x1

    .local v5, "destPosition":I
    const v14, 0xdc00

    move/from16 v18, v0

    const/high16 v16, 0x10000

    sub-int v0, v4, v16

    .end local v0    # "b2":I
    .local v18, "b2":I
    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v14

    int-to-char v0, v0

    aput-char v0, v10, v1

    .line 182
    .end local v1    # "destPosition":I
    add-int/lit8 v13, v13, 0x4

    .line 183
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v4    # "uc":I
    .end local v18    # "b2":I
    nop

    .line 186
    move v14, v5

    .end local v5    # "destPosition":I
    .end local v15    # "b1":I
    .restart local v14    # "destPosition":I
    :goto_5
    goto/16 :goto_1

    .line 178
    .restart local v0    # "b2":I
    .restart local v2    # "b3":I
    .restart local v3    # "b4":I
    .restart local v4    # "uc":I
    .restart local v15    # "b1":I
    :cond_d
    move/from16 v18, v0

    .end local v0    # "b2":I
    .restart local v18    # "b2":I
    :goto_6
    const/4 v0, 0x4

    invoke-static {v6, v13, v7, v14, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 171
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v4    # "uc":I
    .end local v18    # "b2":I
    :cond_e
    :goto_7
    const/4 v5, 0x4

    move-object v0, v6

    move v1, v13

    move v2, v9

    move-object v3, v7

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 184
    :cond_f
    const/4 v0, 0x1

    invoke-static {v6, v13, v7, v14, v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 187
    .end local v15    # "b1":I
    :cond_10
    const/4 v5, 0x0

    move-object v0, v6

    move v1, v13

    move v2, v9

    move-object v3, v7

    move v4, v14

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/UTF8Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static isMalformed2(II)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I

    .line 47
    and-int/lit8 v0, p0, 0x1e

    if-eqz v0, :cond_1

    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isMalformed3(III)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I
    .param p2, "b3"    # I

    .line 53
    const/16 v0, 0x80

    const/16 v1, -0x20

    if-ne p0, v1, :cond_0

    and-int/lit16 v1, p1, 0xe0

    if-eq v1, v0, :cond_2

    :cond_0
    and-int/lit16 v1, p1, 0xc0

    if-ne v1, v0, :cond_2

    and-int/lit16 v1, p2, 0xc0

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isMalformed4(III)Z
    .locals 2
    .param p0, "b2"    # I
    .param p1, "b3"    # I
    .param p2, "b4"    # I

    .line 62
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isNotContinuation(I)Z
    .locals 2
    .param p0, "b"    # I

    .line 42
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 2
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "n"    # I

    .line 66
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 67
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/CharBuffer;
    .param p3, "dp"    # I
    .param p4, "nb"    # I

    .line 107
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    invoke-static {p0, p4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 109
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    invoke-virtual {p2, p3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    return-object v0
.end method

.method public static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 7
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "nb"    # I

    .line 73
    const/16 v0, 0x80

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 96
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 97
    .local v3, "b1":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 98
    .local v4, "b2":I
    const/16 v5, 0xf4

    if-gt v3, v5, :cond_4

    const/16 v6, 0xf0

    if-ne v3, v6, :cond_0

    const/16 v6, 0x90

    if-lt v4, v6, :cond_4

    const/16 v6, 0xbf

    if-gt v4, v6, :cond_4

    :cond_0
    if-ne v3, v5, :cond_1

    and-int/lit16 v5, v4, 0xf0

    if-ne v5, v0, :cond_4

    :cond_1
    invoke-static {v4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 100
    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 98
    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 92
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 93
    .restart local v3    # "b1":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 94
    .restart local v4    # "b2":I
    const/16 v5, -0x20

    if-ne v3, v5, :cond_5

    and-int/lit16 v5, v4, 0xe0

    if-eq v5, v0, :cond_6

    :cond_5
    invoke-static {v4}, Lcom/alibaba/fastjson/util/UTF8Decoder;->isNotContinuation(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    nop

    :cond_7
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 90
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :pswitch_2
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 76
    .local v0, "b1":I
    shr-int/lit8 v1, v0, 0x2

    const/4 v3, 0x5

    const/4 v4, -0x2

    if-ne v1, v4, :cond_9

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_8

    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1

    .line 79
    :cond_8
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 81
    :cond_9
    shr-int/lit8 v1, v0, 0x1

    if-ne v1, v4, :cond_b

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v3, :cond_a

    .line 84
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1

    .line 86
    :cond_a
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/util/UTF8Decoder;->lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 88
    :cond_b
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "sp"    # I
    .param p2, "sl"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;
    .param p4, "dp"    # I
    .param p5, "nb"    # I

    .line 115
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 116
    invoke-virtual {p3, p4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 117
    if-eqz p5, :cond_1

    sub-int v0, p2, p1

    if-ge v0, p5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/util/UTF8Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
