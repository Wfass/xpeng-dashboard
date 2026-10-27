.class public Lorg/jaudiotagger/tag/id3/ID3v23Tag;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;
.source "ID3v23Tag.java"


# static fields
.field protected static FIELD_TAG_EXT_SIZE_LENGTH:I = 0x4

.field public static final MAJOR_VERSION:B = 0x3t

.field public static final MASK_V23_CRC_DATA_PRESENT:I = 0x80

.field public static final MASK_V23_EMBEDDED_INFO_FLAG:I = 0x2

.field public static final MASK_V23_EXPERIMENTAL:I = 0x20

.field public static final MASK_V23_EXTENDED_HEADER:I = 0x40

.field public static final MASK_V23_UNSYNCHRONIZATION:I = 0x80

.field public static final RELEASE:B = 0x2t

.field public static final REVISION:B = 0x0t

.field protected static TAG_EXT_HEADER_CRC_LENGTH:I = 0x4

.field protected static TAG_EXT_HEADER_DATA_LENGTH:I = 0x0

.field protected static TAG_EXT_HEADER_LENGTH:I = 0xa

.field protected static final TYPE_CRCDATA:Ljava/lang/String; = "crcdata"

.field protected static final TYPE_EXPERIMENTAL:Ljava/lang/String; = "experimental"

.field protected static final TYPE_EXTENDED:Ljava/lang/String; = "extended"

.field protected static final TYPE_PADDINGSIZE:Ljava/lang/String; = "paddingsize"

.field protected static final TYPE_UNSYNCHRONISATION:Ljava/lang/String; = "unsyncronisation"


# instance fields
.field protected compression:Z

.field private crc32:I

.field protected crcDataFlag:Z

.field protected experimental:Z

.field protected extended:Z

.field private paddingSize:I

.field protected unsynchronization:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    sget v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->FIELD_TAG_EXT_SIZE_LENGTH:I

    sub-int/2addr v0, v1

    sput v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    .line 165
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, ""

    .line 367
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    .line 352
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 353
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 2

    .line 313
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 314
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from a tag of a different version"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    .line 316
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 322
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    if-nez v0, :cond_1

    .line 326
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    goto :goto_0

    .line 333
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    move-object p1, v0

    .line 335
    :goto_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 339
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 340
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v0, "Created tag from a tag of a different version"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Tag;)V
    .locals 2

    .line 301
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 93
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 98
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 108
    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 113
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 118
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->compression:Z

    .line 302
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Creating tag from another tag of same type"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 304
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyFrames(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    return-void
.end method

.method private readExtendedHeader(Ljava/nio/ByteBuffer;I)V
    .locals 6

    .line 501
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    .line 503
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_3

    .line 506
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v3

    .line 507
    :goto_0
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 508
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz p2, :cond_1

    .line 510
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 513
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 516
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 517
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-lez p1, :cond_2

    .line 519
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 521
    :cond_2
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    sget p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    goto/16 :goto_2

    .line 523
    :cond_3
    sget v4, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v0, v4

    if-ne p2, v0, :cond_7

    .line 525
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0x80

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    move p2, v3

    .line 529
    :goto_1
    iput-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 530
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-nez p2, :cond_5

    .line 532
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_FLAG_SET_INCORRECTLY:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 535
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 537
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    .line 538
    iget p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-lez p2, :cond_6

    .line 540
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_PADDING_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 542
    :cond_6
    iget p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    sget p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    sget p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    .line 544
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 545
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_CRC_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    goto :goto_2

    .line 551
    :cond_7
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_EXTENDED_HEADER_SIZE_INVALID:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v4, v1}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->FIELD_TAG_EXT_SIZE_LENGTH:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_2
    return-void
.end method

