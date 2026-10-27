.class public Lorg/jaudiotagger/audio/generic/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static BITS_IN_BYTE_MULTIPLIER:I = 0x8

.field public static KILOBYTE_MULTIPLIER:I = 0x3e8

.field private static final MAX_BASE_TEMP_FILENAME_LENGTH:I = 0x14

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "org.jaudiotagger.audio.generic.utils"

    .line 45
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jaudiotagger/audio/generic/Utils;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 372
    :try_start_0
    invoke-static {p0, p1}, Lorg/jaudiotagger/audio/generic/Utils;->copyThrowsOnException(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 375
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static copyThrowsOnException(Ljava/io/File;Ljava/io/File;)V
    .locals 17

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 483
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 484
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 486
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 487
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v13

    const-wide/16 v7, 0x0

    move-wide v15, v7

    :goto_0
    cmp-long v7, v15, v13

    if-gez v7, :cond_0

    const-wide/32 v10, 0x100000

    move-object v7, v0

    move-wide v8, v15

    move-object v12, v4

    .line 490
    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-long/2addr v15, v7

    goto :goto_0

    .line 493
    :cond_0
    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v5, v0, v2

    aput-object v6, v0, v1

    invoke-static {v0}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v5, v4

    :goto_1
    new-array v3, v3, [Ljava/io/Closeable;

    aput-object v5, v3, v2

    aput-object v4, v3, v1

    invoke-static {v3}, Lorg/jaudiotagger/audio/AudioFileIO;->closeQuietly([Ljava/io/Closeable;)V

    .line 494
    throw v0
.end method

.method public static getBaseFilenameForTempFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 297
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->getMinBaseFilenameAllowedForTempFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntBE(Ljava/nio/ByteBuffer;II)I
    .locals 0

    .line 152
    invoke-static {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static getIntLE([B)I
    .locals 2

    .line 124
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/jaudiotagger/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static getIntLE([BII)I
    .locals 0

    .line 138
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static getLongBE(Ljava/nio/ByteBuffer;II)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    sub-int v3, p2, v2

    .line 110
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getLongLE(Ljava/nio/ByteBuffer;II)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    add-int v3, p1, v2

    .line 92
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getMagicExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-static {p0}, Lorg/jaudiotagger/utils/FileTypeUtil;->getMagicFileType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lorg/jaudiotagger/utils/FileTypeUtil;->getMagicExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMinBaseFilenameAllowedForTempFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 310
    invoke-static {p0}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-object p0

    .line 314
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "000"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 316
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "00"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 318
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static getShortBE(Ljava/nio/ByteBuffer;II)S
    .locals 0

    .line 166
    invoke-static {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public static getSizeBEInt16(S)[B
    .locals 3

    const/4 v0, 0x2

    .line 191
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getSizeBEInt32(I)[B
    .locals 3

    const/4 v0, 0x4

    .line 176
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getSizeLEInt32(I)[B
    .locals 5

    const/4 v0, 0x4

    .line 204
    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-long v1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-long v1, p0

    and-long/2addr v1, v3

    long-to-int p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 237
    new-array v0, p2, [B

    .line 238
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 240
    new-instance p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static getString(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 251
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 252
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 253
    new-instance p0, Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static isOddLength(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static readFileDataIntoBufferBE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 461
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 462
    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 p0, 0x0

    .line 463
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 464
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static readFileDataIntoBufferLE(Ljava/nio/channels/FileChannel;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 447
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 448
    invoke-virtual {p0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 p0, 0x0

    .line 449
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static readFourBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 389
    new-array v0, v0, [B

    .line 390
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 391
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static readPascalString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    .line 221
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lorg/jaudiotagger/audio/generic/Utils;->u(B)I

    move-result v0

    .line 222
    new-array v1, v0, [B

    .line 223
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 224
    new-instance p0, Ljava/lang/String;

    sget-object v2, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static readString(Ljava/io/DataInput;I)Ljava/lang/String;
    .locals 1

    .line 283
    new-array p1, p1, [B

    .line 284
    invoke-interface {p0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 285
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lorg/jaudiotagger/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static readThreeBytesAsChars(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    .line 402
    new-array v0, v0, [B

    .line 403
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 404
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lorg/jaudiotagger/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public static readUint16(Ljava/io/DataInput;)I
    .locals 2

    const/4 v0, 0x4

    .line 273
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/4 v1, 0x2

    .line 274
    invoke-interface {p0, v0, v1, v1}, Ljava/io/DataInput;->readFully([BII)V

    .line 275
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static readUint32(Ljava/io/DataInput;)J
    .locals 2

    const/16 v0, 0x8

    .line 262
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/4 v1, 0x4

    .line 263
    invoke-interface {p0, v0, v1, v1}, Ljava/io/DataInput;->readFully([BII)V

    .line 264
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static rename(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .line 332
    sget-object v0, Lorg/jaudiotagger/audio/generic/Utils;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Renaming From:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 335
    sget-object p0, Lorg/jaudiotagger/audio/generic/Utils;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination File:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v1

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 343
    invoke-static {p0, p1}, Lorg/jaudiotagger/audio/generic/Utils;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    sget-object v0, Lorg/jaudiotagger/audio/generic/Utils;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete File:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return v1

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public static u(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static u(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static u(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
