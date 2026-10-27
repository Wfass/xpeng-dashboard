.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final CA:[C

.field public static final DIGITS:[C

.field static final IA:[I

.field public static final UTF8:Ljava/nio/charset/Charset;

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_doubleQuotesFlags:[Z

.field public static final specicalFlags_singleQuotes:[B

.field public static final specicalFlags_singleQuotesFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 30
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    .line 31
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    const/16 v0, 0x100

    .line 32
    new-array v1, v0, [Z

    sput-object v1, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 33
    new-array v1, v0, [Z

    sput-object v1, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    const/16 v1, 0xa1

    .line 34
    new-array v2, v1, [B

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    .line 35
    new-array v2, v1, [B

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 36
    new-array v2, v1, [Z

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    .line 37
    new-array v2, v1, [Z

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    const/16 v2, 0x5d

    .line 38
    new-array v2, v2, [C

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 40
    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    .line 43
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 44
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 45
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    aget-char v5, v5, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/16 v3, 0x3d

    aput v2, v0, v3

    move v0, v2

    .line 49
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v0, v4, :cond_5

    const/16 v4, 0x41

    if-lt v0, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_1

    .line 51
    aput-boolean v5, v3, v0

    goto :goto_2

    :cond_1
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2

    .line 53
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v5, v3, v0

    goto :goto_2

    :cond_2
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_3

    const/16 v3, 0x24

    if-ne v0, v3, :cond_4

    .line 55
    :cond_3
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v5, v3, v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_1

    :cond_5
    move v0, v2

    .line 59
    :goto_3
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v4, v3

    if-ge v0, v4, :cond_a

    const/16 v4, 0x41

    if-lt v0, v4, :cond_6

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_6

    .line 61
    aput-boolean v5, v3, v0

    goto :goto_4

    :cond_6
    const/16 v3, 0x61

    if-lt v0, v3, :cond_7

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_7

    .line 63
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v5, v3, v0

    goto :goto_4

    :cond_7
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_8

    .line 65
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v5, v3, v0

    goto :goto_4

    :cond_8
    const/16 v3, 0x30

    if-lt v0, v3, :cond_9

    const/16 v3, 0x39

    if-gt v0, v3, :cond_9

    .line 67
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v5, v3, v0

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_3

    .line 73
    :cond_a
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v3, 0x4

    aput-byte v3, v0, v2

    .line 74
    aput-byte v3, v0, v5

    const/4 v4, 0x2

    .line 75
    aput-byte v3, v0, v4

    const/4 v6, 0x3

    .line 76
    aput-byte v3, v0, v6

    .line 77
    aput-byte v3, v0, v3

    const/4 v7, 0x5

    .line 78
    aput-byte v3, v0, v7

    const/4 v8, 0x6

    .line 79
    aput-byte v3, v0, v8

    const/4 v9, 0x7

    .line 80
    aput-byte v3, v0, v9

    const/16 v10, 0x8

    .line 81
    aput-byte v5, v0, v10

    const/16 v11, 0x9

    .line 82
    aput-byte v5, v0, v11

    const/16 v12, 0xa

    .line 83
    aput-byte v5, v0, v12

    const/16 v13, 0xb

    .line 84
    aput-byte v3, v0, v13

    const/16 v14, 0xc

    .line 85
    aput-byte v5, v0, v14

    const/16 v14, 0xd

    .line 86
    aput-byte v5, v0, v14

    const/16 v14, 0x22

    .line 87
    aput-byte v5, v0, v14

    const/16 v14, 0x5c

    .line 88
    aput-byte v5, v0, v14

    .line 90
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v3, v0, v2

    .line 91
    aput-byte v3, v0, v5

    .line 92
    aput-byte v3, v0, v4

    .line 93
    aput-byte v3, v0, v6

    .line 94
    aput-byte v3, v0, v3

    .line 95
    aput-byte v3, v0, v7

    .line 96
    aput-byte v3, v0, v8

    .line 97
    aput-byte v3, v0, v9

    .line 98
    aput-byte v5, v0, v10

    .line 99
    aput-byte v5, v0, v11

    .line 100
    aput-byte v5, v0, v12

    .line 101
    aput-byte v3, v0, v13

    const/16 v15, 0xc

    .line 102
    aput-byte v5, v0, v15

    const/16 v15, 0xd

    .line 103
    aput-byte v5, v0, v15

    .line 104
    aput-byte v5, v0, v14

    const/16 v15, 0x27

    .line 105
    aput-byte v5, v0, v15

    const/16 v0, 0xe

    :goto_5
    const/16 v15, 0x1f

    if-gt v0, v15, :cond_b

    .line 108
    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v3, v15, v0

    .line 109
    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v3, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    const/16 v0, 0x7f

    :goto_6
    const/16 v15, 0xa0

    if-ge v0, v15, :cond_c

    .line 113
    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v3, v15, v0

    .line 114
    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v3, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    move v0, v2

    :goto_7
    if-ge v0, v1, :cond_f

    .line 118
    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v16, v16, v0

    if-eqz v16, :cond_d

    move/from16 v16, v5

    goto :goto_8

    :cond_d
    move/from16 v16, v2

    :goto_8
    aput-boolean v16, v15, v0

    .line 119
    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aget-byte v16, v16, v0

    if-eqz v16, :cond_e

    move/from16 v16, v5

    goto :goto_9

    :cond_e
    move/from16 v16, v2

    :goto_9
    aput-boolean v16, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 122
    :cond_f
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v1, 0x30

    aput-char v1, v0, v2

    const/16 v1, 0x31

    .line 123
    aput-char v1, v0, v5

    const/16 v1, 0x32

    .line 124
    aput-char v1, v0, v4

    const/16 v1, 0x33

    .line 125
    aput-char v1, v0, v6

    const/16 v1, 0x34

    .line 126
    aput-char v1, v0, v3

    const/16 v1, 0x35

    .line 127
    aput-char v1, v0, v7

    const/16 v1, 0x36

    .line 128
    aput-char v1, v0, v8

    const/16 v1, 0x37

    .line 129
    aput-char v1, v0, v9

    const/16 v1, 0x62

    .line 130
    aput-char v1, v0, v10

    const/16 v1, 0x74

    .line 131
    aput-char v1, v0, v11

    const/16 v1, 0x6e

    .line 132
    aput-char v1, v0, v12

    const/16 v1, 0x76

    .line 133
    aput-char v1, v0, v13

    const/16 v1, 0xc

    const/16 v2, 0x66

    .line 134
    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x72

    .line 135
    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x22

    .line 136
    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x27

    .line 137
    aput-char v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    .line 138
    aput-char v2, v0, v1

    .line 139
    aput-char v14, v0, v14

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 230
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 144
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 150
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 158
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "utf8 decode error, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 14

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    new-array p0, v1, [B

    return-object p0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 172
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 177
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    sub-int v5, v2, v3

    add-int/2addr v5, v6

    const/16 v7, 0x4c

    if-le v0, v7, :cond_6

    .line 184
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0xd

    if-ne v0, v7, :cond_5

    div-int/lit8 v0, v5, 0x4e

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    shl-int/2addr v0, v6

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    sub-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x6

    shr-int/lit8 v5, v5, 0x3

    sub-int/2addr v5, v4

    .line 187
    new-array v7, v5, [B

    .line 191
    div-int/lit8 v8, v5, 0x3

    mul-int/lit8 v8, v8, 0x3

    move v10, v1

    move v9, v3

    move v3, v10

    :cond_7
    :goto_5
    if-ge v3, v8, :cond_8

    .line 193
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v11, v11, v12

    shl-int/lit8 v11, v11, 0x12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v9, 0x1

    .line 194
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v11, v12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v9, 0x2

    .line 195
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v11, v12

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v13, v9, 0x3

    .line 196
    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v9, v9, 0x4

    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    .line 200
    aput-byte v12, v7, v3

    add-int/lit8 v12, v3, 0x1

    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    .line 201
    aput-byte v13, v7, v12

    add-int/lit8 v12, v3, 0x2

    int-to-byte v11, v11

    .line 202
    aput-byte v11, v7, v12

    add-int/lit8 v3, v3, 0x3

    if-lez v0, :cond_7

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x13

    if-ne v10, v11, :cond_7

    add-int/lit8 v9, v9, 0x2

    move v10, v1

    goto :goto_5

    :cond_8
    if-ge v3, v5, :cond_a

    move v0, v1

    :goto_6
    sub-int v8, v2, v4

    if-gt v9, v8, :cond_9

    .line 216
    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aget v8, v8, v9

    mul-int/lit8 v9, v0, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v8, v9

    or-int/2addr v1, v8

    add-int/2addr v0, v6

    move v9, v10

    goto :goto_6

    :cond_9
    const/16 p0, 0x10

    :goto_7
    if-ge v3, v5, :cond_a

    add-int/lit8 v0, v3, 0x1

    shr-int v2, v1, p0

    int-to-byte v2, v2

    .line 220
    aput-byte v2, v7, v3

    add-int/lit8 p0, p0, -0x8

    move v3, v0

    goto :goto_7

    :cond_a
    return-object v7
.end method

.method public static decodeUTF8([BII[C)I
    .locals 0

    .line 258
    invoke-static {p0, p1, p2, p3}, Labe;->a([BII[C)I

    move-result p0

    return p0
.end method

.method public static getChars(BI[C)V
    .locals 0

    .line 238
    invoke-static {p0, p1, p2}, Labe;->a(II[C)V

    return-void
.end method

.method public static getChars(II[C)V
    .locals 0

    .line 242
    invoke-static {p0, p1, p2}, Labe;->a(II[C)V

    return-void
.end method

.method public static getChars(JI[C)V
    .locals 0

    .line 246
    invoke-static {p0, p1, p2, p3}, Labe;->a(JI[C)V

    return-void
.end method

.method public static isIdent(C)Z
    .locals 2

    .line 262
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidJsonpQueryParam(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 271
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    .line 272
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static stringSize(I)I
    .locals 0

    .line 250
    invoke-static {p0}, Labe;->a(I)I

    move-result p0

    return p0
.end method

.method public static stringSize(J)I
    .locals 0

    .line 254
    invoke-static {p0, p1}, Labe;->a(J)I

    move-result p0

    return p0
.end method