.method private readHeaderFlags(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 445
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 446
    :goto_0
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 447
    :goto_1
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 448
    :goto_2
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    and-int/lit8 v0, p1, 0x10

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 453
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    .line 458
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    .line 463
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_6

    .line 468
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v4, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v5}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    .line 473
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_INVALID_OR_UNKNOWN_FLAG_SET:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 476
    :cond_7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 478
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_UNSYNCHRONIZED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 481
    :cond_8
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz p1, :cond_9

    .line 483
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXTENDED:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 486
    :cond_9
    iget-boolean p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eqz p1, :cond_a

    .line 488
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->ID3_TAG_EXPERIMENTAL:Lorg/jaudiotagger/logging/ErrorMessage;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v0, 0x0

    .line 685
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 686
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 687
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 690
    sget v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/lit8 v1, v1, 0xa

    sget v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v1, v2

    .line 691
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 694
    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_ID:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 697
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getMajorVersion()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 700
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getRevision()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 704
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v2

    const/16 v3, 0x80

    if-eqz v2, :cond_0

    int-to-byte v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 708
    :goto_0
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    .line 712
    :cond_1
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 716
    :cond_2
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 720
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v2, :cond_3

    .line 722
    sget v2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/2addr v2, v0

    .line 723
    iget-boolean v4, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v4, :cond_4

    .line 725
    sget v4, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v2, v4

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    :goto_1
    add-int/2addr p2, p1

    add-int/2addr p2, v2

    .line 730
    invoke-static {p2}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->valueToBuffer(I)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 733
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz p2, :cond_6

    .line 739
    iget-boolean p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz p2, :cond_5

    .line 741
    sget p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    sget p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-byte p1, v3

    .line 743
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 744
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 745
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 746
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 751
    :cond_5
    sget p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_DATA_LENGTH:I

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 752
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 753
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 755
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 759
    :cond_6
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    .line 220
    :try_start_0
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->convertFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 229
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->copyFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected convertFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TDRC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    .line 247
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->findMatchingMaskAndExtractV3Values()V

    .line 249
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    const-string v3, "TYER"

    invoke-direct {v1, v3}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTYER;->setText(Ljava/lang/String;)V

    .line 253
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    const-string v3, "TDAT"

    invoke-direct {v1, v3}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->setText(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isMonthOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDAT;->setMonthOnly(Z)V

    .line 260
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 264
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    const-string v2, "TIME"

    invoke-direct {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;->setText(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->isHoursOnly()Z

    move-result p1

    invoke-virtual {v2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIME;->setHoursOnly(Z)V

    .line 267
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 271
    :cond_2
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TIPL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "IPLS"

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v1

    .line 274
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-object v4, p1

    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v3, v4, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Ljava/lang/String;)V

    .line 275
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p1

    invoke-direct {v2, p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;-><init>(BLjava/util/List;)V

    .line 276
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 277
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TMCL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    instance-of v1, v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    if-eqz v1, :cond_4

    .line 281
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTMCL;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object v1

    .line 282
    new-instance v3, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-object v4, p1

    check-cast v4, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    invoke-direct {v3, v4, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/ID3v24Frame;Ljava/lang/String;)V

    .line 283
    new-instance v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;->getTextEncoding()B

    move-result p1

    invoke-direct {v2, p1, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;-><init>(BLjava/util/List;)V

    .line 284
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V

    .line 285
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 289
    :cond_4
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-object v0
.end method

.method protected copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V
    .locals 2

    .line 173
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Copying primitives"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 174
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->copyPrimitives(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;)V

    .line 176
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 179
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    .line 180
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    .line 181
    iget-boolean v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    iput-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    .line 182
    iget v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    .line 183
    iget p1, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    :cond_0
    return-void
.end method

.method public createArtworkField([BLjava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    .line 1041
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 1042
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    const-string v2, "PictureData"

    .line 1044
    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1045
    sget-object p1, Lorg/jaudiotagger/tag/reference/PictureTypes;->DEFAULT_ID:Ljava/lang/Integer;

    const-string v2, "PictureType"

    invoke-virtual {v1, v2, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "MIMEType"

    .line 1046
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "Description"

    const-string p2, ""

    .line 1047
    invoke-virtual {v1, p1, p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public varargs createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 5

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    const/4 v0, 0x0

    .line 1073
    aget-object v1, p2, v0

    if-eqz v1, :cond_b

    .line 1078
    aget-object v1, p2, v0

    .line 1079
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_2

    if-eqz v1, :cond_1

    .line 1085
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object p1

    .line 1086
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1087
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1088
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 1090
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isWriteMp3GenresAsText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {p2, v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :cond_0
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertGenericToID3v23Genre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setText(Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 1083
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1100
    :cond_2
    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v2, :cond_a

    .line 1102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    const-string v2, "TYER"

    if-ne p1, p2, :cond_3

    .line 1104
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1105
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p1

    .line 1108
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 1110
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1111
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p1

    .line 1114
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 1116
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1117
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p1

    .line 1120
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    .line 1122
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1123
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {p2, v1}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    return-object p1

    .line 1126
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p2, :cond_9

    .line 1128
    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    .line 1129
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    const-string v0, "TDAT"

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/4 v4, 0x7

    if-lt p2, v3, :cond_7

    .line 1134
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x8

    .line 1135
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1136
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1139
    new-instance p2, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1140
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1141
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-object p2

    .line 1144
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lt p2, v4, :cond_8

    .line 1148
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1150
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 1151
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/jaudiotagger/tag/id3/framebody/AbstractFrameBodyTextInfo;->setText(Ljava/lang/String;)V

    .line 1153
    new-instance p2, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1154
    invoke-virtual {p2, p1}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1155
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-object p2

    :cond_8
    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1

    .line 1171
    :cond_a
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createField(Lorg/jaudiotagger/tag/FieldKey;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 1075
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1070
    :cond_c
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 3

    if-eqz p1, :cond_0

    .line 890
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-super {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doCreateTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;[Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1

    .line 888
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public createField(Lorg/jaudiotagger/tag/images/Artwork;)Lorg/jaudiotagger/tag/TagField;
    .locals 9

    .line 1004
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;->getFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 1006
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->isLinked()Z

    move-result v2

    const-string v3, ""

    const-string v4, "Description"

    const-string v5, "MIMEType"

    const-string v6, "PictureType"

    const-string v7, "PictureData"

    if-nez v2, :cond_0

    .line 1008
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getBinaryData()[B

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1009
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1010
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1011
    invoke-virtual {v1, v4, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 1018
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ISO-8859-1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    invoke-interface {p1}, Lorg/jaudiotagger/tag/images/Artwork;->getPictureType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v6, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "-->"

    .line 1025
    invoke-virtual {v1, v5, p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1026
    invoke-virtual {v1, v4, v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->setObjectValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 1022
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    move-result-object p1

    return-object p1
.end method

.method public createFrame(Ljava/lang/String;)Lorg/jaudiotagger/tag/id3/ID3v23Frame;
    .locals 1

    .line 868
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createStructure()V
    .locals 5

    .line 841
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureHeader()V

    .line 846
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "header"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v3

    const-string v4, "unsyncronisation"

    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 848
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    const-string v4, "extended"

    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 849
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget-boolean v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    const-string v4, "experimental"

    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Z)V

    .line 850
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    const-string v4, "crcdata"

    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 851
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    iget v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    const-string v4, "paddingsize"

    invoke-virtual {v0, v4, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 852
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 854
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->createStructureBody()V

    .line 855
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .locals 2

    .line 940
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 931
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doDeleteTagField(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;)V

    return-void

    .line 929
    :cond_0
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 409
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 413
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;

    .line 414
    iget v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    iget v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    if-eq v2, v3, :cond_1

    return v1

    .line 418
    :cond_1
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 422
    :cond_2
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->experimental:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 426
    :cond_3
    iget-boolean v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    iget-boolean v3, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 430
    :cond_4
    iget v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    iget v0, v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    if-ne v2, v0, :cond_5

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1299
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    .line 1301
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 1302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 1303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1305
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1306
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1308
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1310
    invoke-static {v1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 1315
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_4

    .line 1317
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    .line 1318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 1319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jaudiotagger/tag/TagField;

    .line 1323
    instance-of v2, v1, Lorg/jaudiotagger/tag/TagTextField;

    if-eqz v2, :cond_2

    .line 1325
    check-cast v1, Lorg/jaudiotagger/tag/TagTextField;

    invoke-interface {v1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0

    .line 1333
    :cond_4
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getAll(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getArtworkList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/images/Artwork;",
            ">;"
        }
    .end annotation

    .line 976
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object v0

    .line 977
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 979
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 981
    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;

    .line 982
    invoke-static {}, Lorg/jaudiotagger/tag/images/ArtworkFactory;->getNew()Lorg/jaudiotagger/tag/images/Artwork;

    move-result-object v3

    .line 983
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setMimeType(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getPictureType()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setPictureType(I)V

    .line 985
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->isImageUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 987
    invoke-interface {v3, v4}, Lorg/jaudiotagger/tag/images/Artwork;->setLinked(Z)V

    .line 988
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 992
    :cond_0
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyAPIC;->getImageData()[B

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/jaudiotagger/tag/images/Artwork;->setBinaryData([B)V

    .line 994
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getCrc32()I
    .locals 1

    .line 156
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crc32:I

    return v0
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1352
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    const-string v0, "TYERTDAT"

    .line 1354
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    if-eqz v0, :cond_0

    .line 1357
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 1363
    :cond_0
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1368
    :cond_1
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1349
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 907
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getGenericKeyFromId3(Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    invoke-super {p0, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 914
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 915
    invoke-super {p0, v0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->doGetValueAtIndex(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 904
    :cond_1
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method protected getFrameAndSubIdFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;
    .locals 3

    if-eqz p1, :cond_1

    .line 949
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getId3KeyFromGenericKey(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 954
    new-instance v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getFrameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/ID3v23FieldKey;->getSubId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag$FrameAndSubId;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 952
    :cond_0
    new-instance v0, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getID3Frames()Lorg/jaudiotagger/tag/id3/ID3Frames;
    .locals 1

    .line 959
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "ID3v2.30"

    return-object v0
.end method

.method public getMajorVersion()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPaddingSize()I
    .locals 1

    .line 1053
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->paddingSize:I

    return v0
.end method

.method public getPreferredFrameOrderComparator()Ljava/util/Comparator;
    .locals 1

    .line 968
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;->getInstanceof()Lorg/jaudiotagger/tag/id3/ID3v23PreferredFrameOrderComparator;

    move-result-object v0

    return-object v0
.end method

.method public getRelease()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRevision()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 2

    .line 389
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 391
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_LENGTH:I

    add-int/2addr v1, v0

    .line 392
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->crcDataFlag:Z

    if-eqz v0, :cond_0

    .line 394
    sget v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->TAG_EXT_HEADER_CRC_LENGTH:I

    add-int/2addr v1, v0

    .line 397
    :cond_0
    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getSize()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    .line 1190
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_1

    const-string v0, "TYERTDAT"

    .line 1192
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFrame(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/AggregatedFrame;

    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/AggregatedFrame;->getContent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1199
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1202
    :cond_1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_3

    .line 1204
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1207
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    .line 1208
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    .line 1209
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->getValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->convertID3v23GenreToGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1

    .line 1215
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1187
    :cond_4
    new-instance p1, Lorg/jaudiotagger/tag/KeyNotFoundException;

    invoke-direct {p1}, Lorg/jaudiotagger/tag/KeyNotFoundException;-><init>()V

    throw p1
.end method

.method public isUnsynchronization()Z
    .locals 1

    .line 863
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    return v0
.end method

.method protected loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 1

    .line 1221
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    instance-of v0, v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->setV23Format()V

    .line 1225
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void
.end method

.method protected loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 4

    const-string v0, "TYER"

    .line 1230
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "TDAT"

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1232
    invoke-super {p0, p1, p2, p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Tag;->loadFrameIntoSpecifiedMap(Ljava/util/HashMap;Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void

    .line 1236
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1238
    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1241
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    const-string p2, "TDAT is empty so just ignoring"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 1245
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "TYERTDAT"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1255
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1257
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1259
    new-instance p2, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1260
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1261
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p2, p3}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1262
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1267
    :cond_3
    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1270
    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1272
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1274
    new-instance p2, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;

    invoke-direct {p2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;-><init>()V

    .line 1275
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;

    invoke-virtual {p2, v2}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1276
    invoke-virtual {p2, p3}, Lorg/jaudiotagger/tag/id3/TyerTdatAggregatedFrame;->addFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    .line 1277
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1282
    :cond_5
    invoke-virtual {p1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1248
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 1250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1252
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateFrameId:Ljava/lang/String;

    .line 1253
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateBytes:I

    invoke-virtual {p3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->duplicateBytes:I

    :cond_8
    :goto_1
    return-void
.end method

.method protected processDuplicateFrame(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    .locals 2

    .line 197
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IPLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p2

    check-cast p2, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p2}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p2

    .line 200
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyIPLS;->getPairing()Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->getMapping()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/datatype/Pair;

    .line 203
    invoke-virtual {p2, v0}, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;->add(Lorg/jaudiotagger/tag/datatype/Pair;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 563
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Reading ID3v23 tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 569
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readHeaderFlags(Ljava/nio/ByteBuffer;)V

    .line 572
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3SyncSafeInteger;->bufferToValue(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 573
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->ID_TAG_SIZE:Lorg/jaudiotagger/logging/ErrorMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 576
    iget-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->extended:Z

    if-eqz v1, :cond_0

    .line 578
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readExtendedHeader(Ljava/nio/ByteBuffer;I)V

    .line 582
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 584
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->synchronize(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 589
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->readFrames(Ljava/nio/ByteBuffer;I)V

    .line 590
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Loaded Frames,there are:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void

    .line 565
    :cond_2
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tag not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected readFrames(Ljava/nio/ByteBuffer;I)V
    .locals 6

    .line 607
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->frameMap:Ljava/util/HashMap;

    .line 608
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->encryptedFrameMap:Ljava/util/HashMap;

    .line 612
    iput p2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->fileReadSize:I

    .line 613
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Start of frame body at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",frames data size is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 617
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 623
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 624
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Looking for next frame at:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 625
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;-><init>(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 626
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v23Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 627
    sget-object v3, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":Found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at frame at:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0, v2, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->loadFrameIntoMap(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/jaudiotagger/tag/PaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/jaudiotagger/tag/EmptyFrameException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jaudiotagger/tag/InvalidFrameIdentifierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jaudiotagger/tag/InvalidFrameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jaudiotagger/tag/InvalidDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 662
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Corrupt Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/InvalidDataTypeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 663
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 653
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Invalid Frame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/InvalidFrameException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 654
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    goto :goto_1

    :catch_2
    move-exception p1

    .line 644
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Invalid Frame Identifier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/InvalidFrameIdentifierException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 645
    iget p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->invalidFrames:I

    goto :goto_1

    :catch_3
    move-exception v0

    .line 639
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Empty Frame:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/EmptyFrameException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 640
    iget v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->emptyFrameBytes:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->emptyFrameBytes:I

    goto/16 :goto_0

    .line 633
    :catch_4
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":Found padding starting at:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public write(Ljava/io/File;J)J
    .locals 11

    .line 775
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->setLoggingFilename(Ljava/lang/String;)V

    .line 776
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing tag to file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 780
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 783
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 784
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 787
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    move-object v6, v0

    .line 790
    array-length v0, v6

    add-int/lit8 v0, v0, 0xa

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->calculateTagSize(II)I

    move-result v0

    .line 791
    array-length v1, v6

    add-int/lit8 v1, v1, 0xa

    sub-int v7, v0, v1

    .line 792
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Current audiostart:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 793
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Size including padding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 794
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Padding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 796
    array-length v1, v6

    invoke-direct {p0, v7, v1}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move v8, v0

    move-wide v9, p2

    .line 797
    invoke-virtual/range {v3 .. v10}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeBufferToFile(Ljava/io/File;Ljava/nio/ByteBuffer;[BIIJ)V

    int-to-long p1, v0

    return-wide p1
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 5

    .line 807
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":Writing tag to channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeFramesToBuffer()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 810
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":bodybytebuffer:sizebeforeunsynchronisation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 813
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isUnsyncTags()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->requiresUnsynchronization([B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->unsynchronization:Z

    .line 814
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->isUnsynchronization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    invoke-static {v0}, Lorg/jaudiotagger/tag/id3/ID3Unsynchronization;->unsynchronize([B)[B

    move-result-object v0

    .line 817
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":bodybytebuffer:sizeafterunsynchronisation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1
    if-lez p2, :cond_2

    .line 823
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->calculateTagSize(II)I

    move-result p2

    .line 824
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    sub-int v2, p2, v1

    .line 825
    sget-object p2, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":Padding:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 827
    :cond_2
    array-length p2, v0

    invoke-direct {p0, v2, p2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writeHeaderToBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 829
    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 830
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 831
    invoke-virtual {p0, p1, v2}, Lorg/jaudiotagger/tag/id3/ID3v23Tag;->writePadding(Ljava/nio/channels/WritableByteChannel;I)V

    return-void
.end method
