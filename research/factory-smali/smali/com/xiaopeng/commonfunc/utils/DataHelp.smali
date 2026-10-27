.class public Lcom/xiaopeng/commonfunc/utils/DataHelp;
.super Ljava/lang/Object;
.source "DataHelp.java"


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final DLC:[I

.field private static final SEC_IV:Ljava/lang/String; = "5s9F1pGR@VJZ8F3I"

.field public static final SEC_SALT:Ljava/lang/String; = "oBPMlkqO4eBRBa@N*zIGdRokeikjKbIg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/DataHelp;->ASCII:Ljava/nio/charset/Charset;

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/DataHelp;->DLC:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xc
        0x10
        0x14
        0x18
        0x20
        0x30
        0x40
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigBytes4Toint([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .line 104
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 105
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1
.end method

.method public static bigbByte2ToInt([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .line 99
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 100
    .local v0, "s":S
    return v0
.end method

.method public static byte2ToInt([B)I
    .locals 2
    .param p0, "bytes"    # [B

    .line 94
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 95
    .local v0, "s":S
    return v0
.end method

.method public static byteArrayToHexStr([B)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B

    .line 205
    const-string v0, "0123456789ABCDEF"

    .line 206
    .local v0, "HEX":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 207
    const-string v1, ""

    return-object v1

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 211
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 212
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "separator"    # Ljava/lang/String;

    .line 221
    const-string v0, "0123456789ABCDEF"

    .line 222
    .local v0, "HEX":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 223
    const-string v1, ""

    return-object v1

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 227
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 228
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteArrayToHexStr([BZ)Ljava/lang/String;
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "withspace"    # Z

    .line 239
    const-string v0, "0123456789ABCDEF"

    .line 240
    .local v0, "HEX":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 241
    const-string v1, ""

    return-object v1

    .line 243
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 245
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 246
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    if-eqz p1, :cond_1

    .line 248
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteArrayToStr([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 171
    const-string v0, ""

    .line 172
    .local v0, "res":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 173
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 175
    :cond_0
    return-object v0
.end method

.method public static byteMerge([BI[BI)[B
    .locals 1
    .param p0, "dest"    # [B
    .param p1, "startPos"    # I
    .param p2, "src"    # [B
    .param p3, "length"    # I

    .line 194
    const/4 v0, 0x0

    invoke-static {p2, v0, p0, p1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 195
    return-object p0
.end method

.method public static varargs byteMerger([[B)[B
    .locals 7
    .param p0, "values"    # [[B

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "length_byte":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "length_byte":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 181
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    :cond_0
    new-array v0, v2, [B

    .line 184
    .local v0, "all_byte":[B
    const/4 v3, 0x0

    .line 185
    .local v3, "countLength":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "countLength":I
    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 186
    aget-object v5, p0, v3

    .line 187
    .local v5, "b":[B
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 188
    array-length v6, v5

    add-int/2addr v4, v6

    .line 185
    .end local v5    # "b":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public static byteSub([BII)[B
    .locals 2
    .param p0, "src"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 199
    new-array v0, p2, [B

    .line 200
    .local v0, "res":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 201
    return-object v0
.end method

.method public static byteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .line 76
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static bytes2Double([B)D
    .locals 6
    .param p0, "arr"    # [B

    .line 134
    const-wide/16 v0, 0x0

    .line 135
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 136
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    mul-int/2addr v3, v2

    shl-long v3, v4, v3

    or-long/2addr v0, v3

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static bytes2ToInt([B)I
    .locals 2
    .param p0, "src"    # [B

    .line 88
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 90
    .local v0, "value":I
    return v0
.end method

.method public static bytesToLong([B)J
    .locals 3
    .param p0, "bytes"    # [B

    .line 148
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 149
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static checkBytes([B[B)Z
    .locals 4
    .param p0, "argu"    # [B
    .param p1, "argv"    # [B

    .line 297
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 298
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    .line 299
    return v0

    .line 297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static containString([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "strings"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "res":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 260
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const/4 v0, 0x1

    .line 262
    goto :goto_1

    .line 259
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_1
    :goto_1
    return v0
.end method

.method public static convert64Byte([B)[B
    .locals 5
    .param p0, "buf"    # [B

    .line 281
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 282
    .local v1, "bytes64":[B
    const/4 v2, 0x0

    move v3, v2

    .line 283
    .local v3, "index":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 284
    if-lt v3, v0, :cond_0

    .line 285
    goto :goto_1

    .line 287
    :cond_0
    aget-byte v4, p0, v3

    aput-byte v4, v1, v3

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_1
    :goto_1
    if-ge v3, v0, :cond_2

    .line 291
    aput-byte v2, v1, v3

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    :cond_2
    return-object v1
.end method

.method private static decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "b"    # [B

    .line 507
    if-nez p1, :cond_0

    .line 508
    const/4 v0, 0x0

    return-object v0

    .line 510
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 511
    .local v0, "cb":Ljava/nio/CharBuffer;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public static decrypt([B[B)[B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 319
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 320
    .local v0, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 321
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "5s9F1pGR@VJZ8F3I"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 322
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 323
    .end local v0    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static double2Bytes(D)[B
    .locals 9
    .param p0, "d"    # D

    .line 125
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 126
    .local v0, "value":J
    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 127
    .local v3, "byteRet":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 128
    mul-int v5, v2, v4

    shr-long v5, v0, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 127
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    .end local v4    # "i":I
    :cond_0
    return-object v3
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "fileSize"    # J

    .line 398
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, ""

    .line 400
    .local v1, "fileSizeString":Ljava/lang/String;
    const-string v2, "0B"

    .line 401
    .local v2, "wrongSize":Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    .line 402
    return-object v2

    .line 404
    :cond_0
    const-wide/16 v3, 0x400

    cmp-long v3, p0, v3

    if-gez v3, :cond_1

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 406
    :cond_1
    const-wide/32 v3, 0x100000

    cmp-long v3, p0, v3

    if-gez v3, :cond_2

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 408
    :cond_2
    const-wide/32 v3, 0x40000000

    cmp-long v3, p0, v3

    if-gez v3, :cond_3

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 411
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "GB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    :goto_0
    return-object v1
.end method

.method public static getAscii(Ljava/util/BitSet;II)Ljava/lang/String;
    .locals 2
    .param p0, "bitSet"    # Ljava/util/BitSet;
    .param p1, "startbit"    # I
    .param p2, "endbit"    # I

    .line 515
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/DataHelp;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getBytes(Ljava/util/BitSet;II)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBytes(Ljava/util/BitSet;II)[B
    .locals 4
    .param p0, "bitSet"    # Ljava/util/BitSet;
    .param p1, "startbit"    # I
    .param p2, "endbit"    # I

    .line 519
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 520
    .local v0, "res":[B
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 521
    sub-int v2, v1, p1

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x8

    invoke-static {p0, v1, v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getInt(Ljava/util/BitSet;II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 520
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getDLC(I)I
    .locals 2
    .param p0, "index"    # I

    .line 46
    const/4 v0, -0x1

    .line 47
    .local v0, "res":I
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/DataHelp;->DLC:[I

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 48
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/DataHelp;->DLC:[I

    aget v0, v1, p0

    .line 50
    :cond_0
    return v0
.end method

.method public static getHex(Ljava/util/BitSet;II)Ljava/lang/String;
    .locals 2
    .param p0, "bitSet"    # Ljava/util/BitSet;
    .param p1, "startbit"    # I
    .param p2, "endbit"    # I

    .line 547
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getBytes(Ljava/util/BitSet;II)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteArrayToHexStr([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpResult(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z
    .locals 4
    .param p0, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 358
    const/4 v0, 0x0

    move v1, v0

    .line 360
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v1, v0

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 364
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return v1
.end method

.method public static getInt(Ljava/util/BitSet;II)I
    .locals 8
    .param p0, "bitSet"    # Ljava/util/BitSet;
    .param p1, "startbit"    # I
    .param p2, "endbit"    # I

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, "res":I
    move v1, v0

    move v0, p1

    .local v0, "i":I
    .local v1, "res":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 529
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    int-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-int v6, v0, p1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public static getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "type"    # Ljava/lang/String;

    .line 478
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 479
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 481
    .local v1, "service":Landroid/os/INetworkManagementService;
    const/4 v2, 0x0

    .line 482
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    const/4 v3, 0x0

    move-object v4, v3

    .line 484
    .local v4, "address":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v5

    move-object v2, v5

    .line 485
    if-eqz v2, :cond_0

    .line 486
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v5

    .line 487
    .local v5, "linkAddr":Landroid/net/LinkAddress;
    const-string v6, "getIpAddress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "linkAddr"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    if-eqz v5, :cond_0

    .line 489
    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 490
    .local v6, "inetaddr":Ljava/net/InetAddress;
    const-string v7, "getIpAddress"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inetaddr"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    if-eqz v6, :cond_0

    .line 492
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 493
    if-eqz v4, :cond_0

    .line 494
    const-string v7, "getIpAddress"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v5    # "linkAddr":Landroid/net/LinkAddress;
    .end local v6    # "inetaddr":Ljava/net/InetAddress;
    :cond_0
    nop

    .line 503
    return-object v4

    .line 499
    :catch_0
    move-exception v5

    .line 500
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "getIpAddress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error configuring interface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    return-object v3
.end method

.method public static getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/util/BitSet;II)J
    .locals 9
    .param p0, "bitSet"    # Ljava/util/BitSet;
    .param p1, "startbit"    # I
    .param p2, "endbit"    # I

    .line 537
    const-wide/16 v0, 0x0

    .line 538
    .local v0, "res":J
    move-wide v1, v0

    move v0, p1

    .local v0, "i":I
    .local v1, "res":J
    :goto_0
    if-ge v0, p2, :cond_1

    .line 539
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    long-to-double v3, v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    sub-int v7, v0, p1

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-long v1, v3

    .line 538
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "i":I
    :cond_1
    return-wide v1
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 7
    .param p0, "length"    # I

    .line 368
    const-string v0, "defkSTUB345opqCDElxyzA26cQRF8IYZ0mJabKLMuPvwNOGHVWXnrst179"

    .line 369
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 370
    .local v1, "strlength":I
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 371
    .local v2, "random":Ljava/util/Random;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p0, :cond_0

    .line 373
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 374
    .local v5, "number":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 372
    .end local v5    # "number":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;
    .locals 4
    .param p0, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 332
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "body":Ljava/lang/String;
    const-string v1, "CommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response data. response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/xiaopeng/lib/http/server/ServerBean;

    invoke-direct {v2}, Lcom/xiaopeng/lib/http/server/ServerBean;-><init>()V

    .line 337
    .local v2, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/http/server/ServerBean;->setCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 340
    :try_start_1
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/http/server/ServerBean;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    goto :goto_0

    .line 341
    :catch_0
    move-exception v3

    .line 342
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/http/server/ServerBean;->setMsg(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 348
    goto :goto_1

    .line 346
    :catch_1
    move-exception v3

    .line 347
    .local v3, "var4":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 352
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "var4":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 349
    .end local v2    # "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    :catch_2
    move-exception v1

    .line 350
    .local v1, "var5":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    const/4 v2, 0x0

    .end local v1    # "var5":Ljava/lang/Exception;
    .restart local v2    # "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    :goto_2
    move-object v1, v2

    .line 354
    .end local v2    # "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    .local v1, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    return-object v1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .line 419
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .line 423
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTetherIpAddress()Ljava/lang/String;
    .locals 12

    .line 440
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 441
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 443
    .local v1, "service":Landroid/os/INetworkManagementService;
    const/4 v2, 0x0

    .line 444
    .local v2, "ifcg":Landroid/net/InterfaceConfiguration;
    const/4 v3, 0x0

    move-object v4, v3

    .line 446
    .local v4, "address":Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listTetheredInterfaces()[Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, "tetherList":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 448
    .local v8, "tether":Ljava/lang/String;
    const-string v9, "wlan"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 449
    invoke-interface {v1, v8}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    move-object v2, v6

    .line 450
    if-eqz v2, :cond_2

    .line 451
    invoke-virtual {v2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v6

    .line 452
    .local v6, "linkAddr":Landroid/net/LinkAddress;
    const-string v7, "getTetherIpAddress"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "linkAddr"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    if-eqz v6, :cond_0

    .line 454
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 455
    .local v7, "inetaddr":Ljava/net/InetAddress;
    const-string v9, "getTetherIpAddress"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inetaddr"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    if-eqz v7, :cond_0

    .line 457
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 458
    if-eqz v4, :cond_0

    .line 459
    const-string v9, "getTetherIpAddress"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v6    # "linkAddr":Landroid/net/LinkAddress;
    .end local v7    # "inetaddr":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 447
    .end local v8    # "tether":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 471
    .end local v5    # "tetherList":[Ljava/lang/String;
    :cond_2
    :goto_1
    nop

    .line 472
    return-object v4

    .line 468
    :catch_0
    move-exception v5

    .line 469
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "getTetherIpAddress"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error configuring interface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    return-object v3
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 7

    .line 385
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "uuid":Ljava/lang/String;
    const/16 v1, 0x20

    new-array v1, v1, [C

    .line 387
    .local v1, "cs":[C
    const/4 v2, 0x0

    .line 388
    .local v2, "c":C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .local v3, "i":I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    if-lez v3, :cond_1

    .line 389
    .end local v3    # "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    const/16 v6, 0x2d

    if-eq v3, v6, :cond_0

    .line 390
    add-int/lit8 v3, v4, 0x1

    .local v3, "j":I
    aput-char v2, v1, v4

    .line 388
    .end local v4    # "j":I
    move v4, v3

    .end local v5    # "i":I
    .local v3, "i":I
    .restart local v4    # "j":I
    :cond_0
    move v3, v5

    goto :goto_0

    .line 393
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, "uid":Ljava/lang/String;
    return-object v3
.end method

.method public static hex2decimal(Ljava/lang/String;)I
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .line 161
    const/4 v0, -0x1

    .line 163
    .local v0, "value":I
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 271
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 273
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 274
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 273
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static intToByte(I)B
    .locals 1
    .param p0, "x"    # I

    .line 55
    int-to-byte v0, p0

    return v0
.end method

.method public static intToByte1(I)[B
    .locals 3
    .param p0, "x"    # I

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static intToBytes2(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 81
    .local v0, "src":[B
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 82
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 83
    return-object v0
.end method

.method public static intToBytesBig(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 67
    .local v0, "src":[B
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 68
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 69
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 70
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 71
    return-object v0
.end method

.method public static isStrArraysContainStr([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "strings"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "res":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 430
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 431
    const/4 v0, 0x1

    .line 432
    goto :goto_1

    .line 429
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_1
    :goto_1
    return v0
.end method

.method public static listToString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 306
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 307
    .local v0, "res":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 308
    invoke-static {p1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    return-object v0
.end method

.method public static longToBytes(J)[B
    .locals 2
    .param p0, "x"    # J

    .line 142
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static strToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "res":[B
    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 121
    :cond_0
    return-object v0
.end method

.method public static unsignedBytes2ToInt([B)I
    .locals 2
    .param p0, "src"    # [B

    .line 111
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 113
    .local v0, "value":I
    return v0
.end method
