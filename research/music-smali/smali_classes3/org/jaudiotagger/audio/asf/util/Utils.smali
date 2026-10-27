.class public Lorg/jaudiotagger/audio/asf/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DIFF_BETWEEN_ASF_DATE_AND_JAVA_DATE:J = 0xa97307f7980L

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final MAXIMUM_STRING_LENGTH_ALLOWED:I = 0x7ffe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 47
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStringLengthNullSafe(Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7ffe

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_STRING_IS_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 9

    const/16 v0, 0x2000

    .line 101
    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, p2

    if-gez v4, :cond_2

    sub-long v4, p2, v2

    const-wide/16 v6, 0x2000

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    long-to-int v6, v4

    goto :goto_1

    :cond_0
    move v6, v0

    :goto_1
    const/4 v7, 0x0

    .line 110
    invoke-virtual {p0, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 116
    invoke-virtual {p1, v1, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v6

    add-long/2addr v2, v4

    goto :goto_0

    .line 113
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Inputstream has to continue for another "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static flush(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x2000

    .line 130
    new-array v0, v0, [B

    .line 132
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getBytes(JI)[B
    .locals 5

    .line 154
    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 155
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x8

    ushr-long v1, p0, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 157
    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    .line 174
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    .line 176
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 177
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;
    .locals 6

    .line 216
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 219
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 221
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide v4, 0xa97307f7980L

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 240
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 242
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isStringLengthValidNullSafe(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x7ffe

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x8

    .line 260
    new-array v1, v0, [B

    .line 261
    new-array v2, v0, [B

    .line 262
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    .line 268
    :goto_0
    array-length v0, v1

    if-ge p0, v0, :cond_0

    rsub-int/lit8 v0, p0, 0x7

    .line 270
    aget-byte v3, v1, p0

    aput-byte v3, v2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0

    .line 266
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static readBinary(Ljava/io/InputStream;J)[B
    .locals 0

    long-to-int p1, p1

    .line 285
    new-array p1, p1, [B

    .line 286
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    return-object p1
.end method

.method public static readCharacterSizedString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v1

    .line 304
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 305
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    :cond_0
    if-eqz v2, :cond_1

    int-to-char v2, v2

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 312
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    :cond_1
    if-nez v2, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-gt v3, v1, :cond_0

    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    if-ne v1, p0, :cond_2

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 318
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Data for current interpretation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 2

    .line 337
    new-array p1, p1, [B

    .line 338
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    .line 339
    array-length v0, p1

    if-ne p0, v0, :cond_1

    .line 341
    array-length p0, p1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    .line 347
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p1, p0

    if-nez p0, :cond_0

    array-length p0, p1

    sub-int/2addr p0, v0

    aget-byte p0, p1, p0

    if-nez p0, :cond_0

    .line 349
    array-length p0, p1

    sub-int/2addr p0, v0

    new-array p0, p0, [B

    .line 350
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    move-object p0, p1

    .line 354
    :goto_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-16LE"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 356
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t read the necessary amount of bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;
    .locals 3

    if-eqz p0, :cond_1

    const/16 v0, 0x10

    .line 376
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 377
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 379
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    new-instance p0, Lorg/jaudiotagger/audio/asf/data/GUID;

    invoke-direct {p0, v0}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([I)V

    return-object p0

    .line 374
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readUINT16(Ljava/io/InputStream;)I
    .locals 1

    .line 393
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 394
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static readUINT32(Ljava/io/InputStream;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x18

    if-gt v2, v3, :cond_0

    .line 414
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v2

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static readUINT64(Ljava/io/InputStream;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x38

    if-gt v2, v3, :cond_0

    .line 435
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v3, v2

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static readUTF16LEStr(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 451
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    move-result v0

    .line 452
    new-array v1, v0, [B

    .line 453
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-eq p0, v0, :cond_1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Data for current interpretation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 459
    :cond_1
    :goto_0
    array-length p0, v1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    .line 461
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, v1, p0

    if-nez p0, :cond_2

    array-length p0, v1

    sub-int/2addr p0, v0

    aget-byte p0, v1, p0

    if-nez p0, :cond_2

    .line 463
    array-length p0, v1

    sub-int/2addr p0, v0

    new-array p0, p0, [B

    .line 464
    array-length v2, v1

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v1, v0, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move-object p0, v1

    .line 468
    :goto_1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static writeUINT16(ILjava/io/OutputStream;)V
    .locals 4

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    .line 486
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 489
    div-int/lit8 v2, v1, 0x8

    shr-int v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 491
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 484
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "positive value expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeUINT32(JLjava/io/OutputStream;)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x4

    .line 507
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x18

    if-gt v1, v2, :cond_0

    .line 510
    div-int/lit8 v2, v1, 0x8

    shr-long v3, p0, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 505
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "positive value expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeUINT64(JLjava/io/OutputStream;)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const/16 v0, 0x8

    .line 528
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x38

    if-gt v1, v2, :cond_0

    .line 531
    div-int/lit8 v2, v1, 0x8

    shr-long v3, p0, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 526
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "positive value expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
