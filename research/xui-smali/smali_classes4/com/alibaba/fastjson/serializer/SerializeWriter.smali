.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field private static BUFFER_THRESHOLD:I

.field private static final VALUE_FALSE:[C

.field private static final VALUE_TRUE:[C

.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static final bytesBufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field static final nonDirectFeatures:I


# instance fields
.field protected beanToArray:Z

.field protected browserSecure:Z

.field protected buf:[C

.field protected count:I

.field protected disableCircularReferenceDetect:Z

.field protected features:I

.field protected keySeperator:C

.field protected maxBufSize:I

.field protected notWriteDefaultValue:Z

.field protected quoteFieldNames:Z

.field protected sepcialBits:J

.field protected sortField:Z

.field protected useSingleQuotes:Z

.field protected writeDirect:Z

.field protected writeEnumUsingName:Z

.field protected writeEnumUsingToString:Z

.field protected writeNonStringValueAsString:Z

.field private final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    .line 39
    const-string v0, ":true"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_TRUE:[C

    .line 40
    const-string v0, ":false"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_FALSE:[C

    .line 41
    const/high16 v0, 0x20000

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    .line 45
    :try_start_0
    const-string v0, "fastjson.serializer_buffer_threshold"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, "serializer_buffer_threshold":I
    const/16 v2, 0x40

    if-lt v1, v2, :cond_0

    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_0

    .line 49
    mul-int/lit16 v2, v1, 0x400

    sput v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "prop":Ljava/lang/String;
    .end local v1    # "serializer_buffer_threshold":I
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 175
    :goto_0
    const/4 v0, 0x0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;

    .line 91
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->EMPTY:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 3
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "initialSize"    # I

    .line 148
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 149
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 151
    if-lez p2, :cond_0

    .line 154
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 157
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 108
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 111
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_0
    const/16 v0, 0x800

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 119
    :goto_0
    move v0, p2

    .line 120
    .local v0, "featuresValue":I
    array-length v1, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 121
    .local v3, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v4

    or-int/2addr v0, v4

    .line 120
    .end local v3    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_1
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 126
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 100
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 96
    return-void
.end method

.method private encodeToUTF8(Ljava/io/OutputStream;)I
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 451
    .local v0, "bytesLength":I
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 453
    .local v1, "bytes":[B
    if-nez v1, :cond_0

    .line 454
    const/16 v2, 0x2000

    new-array v1, v2, [B

    .line 455
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 457
    :cond_0
    move-object v2, v1

    .line 459
    .local v2, "bytesLocal":[B
    array-length v3, v1

    if-ge v3, v0, :cond_1

    .line 460
    new-array v1, v0, [B

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v1}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v3

    .line 464
    .local v3, "position":I
    invoke-virtual {p1, v1, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 466
    if-eq v1, v2, :cond_2

    array-length v4, v1

    sget v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt v4, v5, :cond_2

    .line 467
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 470
    :cond_2
    return v3
.end method

.method private encodeToUTF8Bytes()[B
    .locals 7

    .line 474
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 475
    .local v0, "bytesLength":I
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 477
    .local v1, "bytes":[B
    if-nez v1, :cond_0

    .line 478
    const/16 v2, 0x2000

    new-array v1, v2, [B

    .line 479
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 481
    :cond_0
    move-object v2, v1

    .line 483
    .local v2, "bytesLocal":[B
    array-length v3, v1

    if-ge v3, v0, :cond_1

    .line 484
    new-array v1, v0, [B

    .line 487
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v1}, Lcom/alibaba/fastjson/util/IOUtils;->encodeUTF8([CII[B)I

    move-result v3

    .line 488
    .local v3, "position":I
    new-array v4, v3, [B

    .line 489
    .local v4, "copy":[B
    invoke-static {v1, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    if-eq v1, v2, :cond_2

    array-length v5, v1

    sget v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt v5, v6, :cond_2

    .line 492
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bytesBufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 495
    :cond_2
    return-object v4
.end method

.method private writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 2151
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2152
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2154
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V

    .line 2156
    :goto_0
    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 18
    .param p1, "text"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 2406
    move-object/from16 v1, p1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    .line 2408
    .local v2, "specicalFlags_singleQuotes":[B
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2409
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 2410
    .local v4, "newcount":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    const/16 v7, 0x5c

    const/4 v8, 0x0

    const/16 v9, 0x3a

    const/16 v10, 0x27

    if-le v4, v6, :cond_8

    .line 2411
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_7

    .line 2412
    if-nez v3, :cond_0

    .line 2413
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2414
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2415
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2416
    return-void

    .line 2419
    :cond_0
    const/4 v5, 0x0

    .line 2420
    .local v5, "hasSpecial":Z
    move v6, v8

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_2

    .line 2421
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 2422
    .local v11, "ch":C
    array-length v12, v2

    if-ge v11, v12, :cond_1

    aget-byte v12, v2, v11

    if-eqz v12, :cond_1

    .line 2423
    const/4 v5, 0x1

    .line 2424
    goto :goto_1

    .line 2420
    .end local v11    # "ch":C
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2428
    .end local v6    # "i":I
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 2429
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2431
    :cond_3
    nop

    .local v8, "i":I
    :goto_2
    move v6, v8

    .end local v8    # "i":I
    .restart local v6    # "i":I
    if-ge v6, v3, :cond_5

    .line 2432
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2433
    .local v8, "ch":C
    array-length v11, v2

    if-ge v8, v11, :cond_4

    aget-byte v11, v2, v8

    if-eqz v11, :cond_4

    .line 2434
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2435
    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v8

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 2437
    :cond_4
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2431
    .end local v8    # "ch":C
    :goto_3
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "i":I
    .local v8, "i":I
    goto :goto_2

    .line 2440
    .end local v8    # "i":I
    :cond_5
    if-eqz v5, :cond_6

    .line 2441
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2443
    :cond_6
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2444
    return-void

    .line 2447
    .end local v5    # "hasSpecial":Z
    :cond_7
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2450
    :cond_8
    if-nez v3, :cond_a

    .line 2451
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v5, v5, 0x3

    .line 2452
    .local v5, "newCount":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    if-le v5, v6, :cond_9

    .line 2453
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2455
    :cond_9
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v6, v7

    .line 2456
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v6, v7

    .line 2457
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v6, v7

    .line 2458
    return-void

    .line 2461
    .end local v5    # "newCount":I
    :cond_a
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2462
    .local v6, "start":I
    add-int v11, v6, v3

    .line 2464
    .local v11, "end":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v1, v8, v3, v12, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 2465
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2467
    const/4 v12, 0x0

    .line 2469
    .local v12, "hasSpecial":Z
    move v13, v12

    move v12, v4

    move v4, v6

    .local v4, "i":I
    .local v12, "newcount":I
    .local v13, "hasSpecial":Z
    :goto_4
    if-ge v4, v11, :cond_f

    .line 2470
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v14, v4

    .line 2471
    .local v14, "ch":C
    array-length v15, v2

    if-ge v14, v15, :cond_e

    aget-byte v15, v2, v14

    if-eqz v15, :cond_e

    .line 2472
    if-nez v13, :cond_c

    .line 2473
    add-int/lit8 v12, v12, 0x3

    .line 2474
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15

    if-le v12, v15, :cond_b

    .line 2475
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2477
    :cond_b
    iput v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2479
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v4, 0x1

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x3

    sub-int v16, v11, v4

    add-int/lit8 v8, v16, -0x1

    invoke-static {v15, v9, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2480
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v9, 0x0

    invoke-static {v7, v9, v8, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2481
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x27

    aput-char v8, v7, v6

    .line 2482
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x5c

    aput-char v8, v7, v4

    .line 2483
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v4, v5

    sget-object v8, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v8, v8, v14

    aput-char v8, v7, v4

    .line 2484
    add-int/lit8 v11, v11, 0x2

    .line 2485
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x2

    const/16 v10, 0x27

    aput-char v10, v7, v8

    .line 2487
    const/4 v7, 0x1

    .line 2469
    .end local v13    # "hasSpecial":Z
    .local v7, "hasSpecial":Z
    move v13, v7

    const/16 v8, 0x5c

    goto :goto_5

    .line 2489
    .end local v7    # "hasSpecial":Z
    .restart local v13    # "hasSpecial":Z
    :cond_c
    move v9, v8

    add-int/lit8 v12, v12, 0x1

    .line 2490
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v7

    if-le v12, v7, :cond_d

    .line 2491
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2493
    :cond_d
    iput v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2495
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x1

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v4, 0x2

    sub-int v10, v11, v4

    invoke-static {v7, v8, v15, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2496
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v4

    .line 2497
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v4, 0x1

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v14

    aput-char v9, v7, v4

    .line 2498
    add-int/lit8 v11, v11, 0x1

    .end local v14    # "ch":C
    goto :goto_5

    .line 2469
    :cond_e
    move v8, v7

    :goto_5
    add-int/2addr v4, v5

    move v7, v8

    const/4 v8, 0x0

    const/16 v9, 0x3a

    const/16 v10, 0x27

    goto/16 :goto_4

    .line 2503
    .end local v4    # "i":I
    :cond_f
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v5, v12, -0x1

    const/16 v7, 0x3a

    aput-char v7, v4, v5

    .line 2504
    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0
    .param p1, "c"    # C

    .line 334
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 335
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 322
    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "s":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 324
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 328
    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 330
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    sget v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-gt v0, v1, :cond_1

    .line 515
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 518
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 519
    return-void
.end method

.method protected computeFeatures()V
    .locals 8

    .line 187
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    .line 188
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    .line 189
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    .line 190
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    .line 191
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    .line 192
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    .line 193
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    .line 194
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    .line 195
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    .line 197
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nonDirectFeatures:I

    and-int/2addr v0, v3

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_a

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    .line 202
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x27

    goto :goto_a

    :cond_b
    const/16 v0, 0x22

    :goto_a
    iput-char v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    .line 204
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_c

    move v1, v2

    nop

    :cond_c
    iput-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    .line 206
    const-wide v0, 0x4ffffffffL

    .local v0, "S0":J
    const-wide v2, 0x8004ffffffffL

    .local v2, "S1":J
    const-wide v4, 0x50000304ffffffffL    # 2.3175490007226655E77

    .line 221
    .local v4, "S2":J
    iget-boolean v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v6, :cond_d

    const-wide v6, 0x50000304ffffffffL    # 2.3175490007226655E77

    goto :goto_b

    :cond_d
    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    const-wide v6, 0x8004ffffffffL

    goto :goto_b

    :cond_e
    const-wide v6, 0x4ffffffffL

    :goto_b
    iput-wide v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    .line 224
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .line 160
    if-eqz p2, :cond_1

    .line 161
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 163
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_0

    .line 164
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 165
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne p1, v0, :cond_2

    .line 166
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    .line 169
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 172
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->computeFeatures()V

    .line 173
    return-void
.end method

.method public expandCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 299
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialize exceeded MAX_OUTPUT_LENGTH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimumCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 305
    .local v0, "newCapacity":I
    if-ge v0, p1, :cond_2

    .line 306
    move v0, p1

    .line 308
    :cond_2
    new-array v1, v0, [C

    .line 309
    .local v1, "newValue":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    sget v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->BUFFER_THRESHOLD:I

    if-ge v2, v3, :cond_4

    .line 312
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    .line 313
    .local v2, "charsLocal":[C
    if-eqz v2, :cond_3

    array-length v3, v2

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 314
    :cond_3
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 318
    .end local v2    # "charsLocal":[C
    :cond_4
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 319
    return-void
.end method

.method public flush()V
    .locals 4

    .line 2507
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 2508
    return-void

    .line 2512
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 2513
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2516
    nop

    .line 2517
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2518
    return-void

    .line 2514
    :catch_0
    move-exception v0

    .line 2515
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBufferLength()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    return v0
.end method

.method public getMaxBufSize()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 239
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 235
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotWriteDefaultValue()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    return v0
.end method

.method public isSortField()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 2524
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2525
    return-void
.end method

.method public setMaxBufSize(I)V
    .locals 3
    .param p1, "maxBufSize"    # I

    .line 133
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 137
    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->maxBufSize:I

    .line 138
    return-void

    .line 134
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 499
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return v0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "charsetName"    # Ljava/lang/String;

    .line 431
    if-eqz p1, :cond_1

    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 431
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .locals 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 437
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 441
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8Bytes()[B

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 411
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    new-array v0, v0, [C

    .line 412
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    return-object v0

    .line 408
    .end local v0    # "newValue":[C
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toCharArrayForSpringWebSocket()[C
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 425
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [C

    .line 426
    .local v0, "newValue":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    return-object v0

    .line 422
    .end local v0    # "newValue":[C
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 503
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .line 246
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 247
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 252
    const/4 v0, 0x1

    .line 255
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 256
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 257
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 522
    if-nez p1, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 524
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 528
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 346
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 347
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 349
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    .line 353
    .local v1, "rest":I
    add-int v2, p2, v1

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 354
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 355
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 356
    sub-int/2addr p3, v1

    .line 357
    add-int/2addr p2, v1

    .line 358
    .end local v1    # "rest":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt p3, v1, :cond_0

    .line 359
    move v0, p3

    .line 362
    :cond_1
    :goto_0
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 363
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 364
    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1617
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1618
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1619
    return-void

    .line 1622
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1623
    .local v0, "offset":I
    move v1, v0

    .line 1624
    .local v1, "initOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "list_size":I
    :goto_0
    const/16 v4, 0x5d

    if-ge v2, v3, :cond_d

    .line 1625
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1627
    .local v5, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1628
    .local v6, "hasSpecial":Z
    const/16 v7, 0x22

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v5, :cond_1

    .line 1629
    const/4 v6, 0x1

    goto :goto_4

    .line 1631
    :cond_1
    const/4 v10, 0x0

    .local v10, "j":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    .local v11, "len":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 1632
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1633
    .local v12, "ch":C
    const/16 v13, 0x20

    if-lt v12, v13, :cond_3

    const/16 v13, 0x7e

    if-gt v12, v13, :cond_3

    if-eq v12, v7, :cond_3

    const/16 v13, 0x5c

    if-ne v12, v13, :cond_2

    goto :goto_2

    :cond_2
    move v13, v8

    goto :goto_3

    :cond_3
    :goto_2
    move v13, v9

    :goto_3
    move v6, v13

    if-eqz v13, :cond_4

    .line 1637
    goto :goto_4

    .line 1631
    .end local v12    # "ch":C
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1642
    .end local v10    # "j":I
    .end local v11    # "len":I
    :cond_5
    :goto_4
    const/16 v10, 0x2c

    const/16 v11, 0x5b

    if-eqz v6, :cond_9

    .line 1643
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1644
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1645
    move-object v7, v5

    move v5, v8

    .local v5, "j":I
    .local v7, "text":Ljava/lang/String;
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 1646
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Ljava/lang/String;

    .line 1647
    if-eqz v5, :cond_6

    .line 1648
    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1651
    :cond_6
    if-nez v7, :cond_7

    .line 1652
    const-string v9, "null"

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_6

    .line 1654
    :cond_7
    invoke-virtual {p0, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1645
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1657
    .end local v5    # "j":I
    :cond_8
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1658
    return-void

    .line 1661
    .end local v7    # "text":Ljava/lang/String;
    .local v5, "text":Ljava/lang/String;
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x3

    .line 1662
    .local v4, "newcount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v9

    if-ne v2, v12, :cond_a

    .line 1663
    add-int/lit8 v4, v4, 0x1

    .line 1665
    :cond_a
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v9, v9

    if-le v4, v9, :cond_b

    .line 1666
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1667
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1670
    :cond_b
    if-nez v2, :cond_c

    .line 1671
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v0, 0x1

    .local v10, "offset":I
    aput-char v11, v9, v0

    .end local v0    # "offset":I
    goto :goto_7

    .line 1673
    .end local v10    # "offset":I
    .restart local v0    # "offset":I
    :cond_c
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v0, 0x1

    .local v11, "offset":I
    aput-char v10, v9, v0

    .line 1675
    .end local v0    # "offset":I
    move v10, v11

    .end local v11    # "offset":I
    .restart local v10    # "offset":I
    :goto_7
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v10, 0x1

    .local v9, "offset":I
    aput-char v7, v0, v10

    .line 1676
    .end local v10    # "offset":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v5, v8, v0, v10, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1677
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v9, v0

    .line 1678
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v9, 0x1

    .local v8, "offset":I
    aput-char v7, v0, v9

    .line 1624
    .end local v4    # "newcount":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "hasSpecial":Z
    .end local v9    # "offset":I
    add-int/lit8 v2, v2, 0x1

    move v0, v8

    goto/16 :goto_0

    .line 1680
    .end local v2    # "i":I
    .end local v3    # "list_size":I
    .end local v8    # "offset":I
    .restart local v0    # "offset":I
    :cond_d
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v0, 0x1

    .local v3, "offset":I
    aput-char v4, v2, v0

    .line 1681
    .end local v0    # "offset":I
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1682
    return-void
.end method

.method public write(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 1738
    if-eqz p1, :cond_0

    .line 1739
    const-string v0, "true"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1741
    :cond_0
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 1743
    :goto_0
    return-void
.end method

.method public write([CII)V
    .locals 4
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 267
    if-ltz p2, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 273
    if-nez p3, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    .line 278
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 280
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    .line 284
    .local v1, "rest":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 287
    sub-int/2addr p3, v1

    .line 288
    add-int/2addr p2, v1

    .line 289
    .end local v1    # "rest":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-gt p3, v1, :cond_1

    .line 290
    move v0, p3

    .line 293
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 296
    return-void

    .line 272
    .end local v0    # "newcount":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public writeByteArray([B)V
    .locals 18
    .param p1, "bytes"    # [B

    move-object/from16 v0, p0

    .line 556
    move-object/from16 v1, p1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeHex([B)V

    .line 558
    return-void

    .line 561
    :cond_0
    array-length v2, v1

    .line 562
    .local v2, "bytesLen":I
    iget-boolean v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x27

    goto :goto_0

    :cond_1
    const/16 v3, 0x22

    .line 563
    .local v3, "quote":C
    :goto_0
    if-nez v2, :cond_3

    .line 564
    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v4, :cond_2

    const-string v4, "\'\'"

    goto :goto_1

    :cond_2
    const-string v4, "\"\""

    .line 565
    .local v4, "emptyString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 566
    return-void

    .line 569
    .end local v4    # "emptyString":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    .line 572
    .local v4, "CA":[C
    div-int/lit8 v5, v2, 0x3

    mul-int/lit8 v5, v5, 0x3

    .line 573
    .local v5, "eLen":I
    add-int/lit8 v6, v2, -0x1

    div-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    shl-int/2addr v6, v7

    .line 575
    .local v6, "charsLen":I
    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 576
    .local v8, "offset":I
    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v6

    add-int/2addr v9, v7

    .line 577
    .local v9, "newcount":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v10, v10

    const/4 v11, 0x0

    const/16 v12, 0x3d

    if-le v9, v10, :cond_9

    .line 578
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v10, :cond_8

    .line 579
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 581
    move v10, v11

    .local v10, "s":I
    :goto_2
    if-ge v10, v5, :cond_4

    .line 583
    add-int/lit8 v13, v10, 0x1

    .local v13, "s":I
    aget-byte v10, v1, v10

    .end local v10    # "s":I
    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v14, v13, 0x1

    .local v14, "s":I
    aget-byte v13, v1, v13

    .end local v13    # "s":I
    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v10, v13

    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "s":I
    aget-byte v14, v1, v14

    .end local v14    # "s":I
    and-int/lit16 v14, v14, 0xff

    or-int/2addr v10, v14

    .line 586
    .local v10, "i":I
    ushr-int/lit8 v14, v10, 0x12

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v4, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 587
    ushr-int/lit8 v14, v10, 0xc

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v4, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 588
    ushr-int/lit8 v14, v10, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v14, v4, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 589
    and-int/lit8 v14, v10, 0x3f

    aget-char v14, v4, v14

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 590
    .end local v10    # "i":I
    nop

    .line 581
    move v10, v13

    goto :goto_2

    .line 593
    .end local v13    # "s":I
    :cond_4
    sub-int v10, v2, v5

    .line 594
    .local v10, "left":I
    if-lez v10, :cond_7

    .line 596
    aget-byte v13, v1, v5

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0xa

    if-ne v10, v7, :cond_5

    add-int/lit8 v11, v2, -0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v7

    nop

    :cond_5
    or-int/2addr v11, v13

    .line 599
    .local v11, "i":I
    shr-int/lit8 v13, v11, 0xc

    aget-char v13, v4, v13

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 600
    ushr-int/lit8 v13, v11, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-char v13, v4, v13

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 601
    if-ne v10, v7, :cond_6

    and-int/lit8 v7, v11, 0x3f

    aget-char v7, v4, v7

    goto :goto_3

    :cond_6
    move v7, v12

    :goto_3
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 602
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 605
    .end local v11    # "i":I
    :cond_7
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 606
    return-void

    .line 608
    .end local v10    # "left":I
    :cond_8
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 610
    :cond_9
    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 611
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v8, 0x1

    .local v13, "offset":I
    aput-char v3, v10, v8

    .line 614
    .end local v8    # "offset":I
    const/4 v8, 0x0

    .local v8, "s":I
    move v10, v8

    move v8, v13

    .local v8, "d":I
    .local v10, "s":I
    :goto_4
    if-ge v10, v5, :cond_a

    .line 616
    add-int/lit8 v14, v10, 0x1

    .restart local v14    # "s":I
    aget-byte v10, v1, v10

    .end local v10    # "s":I
    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/lit8 v15, v14, 0x1

    .local v15, "s":I
    aget-byte v14, v1, v14

    .end local v14    # "s":I
    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v10, v14

    add-int/lit8 v14, v15, 0x1

    .restart local v14    # "s":I
    aget-byte v15, v1, v15

    .end local v15    # "s":I
    and-int/lit16 v15, v15, 0xff

    or-int/2addr v10, v15

    .line 619
    .local v10, "i":I
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v8, 0x1

    .local v16, "d":I
    ushr-int/lit8 v17, v10, 0x12

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v15, v8

    .line 620
    .end local v8    # "d":I
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v16, 0x1

    .local v15, "d":I
    ushr-int/lit8 v17, v10, 0xc

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v8, v16

    .line 621
    .end local v16    # "d":I
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v15, 0x1

    .restart local v16    # "d":I
    ushr-int/lit8 v17, v10, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v8, v15

    .line 622
    .end local v15    # "d":I
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "d":I
    and-int/lit8 v17, v10, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v8, v16

    .line 623
    .end local v10    # "i":I
    .end local v16    # "d":I
    nop

    .line 614
    move v10, v14

    move v8, v15

    goto :goto_4

    .line 626
    .end local v14    # "s":I
    .end local v15    # "d":I
    :cond_a
    sub-int v8, v2, v5

    .line 627
    .local v8, "left":I
    if-lez v8, :cond_d

    .line 629
    aget-byte v10, v1, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0xa

    if-ne v8, v7, :cond_b

    add-int/lit8 v11, v2, -0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v7

    nop

    :cond_b
    or-int/2addr v10, v11

    .line 632
    .restart local v10    # "i":I
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v9, -0x5

    shr-int/lit8 v15, v10, 0xc

    aget-char v15, v4, v15

    aput-char v15, v11, v14

    .line 633
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v9, -0x4

    ushr-int/lit8 v15, v10, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-char v15, v4, v15

    aput-char v15, v11, v14

    .line 634
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v9, -0x3

    if-ne v8, v7, :cond_c

    and-int/lit8 v7, v10, 0x3f

    aget-char v7, v4, v7

    goto :goto_5

    :cond_c
    move v7, v12

    :goto_5
    aput-char v7, v11, v14

    .line 635
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v9, -0x2

    aput-char v12, v7, v11

    .line 637
    .end local v10    # "i":I
    :cond_d
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v9, -0x1

    aput-char v3, v7, v10

    .line 638
    return-void
.end method

.method public writeDouble(DZ)V
    .locals 5
    .param p1, "value"    # D
    .param p3, "checkWriteClassName"    # Z

    .line 691
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    .line 692
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 697
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0x18

    .line 698
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    const/16 v2, 0x44

    if-le v0, v1, :cond_3

    .line 699
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 700
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 705
    if-eqz p3, :cond_2

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 708
    :cond_2
    return-void

    .line 712
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, p2, v1, v3}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D[CI)I

    move-result v1

    .line 713
    .local v1, "len":I
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 715
    if-eqz p3, :cond_4

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 716
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 718
    :cond_4
    return-void

    .line 693
    .end local v0    # "newcount":I
    .end local v1    # "len":I
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 694
    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 721
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p1, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 723
    return-void

    .line 726
    :cond_0
    const/4 v0, 0x0

    .line 727
    .local v0, "strVal":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v1, :cond_1

    .line 728
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 729
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v1, :cond_2

    .line 730
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 733
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 734
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x27

    goto :goto_1

    :cond_3
    const/16 v1, 0x22

    .line 735
    .local v1, "quote":C
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 736
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 738
    .end local v1    # "quote":C
    goto :goto_2

    .line 739
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 741
    :goto_2
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 2367
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "checkSpecial"    # Z

    .line 2370
    if-nez p1, :cond_0

    .line 2371
    const-string v0, "null:"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2372
    return-void

    .line 2375
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    const/16 v1, 0x3a

    if-eqz v0, :cond_2

    .line 2376
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_1

    .line 2377
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2378
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4

    .line 2380
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_4

    .line 2383
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_3

    .line 2384
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_4

    .line 2386
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2387
    .local v0, "hashSpecial":Z
    :goto_0
    move v4, v2

    .local v4, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 2388
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2389
    .local v5, "ch":C
    const/16 v6, 0x40

    if-ge v5, v6, :cond_5

    iget-wide v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    :cond_5
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7

    :cond_6
    move v6, v3

    goto :goto_2

    :cond_7
    move v6, v2

    .line 2390
    .local v6, "special":Z
    :goto_2
    if-eqz v6, :cond_8

    .line 2391
    const/4 v0, 0x1

    .line 2392
    goto :goto_3

    .line 2387
    .end local v5    # "ch":C
    .end local v6    # "special":Z
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2395
    .end local v4    # "i":I
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 2396
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_4

    .line 2398
    :cond_a
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2403
    .end local v0    # "hashSpecial":Z
    :goto_4
    return-void
.end method

.method public writeFieldNameDirect(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 1599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1600
    .local v0, "len":I
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    .line 1602
    .local v1, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 1603
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1606
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v2, v2, 0x1

    .line 1608
    .local v2, "start":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v5, 0x22

    aput-char v5, v3, v4

    .line 1609
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p1, v3, v0, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1611
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1612
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    aput-char v5, v3, v4

    .line 1613
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v4

    .line 1614
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;C)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # C

    .line 1686
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1687
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1688
    if-nez p3, :cond_0

    .line 1689
    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1691
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1693
    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;D)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 1833
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1834
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1835
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDouble(DZ)V

    .line 1836
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;F)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 1827
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1828
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1829
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFloat(FZ)V

    .line 1830
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;I)V
    .locals 8
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 1746
    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1753
    :cond_0
    if-gez p3, :cond_1

    neg-int v0, p3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 1755
    .local v0, "intSize":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1756
    .local v1, "nameLen":I
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 1757
    .local v2, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 1758
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_2

    .line 1759
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1760
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1762
    return-void

    .line 1764
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1767
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1768
    .local v3, "start":I
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1770
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v4, v3

    .line 1772
    add-int v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    .line 1774
    .local v4, "nameEnd":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1776
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p2, v5, v1, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1778
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1779
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x2

    const/16 v7, 0x3a

    aput-char v7, v5, v6

    .line 1781
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 1782
    return-void

    .line 1747
    .end local v0    # "intSize":I
    .end local v1    # "nameLen":I
    .end local v2    # "newcount":I
    .end local v3    # "start":I
    .end local v4    # "nameEnd":I
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1748
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 1750
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;J)V
    .locals 8
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 1785
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p3, v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 1787
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1795
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    neg-long v0, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v0

    .line 1797
    .local v0, "intSize":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 1798
    .local v1, "nameLen":I
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    .line 1799
    .local v2, "newcount":I
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 1800
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_2

    .line 1801
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1802
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1804
    return-void

    .line 1806
    :cond_2
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1809
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1810
    .local v3, "start":I
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1812
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v4, v3

    .line 1814
    add-int v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    .line 1816
    .local v4, "nameEnd":I
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v3, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1818
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p2, v5, v1, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1820
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x1

    iget-char v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v7, v5, v6

    .line 1821
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v4, 0x2

    const/16 v7, 0x3a

    aput-char v7, v5, v6

    .line 1823
    iget v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p3, p4, v5, v6}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 1824
    return-void

    .line 1789
    .end local v0    # "intSize":I
    .end local v1    # "nameLen":I
    .end local v2    # "newcount":I
    .end local v3    # "start":I
    .end local v4    # "nameEnd":I
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1790
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 1792
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 2134
    .local p3, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez p3, :cond_0

    .line 2135
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2136
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2137
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 2138
    return-void

    .line 2141
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingName:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-nez v0, :cond_1

    .line 2142
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2143
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumUsingToString:Z

    if-eqz v0, :cond_2

    .line 2144
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeEnumFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2146
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 2148
    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1839
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-eqz v0, :cond_3

    .line 1840
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_1

    .line 1841
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1842
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1843
    if-nez p3, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1846
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1849
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1850
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1851
    const/16 v0, 0x3a

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1852
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto :goto_0

    .line 1854
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1858
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1859
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1860
    if-nez p3, :cond_4

    .line 1861
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 1863
    :cond_4
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1866
    :goto_0
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 2
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/math/BigDecimal;

    .line 2159
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2160
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 2161
    if-nez p3, :cond_0

    .line 2162
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1

    .line 2164
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 2165
    .local v0, "scale":I
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 2166
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2167
    :cond_1
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2165
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 2170
    .end local v0    # "scale":I
    :goto_1
    return-void
.end method

.method public writeFieldValue(CLjava/lang/String;Z)V
    .locals 10
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 1696
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v0, :cond_0

    .line 1697
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1698
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1700
    return-void

    .line 1702
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x4

    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1704
    .local v2, "intSize":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1705
    .local v3, "nameLen":I
    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    .line 1706
    .local v4, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v4, v1, :cond_3

    .line 1707
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v1, :cond_2

    .line 1708
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1709
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 1710
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1711
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 1712
    return-void

    .line 1714
    :cond_2
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1717
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1718
    .local v1, "start":I
    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1720
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char p1, v5, v1

    .line 1722
    add-int v5, v1, v3

    add-int/lit8 v5, v5, 0x1

    .line 1724
    .local v5, "nameEnd":I
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x1

    iget-char v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v8, v6, v7

    .line 1726
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v1, 0x2

    const/4 v8, 0x0

    invoke-virtual {p2, v8, v3, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1728
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x1

    iget-char v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->keySeperator:C

    aput-char v9, v6, v7

    .line 1730
    if-eqz p3, :cond_4

    .line 1731
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_TRUE:[C

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v5, 0x2

    invoke-static {v6, v8, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 1733
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->VALUE_FALSE:[C

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v5, 0x2

    const/4 v9, 0x6

    invoke-static {v0, v8, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1735
    :goto_1
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuote(CLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 2092
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2095
    .local v0, "nameLen":I
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2097
    .local v1, "newcount":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 2098
    .local v2, "valueLen":I
    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    .line 2100
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-le v1, v3, :cond_1

    .line 2101
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 2102
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2103
    invoke-virtual {p0, p2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2104
    invoke-virtual {p0, p3, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2105
    return-void

    .line 2107
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2110
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v3, v6

    .line 2112
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v3, 0x2

    .line 2113
    .local v3, "nameStart":I
    add-int v6, v3, v0

    .line 2115
    .local v6, "nameEnd":I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x22

    aput-char v9, v7, v8

    .line 2116
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p2, v5, v0, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 2118
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2120
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v9, v7, v6

    .line 2122
    add-int/lit8 v7, v6, 0x1

    .line 2123
    .local v7, "index":I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v7, 0x1

    .local v10, "index":I
    aput-char v4, v8, v7

    .line 2124
    .end local v7    # "index":I
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v10, 0x1

    .restart local v7    # "index":I
    aput-char v9, v4, v10

    .line 2126
    .end local v10    # "index":I
    move v4, v7

    .line 2127
    .local v4, "valueStart":I
    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {p3, v5, v2, v8, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 2128
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x1

    aput-char v9, v5, v8

    .line 2129
    return-void
.end method

.method public writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V
    .locals 29
    .param p1, "seperator"    # C
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1869
    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1872
    .local v3, "nameLen":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1874
    .local v4, "newcount":I
    if-nez v2, :cond_0

    .line 1875
    const/4 v5, 0x4

    .line 1876
    .local v5, "valueLen":I
    add-int/lit8 v6, v3, 0x8

    add-int/2addr v4, v6

    goto :goto_0

    .line 1878
    .end local v5    # "valueLen":I
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1879
    .restart local v5    # "valueLen":I
    add-int v6, v3, v5

    add-int/lit8 v6, v6, 0x6

    add-int/2addr v4, v6

    .line 1882
    :goto_0
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v6, v6

    const/4 v7, 0x0

    if-le v4, v6, :cond_2

    .line 1883
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v6, :cond_1

    .line 1884
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1885
    const/16 v6, 0x3a

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1886
    invoke-virtual {v0, v2, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 1887
    return-void

    .line 1889
    :cond_1
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1892
    :cond_2
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char p1, v6, v8

    .line 1894
    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v6, v6, 0x2

    .line 1895
    .local v6, "nameStart":I
    add-int v8, v6, v3

    .line 1897
    .local v8, "nameEnd":I
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    const/16 v12, 0x22

    aput-char v12, v9, v10

    .line 1898
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v1, v7, v3, v9, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1900
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1902
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v12, v9, v8

    .line 1904
    add-int/lit8 v9, v8, 0x1

    .line 1905
    .local v9, "index":I
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v9, 0x1

    .local v13, "index":I
    const/16 v14, 0x3a

    aput-char v14, v10, v9

    .line 1907
    .end local v9    # "index":I
    const/16 v9, 0x75

    if-nez v2, :cond_3

    .line 1908
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v13, 0x1

    .local v10, "index":I
    const/16 v11, 0x6e

    aput-char v11, v7, v13

    .line 1909
    .end local v13    # "index":I
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v10, 0x1

    .local v11, "index":I
    aput-char v9, v7, v10

    .line 1910
    .end local v10    # "index":I
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, v11, 0x1

    .restart local v9    # "index":I
    const/16 v10, 0x6c

    aput-char v10, v7, v11

    .line 1911
    .end local v11    # "index":I
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v9, 0x1

    .restart local v10    # "index":I
    const/16 v11, 0x6c

    aput-char v11, v7, v9

    .line 1912
    .end local v9    # "index":I
    return-void

    .line 1915
    .end local v10    # "index":I
    .restart local v13    # "index":I
    :cond_3
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v13, 0x1

    .local v14, "index":I
    aput-char v12, v10, v13

    .line 1917
    .end local v13    # "index":I
    move v10, v14

    .line 1918
    .local v10, "valueStart":I
    add-int v13, v10, v5

    .line 1920
    .local v13, "valueEnd":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v2, v7, v5, v12, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1922
    const/4 v12, 0x0

    .line 1923
    .local v12, "specialCount":I
    const/4 v15, -0x1

    .line 1924
    .local v15, "lastSpecialIndex":I
    const/16 v16, -0x1

    .line 1925
    .local v16, "firstSpecialIndex":I
    const/16 v17, 0x0

    .line 1927
    .local v17, "lastSpecial":C
    move/from16 v9, v16

    move/from16 v7, v17

    move/from16 v16, v15

    move v15, v4

    move v4, v10

    .end local v17    # "lastSpecial":C
    .local v4, "i":I
    .local v7, "lastSpecial":C
    .local v9, "firstSpecialIndex":I
    .local v15, "newcount":I
    .local v16, "lastSpecialIndex":I
    :goto_1
    if-ge v4, v13, :cond_10

    .line 1928
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v11, v11, v4

    .line 1930
    .local v11, "ch":C
    const/16 v1, 0x5d

    if-lt v11, v1, :cond_7

    .line 1931
    const/16 v1, 0x7f

    if-lt v11, v1, :cond_6

    const/16 v1, 0x2028

    if-eq v11, v1, :cond_4

    const/16 v1, 0x2029

    if-eq v11, v1, :cond_4

    const/16 v1, 0xa0

    if-ge v11, v1, :cond_6

    .line 1935
    :cond_4
    const/4 v1, -0x1

    if-ne v9, v1, :cond_5

    .line 1936
    move v9, v4

    .line 1939
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 1940
    move v1, v4

    .line 1941
    .end local v16    # "lastSpecialIndex":I
    .local v1, "lastSpecialIndex":I
    move v7, v11

    .line 1942
    add-int/lit8 v15, v15, 0x4

    .line 1927
    move/from16 v16, v1

    .end local v1    # "lastSpecialIndex":I
    .end local v5    # "valueLen":I
    .end local v6    # "nameStart":I
    .end local v11    # "ch":C
    .restart local v16    # "lastSpecialIndex":I
    .local v23, "valueLen":I
    .local v24, "nameStart":I
    :cond_6
    move/from16 v23, v5

    move/from16 v24, v6

    goto :goto_6

    .line 1947
    .end local v23    # "valueLen":I
    .end local v24    # "nameStart":I
    .restart local v5    # "valueLen":I
    .restart local v6    # "nameStart":I
    .restart local v11    # "ch":C
    :cond_7
    const/16 v1, 0x40

    if-ge v11, v1, :cond_8

    move/from16 v23, v5

    move/from16 v24, v6

    iget-wide v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    .end local v5    # "valueLen":I
    .end local v6    # "nameStart":I
    .restart local v23    # "valueLen":I
    .restart local v24    # "nameStart":I
    const-wide/16 v21, 0x1

    shl-long v21, v21, v11

    and-long v5, v5, v21

    const-wide/16 v21, 0x0

    cmp-long v1, v5, v21

    if-nez v1, :cond_9

    goto :goto_2

    .end local v23    # "valueLen":I
    .end local v24    # "nameStart":I
    .restart local v5    # "valueLen":I
    .restart local v6    # "nameStart":I
    :cond_8
    move/from16 v23, v5

    move/from16 v24, v6

    .end local v5    # "valueLen":I
    .end local v6    # "nameStart":I
    .restart local v23    # "valueLen":I
    .restart local v24    # "nameStart":I
    :goto_2
    const/16 v1, 0x5c

    if-ne v11, v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    .line 1948
    .local v1, "special":Z
    :goto_3
    if-eqz v1, :cond_f

    .line 1949
    add-int/lit8 v12, v12, 0x1

    .line 1950
    move v5, v4

    .line 1951
    .end local v16    # "lastSpecialIndex":I
    .local v5, "lastSpecialIndex":I
    move v6, v11

    .line 1953
    .end local v7    # "lastSpecial":C
    .local v6, "lastSpecial":C
    const/16 v7, 0x28

    if-eq v11, v7, :cond_c

    const/16 v7, 0x29

    if-eq v11, v7, :cond_c

    const/16 v7, 0x3c

    if-eq v11, v7, :cond_c

    const/16 v7, 0x3e

    if-eq v11, v7, :cond_c

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v7, v7

    if-ge v11, v7, :cond_b

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v7, v7, v11

    move/from16 v25, v1

    const/4 v1, 0x4

    if-ne v7, v1, :cond_d

    .end local v1    # "special":Z
    .local v25, "special":Z
    goto :goto_4

    .line 1963
    .end local v25    # "special":Z
    .restart local v1    # "special":Z
    :cond_b
    move/from16 v25, v1

    .end local v1    # "special":Z
    .restart local v25    # "special":Z
    goto :goto_5

    .line 1960
    .end local v25    # "special":Z
    .restart local v1    # "special":Z
    :cond_c
    move/from16 v25, v1

    .end local v1    # "special":Z
    .restart local v25    # "special":Z
    :goto_4
    add-int/lit8 v15, v15, 0x4

    .line 1963
    :cond_d
    :goto_5
    const/4 v1, -0x1

    if-ne v9, v1, :cond_e

    .line 1964
    move v1, v4

    .line 1927
    .end local v9    # "firstSpecialIndex":I
    .end local v11    # "ch":C
    .end local v25    # "special":Z
    .local v1, "firstSpecialIndex":I
    move v9, v1

    .end local v1    # "firstSpecialIndex":I
    .end local v5    # "lastSpecialIndex":I
    .end local v6    # "lastSpecial":C
    .restart local v7    # "lastSpecial":C
    .restart local v9    # "firstSpecialIndex":I
    .restart local v16    # "lastSpecialIndex":I
    :cond_e
    move/from16 v16, v5

    move v7, v6

    :cond_f
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, v23

    move/from16 v6, v24

    move-object/from16 v1, p2

    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1969
    .end local v4    # "i":I
    .end local v23    # "valueLen":I
    .end local v24    # "nameStart":I
    .local v5, "valueLen":I
    .local v6, "nameStart":I
    :cond_10
    move/from16 v23, v5

    move/from16 v24, v6

    .end local v5    # "valueLen":I
    .end local v6    # "nameStart":I
    .restart local v23    # "valueLen":I
    .restart local v24    # "nameStart":I
    if-lez v12, :cond_22

    .line 1970
    add-int v1, v15, v12

    .line 1971
    .end local v15    # "newcount":I
    .local v1, "newcount":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-le v1, v4, :cond_11

    .line 1972
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1974
    :cond_11
    iput v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1976
    const/4 v4, 0x1

    if-ne v12, v4, :cond_17

    .line 1977
    const/16 v5, 0x2028

    if-ne v7, v5, :cond_12

    .line 1978
    add-int/lit8 v5, v16, 0x1

    .line 1979
    .local v5, "srcPos":I
    add-int/lit8 v6, v16, 0x6

    .line 1980
    .local v6, "destPos":I
    sub-int v11, v13, v16

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    .line 1981
    .local v11, "LengthOfCopy":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move/from16 v26, v1

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .end local v1    # "newcount":I
    .local v26, "newcount":I
    invoke-static {v4, v5, v1, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1982
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v4, 0x5c

    aput-char v4, v1, v16

    .line 1983
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    const/16 v4, 0x75

    aput-char v4, v1, v16

    .line 1984
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v4, 0x1

    add-int/lit8 v16, v16, 0x1

    const/16 v15, 0x32

    aput-char v15, v1, v16

    .line 1985
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x30

    aput-char v17, v1, v16

    .line 1986
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    aput-char v15, v1, v16

    .line 1987
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    const/16 v4, 0x38

    aput-char v4, v1, v16

    .line 1988
    .end local v5    # "srcPos":I
    .end local v6    # "destPos":I
    .end local v11    # "LengthOfCopy":I
    nop

    .line 2088
    .end local v3    # "nameLen":I
    .local v27, "nameLen":I
    :goto_7
    move/from16 v27, v3

    goto/16 :goto_10

    .line 1988
    .end local v26    # "newcount":I
    .end local v27    # "nameLen":I
    .restart local v1    # "newcount":I
    .restart local v3    # "nameLen":I
    :cond_12
    move/from16 v26, v1

    .end local v1    # "newcount":I
    .restart local v26    # "newcount":I
    const/16 v1, 0x2029

    if-ne v7, v1, :cond_13

    .line 1989
    add-int/lit8 v1, v16, 0x1

    .line 1990
    .local v1, "srcPos":I
    add-int/lit8 v4, v16, 0x6

    .line 1991
    .local v4, "destPos":I
    sub-int v5, v13, v16

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 1992
    .local v5, "LengthOfCopy":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v1, v11, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1993
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v11, 0x5c

    aput-char v11, v6, v16

    .line 1994
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    const/16 v11, 0x75

    aput-char v11, v6, v16

    .line 1995
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v11, 0x1

    add-int/lit8 v16, v16, 0x1

    const/16 v15, 0x32

    aput-char v15, v6, v16

    .line 1996
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x30

    aput-char v17, v6, v16

    .line 1997
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    aput-char v15, v6, v16

    .line 1998
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    const/16 v11, 0x39

    aput-char v11, v6, v16

    .line 1999
    .end local v1    # "srcPos":I
    .end local v4    # "destPos":I
    .end local v5    # "LengthOfCopy":I
    goto :goto_7

    :cond_13
    const/16 v1, 0x28

    if-eq v7, v1, :cond_16

    const/16 v1, 0x29

    if-eq v7, v1, :cond_16

    const/16 v1, 0x3c

    if-eq v7, v1, :cond_16

    const/16 v1, 0x3e

    if-ne v7, v1, :cond_14

    .line 2000
    move/from16 v27, v3

    goto/16 :goto_9

    .line 2014
    :cond_14
    move v1, v7

    .line 2015
    .local v1, "ch":C
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v4, v4

    if-ge v1, v4, :cond_15

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_15

    .line 2017
    add-int/lit8 v4, v16, 0x1

    .line 2018
    .local v4, "srcPos":I
    add-int/lit8 v5, v16, 0x6

    .line 2019
    .local v5, "destPos":I
    sub-int v6, v13, v16

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    .line 2020
    .local v6, "LengthOfCopy":I
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move/from16 v27, v3

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .end local v3    # "nameLen":I
    .restart local v27    # "nameLen":I
    invoke-static {v11, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2022
    move/from16 v3, v16

    .line 2023
    .local v3, "bufIndex":I
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v3, 0x1

    .local v15, "bufIndex":I
    const/16 v17, 0x5c

    aput-char v17, v11, v3

    .line 2024
    .end local v3    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v15, 0x1

    .local v11, "bufIndex":I
    const/16 v17, 0x75

    aput-char v17, v3, v15

    .line 2025
    .end local v15    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v11, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v1, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v3, v11

    .line 2026
    .end local v11    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v15, 0x1

    .restart local v11    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v1, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v3, v15

    .line 2027
    .end local v15    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v11, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v1, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v3, v11

    .line 2028
    .end local v11    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v15, 0x1

    .restart local v11    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v18, v1, 0xf

    aget-char v17, v17, v18

    aput-char v17, v3, v15

    .line 2029
    .end local v4    # "srcPos":I
    .end local v5    # "destPos":I
    .end local v6    # "LengthOfCopy":I
    .end local v11    # "bufIndex":I
    .end local v15    # "bufIndex":I
    goto :goto_8

    .line 2030
    .end local v27    # "nameLen":I
    .local v3, "nameLen":I
    :cond_15
    move/from16 v27, v3

    .end local v3    # "nameLen":I
    .restart local v27    # "nameLen":I
    add-int/lit8 v3, v16, 0x1

    .line 2031
    .local v3, "srcPos":I
    add-int/lit8 v4, v16, 0x2

    .line 2032
    .local v4, "destPos":I
    sub-int v5, v13, v16

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 2033
    .local v5, "LengthOfCopy":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v3, v11, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2034
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v11, 0x5c

    aput-char v11, v6, v16

    .line 2035
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v16, 0x1

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v1

    aput-char v11, v6, v16

    .line 2037
    .end local v1    # "ch":C
    .end local v3    # "srcPos":I
    .end local v4    # "destPos":I
    .end local v5    # "LengthOfCopy":I
    :goto_8
    goto/16 :goto_10

    .line 2000
    .end local v27    # "nameLen":I
    .local v3, "nameLen":I
    :cond_16
    move/from16 v27, v3

    .end local v3    # "nameLen":I
    .restart local v27    # "nameLen":I
    :goto_9
    move v1, v7

    .line 2001
    .restart local v1    # "ch":C
    add-int/lit8 v3, v16, 0x1

    .line 2002
    .local v3, "srcPos":I
    add-int/lit8 v4, v16, 0x6

    .line 2003
    .restart local v4    # "destPos":I
    sub-int v5, v13, v16

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 2004
    .restart local v5    # "LengthOfCopy":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v6, v3, v11, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2006
    move/from16 v6, v16

    .line 2007
    .local v6, "bufIndex":I
    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v6, 0x1

    .restart local v15    # "bufIndex":I
    const/16 v17, 0x5c

    aput-char v17, v11, v6

    .line 2008
    .end local v6    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v15, 0x1

    .restart local v11    # "bufIndex":I
    const/16 v17, 0x75

    aput-char v17, v6, v15

    .line 2009
    .end local v15    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v11, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v1, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v6, v11

    .line 2010
    .end local v11    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v15, 0x1

    .restart local v11    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v1, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v6, v15

    .line 2011
    .end local v15    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v11, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v1, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v6, v11

    .line 2012
    .end local v11    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v15, 0x1

    .restart local v11    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v18, v1, 0xf

    aget-char v17, v17, v18

    aput-char v17, v6, v15

    .line 2013
    .end local v1    # "ch":C
    .end local v3    # "srcPos":I
    .end local v4    # "destPos":I
    .end local v5    # "LengthOfCopy":I
    .end local v11    # "bufIndex":I
    .end local v15    # "bufIndex":I
    goto/16 :goto_10

    .line 2038
    .end local v26    # "newcount":I
    .end local v27    # "nameLen":I
    .local v1, "newcount":I
    .local v3, "nameLen":I
    :cond_17
    move/from16 v26, v1

    move/from16 v27, v3

    .end local v1    # "newcount":I
    .end local v3    # "nameLen":I
    .restart local v26    # "newcount":I
    .restart local v27    # "nameLen":I
    const/4 v1, 0x1

    if-le v12, v1, :cond_23

    .line 2039
    sub-int v1, v9, v10

    .line 2040
    .local v1, "textIndex":I
    move v3, v9

    .line 2041
    .local v3, "bufIndex":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "bufIndex":I
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_23

    .line 2042
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2044
    .local v5, "ch":C
    iget-boolean v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v6, :cond_1a

    const/16 v6, 0x28

    if-eq v5, v6, :cond_18

    const/16 v11, 0x29

    if-eq v5, v11, :cond_19

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_19

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_1b

    goto :goto_b

    .line 2048
    :cond_18
    const/16 v11, 0x29

    :cond_19
    :goto_b
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v4, 0x1

    .restart local v15    # "bufIndex":I
    const/16 v17, 0x5c

    aput-char v17, v6, v4

    .line 2049
    .end local v4    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v15, 0x1

    .restart local v6    # "bufIndex":I
    const/16 v17, 0x75

    aput-char v17, v4, v15

    .line 2050
    .end local v15    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v6, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v5, 0xc

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v4, v6

    .line 2051
    .end local v6    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v15, 0x1

    .restart local v6    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v5, 0x8

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v4, v15

    .line 2052
    .end local v15    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v6, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v18, v5, 0x4

    and-int/lit8 v18, v18, 0xf

    aget-char v17, v17, v18

    aput-char v17, v4, v6

    .line 2053
    .end local v6    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v15, 0x1

    .restart local v6    # "bufIndex":I
    sget-object v17, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v18, v5, 0xf

    aget-char v17, v17, v18

    aput-char v17, v4, v15

    .line 2054
    .end local v15    # "bufIndex":I
    add-int/lit8 v13, v13, 0x5

    .line 2041
    move v4, v6

    .end local v5    # "ch":C
    .end local v6    # "bufIndex":I
    .restart local v4    # "bufIndex":I
    :goto_c
    const/16 v17, 0x5c

    const/16 v18, 0x75

    goto/16 :goto_f

    .line 2055
    .restart local v5    # "ch":C
    :cond_1a
    const/16 v11, 0x29

    :cond_1b
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v6, v6

    if-ge v5, v6, :cond_1c

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v6, v6, v5

    if-nez v6, :cond_1d

    :cond_1c
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_1f

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2057
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2058
    :cond_1d
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v4, 0x1

    .restart local v15    # "bufIndex":I
    const/16 v17, 0x5c

    aput-char v17, v6, v4

    .line 2059
    .end local v4    # "bufIndex":I
    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v4, v4, v5

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1e

    .line 2060
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v15, 0x1

    .local v17, "bufIndex":I
    const/16 v18, 0x75

    aput-char v18, v4, v15

    .line 2061
    .end local v15    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v17, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v5, 0xc

    and-int/lit8 v20, v20, 0xf

    aget-char v18, v18, v20

    aput-char v18, v4, v17

    .line 2062
    .end local v17    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v15, 0x1

    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v5, 0x8

    and-int/lit8 v20, v20, 0xf

    aget-char v18, v18, v20

    aput-char v18, v4, v15

    .line 2063
    .end local v15    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v17, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v5, 0x4

    and-int/lit8 v20, v20, 0xf

    aget-char v18, v18, v20

    aput-char v18, v4, v17

    .line 2064
    .end local v17    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v15, 0x1

    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v20, v5, 0xf

    aget-char v18, v18, v20

    aput-char v18, v4, v15

    .line 2065
    .end local v15    # "bufIndex":I
    add-int/lit8 v13, v13, 0x5

    .line 2041
    .end local v5    # "ch":C
    .end local v17    # "bufIndex":I
    .restart local v4    # "bufIndex":I
    :goto_d
    move/from16 v4, v17

    goto :goto_c

    .line 2067
    .end local v4    # "bufIndex":I
    .restart local v5    # "ch":C
    .restart local v15    # "bufIndex":I
    :cond_1e
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v17, v15, 0x1

    .restart local v17    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v18, v18, v5

    aput-char v18, v4, v15

    .line 2068
    .end local v15    # "bufIndex":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 2071
    .end local v17    # "bufIndex":I
    .restart local v4    # "bufIndex":I
    :cond_1f
    const/4 v6, 0x4

    const/16 v6, 0x2028

    if-eq v5, v6, :cond_21

    const/16 v6, 0x2029

    if-ne v5, v6, :cond_20

    goto :goto_e

    .line 2080
    :cond_20
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v4, 0x1

    .restart local v15    # "bufIndex":I
    aput-char v5, v6, v4

    .line 2041
    .end local v4    # "bufIndex":I
    .end local v5    # "ch":C
    move v4, v15

    goto/16 :goto_c

    .line 2072
    .end local v15    # "bufIndex":I
    .restart local v4    # "bufIndex":I
    .restart local v5    # "ch":C
    :cond_21
    :goto_e
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v4, 0x1

    .restart local v15    # "bufIndex":I
    const/16 v17, 0x5c

    aput-char v17, v6, v4

    .line 2073
    .end local v4    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v15, 0x1

    .restart local v6    # "bufIndex":I
    const/16 v18, 0x75

    aput-char v18, v4, v15

    .line 2074
    .end local v15    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v6, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v5, 0xc

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v4, v6

    .line 2075
    .end local v6    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v15, 0x1

    .restart local v6    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v5, 0x8

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v4, v15

    .line 2076
    .end local v15    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v6, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v5, 0x4

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v4, v6

    .line 2077
    .end local v6    # "bufIndex":I
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v15, 0x1

    .restart local v6    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v20, v5, 0xf

    aget-char v19, v19, v20

    aput-char v19, v4, v15

    .line 2078
    .end local v15    # "bufIndex":I
    add-int/lit8 v13, v13, 0x5

    .line 2041
    move v4, v6

    .end local v5    # "ch":C
    .end local v6    # "bufIndex":I
    .restart local v4    # "bufIndex":I
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 2088
    .end local v1    # "textIndex":I
    .end local v4    # "bufIndex":I
    .end local v26    # "newcount":I
    .end local v27    # "nameLen":I
    .local v3, "nameLen":I
    .local v15, "newcount":I
    :cond_22
    move/from16 v27, v3

    move/from16 v26, v15

    .end local v3    # "nameLen":I
    .end local v15    # "newcount":I
    .restart local v26    # "newcount":I
    .restart local v27    # "nameLen":I
    :cond_23
    :goto_10
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/16 v4, 0x22

    aput-char v4, v1, v3

    .line 2089
    return-void
.end method

.method public writeFloat(FZ)V
    .locals 5
    .param p1, "value"    # F
    .param p2, "checkWriteClassName"    # Z

    .line 663
    cmpl-float v0, p1, p1

    if-nez v0, :cond_4

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_4

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 666
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, v0, 0xf

    .line 667
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    const/16 v2, 0x46

    if-le v0, v1, :cond_3

    .line 668
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 669
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 671
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "str":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    .line 674
    if-eqz p2, :cond_2

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 675
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 677
    :cond_2
    return-void

    .line 681
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-static {p1, v1, v3}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result v1

    .line 682
    .local v1, "len":I
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 684
    if-eqz p2, :cond_5

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 685
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .end local v0    # "newcount":I
    .end local v1    # "len":I
    goto :goto_2

    .line 664
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 688
    :cond_5
    :goto_2
    return-void
.end method

.method public writeHex([B)V
    .locals 13
    .param p1, "bytes"    # [B

    .line 641
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    .line 642
    .local v0, "newcount":I
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 643
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v3, 0x78

    aput-char v3, v1, v2

    .line 647
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v3, 0x27

    aput-char v3, v1, v2

    .line 649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 650
    aget-byte v2, p1, v1

    .line 652
    .local v2, "b":B
    and-int/lit16 v4, v2, 0xff

    .line 653
    .local v4, "a":I
    shr-int/lit8 v5, v4, 0x4

    .line 654
    .local v5, "b0":I
    and-int/lit8 v6, v4, 0xf

    .line 656
    .local v6, "b1":I
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v9, 0x37

    const/16 v10, 0x30

    const/16 v11, 0xa

    if-ge v5, v11, :cond_1

    move v12, v10

    goto :goto_1

    :cond_1
    move v12, v9

    :goto_1
    add-int/2addr v12, v5

    int-to-char v12, v12

    aput-char v12, v7, v8

    .line 657
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v12, v8, 0x1

    iput v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-ge v6, v11, :cond_2

    move v9, v10

    nop

    :cond_2
    add-int/2addr v9, v6

    int-to-char v9, v9

    aput-char v9, v7, v8

    .line 649
    .end local v2    # "b":B
    .end local v4    # "a":I
    .end local v5    # "b0":I
    .end local v6    # "b1":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v3, v1, v2

    .line 660
    return-void
.end method

.method public writeInt(I)V
    .locals 5
    .param p1, "i"    # I

    .line 531
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 532
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 533
    return-void

    .line 536
    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(I)I

    move-result v0

    .line 538
    .local v0, "size":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    .line 539
    .local v1, "newcount":I
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 540
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_2

    .line 541
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    .line 543
    :cond_2
    new-array v2, v0, [C

    .line 544
    .local v2, "chars":[C
    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 545
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p0, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 546
    return-void

    .line 550
    .end local v2    # "chars":[C
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 552
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 553
    return-void
.end method

.method public writeLong(J)V
    .locals 7
    .param p1, "i"    # J

    .line 752
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 753
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide v3, 0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gtz v0, :cond_0

    const-wide v3, -0x1fffffffffffffL

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 756
    .local v0, "needQuotationMark":Z
    :goto_0
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    .line 757
    if-eqz v0, :cond_2

    .line 758
    const-string v1, "\"-9223372036854775808\""

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 760
    :cond_2
    const-string v1, "-9223372036854775808"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 762
    :goto_1
    return-void

    .line 765
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_4

    neg-long v3, p1

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_2

    :cond_4
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/IOUtils;->stringSize(J)I

    move-result v3

    :goto_2
    move v2, v3

    .line 767
    .local v2, "size":I
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v3, v2

    .line 768
    .local v3, "newcount":I
    if-eqz v0, :cond_5

    add-int/lit8 v3, v3, 0x2

    .line 769
    :cond_5
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    const/16 v5, 0x22

    if-le v3, v4, :cond_8

    .line 770
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v4, :cond_6

    .line 771
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 773
    :cond_6
    new-array v4, v2, [C

    .line 774
    .local v4, "chars":[C
    invoke-static {p1, p2, v2, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 775
    if-eqz v0, :cond_7

    .line 776
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 777
    array-length v6, v4

    invoke-virtual {p0, v4, v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 778
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 780
    :cond_7
    array-length v5, v4

    invoke-virtual {p0, v4, v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    .line 782
    :goto_3
    return-void

    .line 786
    .end local v4    # "chars":[C
    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 787
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v5, v1, v4

    .line 788
    add-int/lit8 v1, v3, -0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v1, v4}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 789
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v4, v3, -0x1

    aput-char v5, v1, v4

    goto :goto_5

    .line 791
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {p1, p2, v3, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(JI[C)V

    .line 794
    :goto_5
    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 795
    return-void
.end method

.method public writeLongAndChar(JC)V
    .locals 0
    .param p1, "i"    # J
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 747
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 748
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 749
    return-void
.end method

.method public writeNull()V
    .locals 1

    .line 798
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public writeNull(II)V
    .locals 2
    .param p1, "beanFeatures"    # I
    .param p2, "feature"    # I

    .line 806
    and-int v0, p1, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 809
    return-void

    .line 811
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int v0, v0

    and-int/2addr v0, p1

    sget v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 814
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 815
    return-void

    .line 818
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_2

    .line 819
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_3

    .line 821
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 822
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_4

    .line 823
    const-string v0, "false"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    if-ne p2, v0, :cond_5

    .line 825
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 827
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 829
    :goto_0
    return-void
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 802
    iget v0, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(II)V

    .line 803
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 2182
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2183
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    .line 2185
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2187
    :goto_0
    return-void
.end method

.method public writeString(Ljava/lang/String;C)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    .line 2173
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2174
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 2177
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2179
    :goto_0
    return-void
.end method

.method public writeString([C)V
    .locals 2
    .param p1, "chars"    # [C

    .line 2190
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-eqz v0, :cond_0

    .line 2191
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote([C)V

    goto :goto_0

    .line 2193
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 2194
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    .line 2196
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method public writeStringWithDoubleQuote(Ljava/lang/String;C)V
    .locals 27
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "seperator"    # C

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 832
    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 834
    if-eqz v2, :cond_0

    .line 835
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 837
    :cond_0
    return-void

    .line 840
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 841
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 842
    .local v4, "newcount":I
    if-eqz v2, :cond_2

    .line 843
    add-int/lit8 v4, v4, 0x1

    .line 846
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x29

    const/16 v7, 0x28

    const/16 v8, 0x2f

    const/16 v10, 0x22

    const/16 v11, 0x8

    const/16 v12, 0xc

    const/16 v13, 0x75

    const/16 v15, 0x5c

    if-le v4, v5, :cond_10

    .line 847
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_f

    .line 848
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 850
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_d

    .line 851
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 853
    .local v14, "ch":C
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 854
    if-eq v14, v7, :cond_3

    if-eq v14, v6, :cond_3

    const/16 v9, 0x3c

    if-eq v14, v9, :cond_3

    const/16 v9, 0x3e

    if-ne v14, v9, :cond_4

    .line 855
    :cond_3
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 856
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 857
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0xc

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 858
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0x8

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 859
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0x4

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 860
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v19, v14, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 861
    goto/16 :goto_2

    .line 865
    :cond_4
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 866
    if-eq v14, v11, :cond_7

    if-eq v14, v12, :cond_7

    const/16 v9, 0xa

    if-eq v14, v9, :cond_7

    const/16 v9, 0xd

    if-eq v14, v9, :cond_7

    const/16 v9, 0x9

    if-eq v14, v9, :cond_7

    if-eq v14, v10, :cond_7

    if-eq v14, v8, :cond_7

    if-ne v14, v15, :cond_5

    goto :goto_1

    .line 879
    :cond_5
    const/16 v9, 0x20

    if-ge v14, v9, :cond_6

    .line 880
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 881
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 882
    const/16 v9, 0x30

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 883
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 884
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v19, v14, 0x2

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 885
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v19, v14, 0x2

    const/16 v17, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 886
    goto/16 :goto_2

    .line 889
    :cond_6
    const/16 v9, 0x7f

    if-lt v14, v9, :cond_c

    .line 890
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 891
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 892
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0xc

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 893
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0x8

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 894
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0x4

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 895
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v19, v14, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 896
    goto :goto_2

    .line 874
    :cond_7
    :goto_1
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 875
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v14

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 876
    goto :goto_2

    .line 899
    :cond_8
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v9, v9

    if-ge v14, v9, :cond_9

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v9, v9, v14

    if-nez v9, :cond_a

    :cond_9
    if-ne v14, v8, :cond_c

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 901
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 902
    :cond_a
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 903
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v9, v9, v14

    const/4 v6, 0x4

    if-ne v9, v6, :cond_b

    .line 904
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 905
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v14, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 906
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v14, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 907
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v14, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 908
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v9, v14, 0xf

    aget-char v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 910
    :cond_b
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 912
    goto :goto_2

    .line 916
    :cond_c
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 850
    .end local v14    # "ch":C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x29

    goto/16 :goto_0

    .line 919
    .end local v5    # "i":I
    :cond_d
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 920
    if-eqz v2, :cond_e

    .line 921
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 923
    :cond_e
    return-void

    .line 925
    :cond_f
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 928
    :cond_10
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 929
    .local v5, "start":I
    add-int v6, v5, v3

    .line 931
    .local v6, "end":I
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v9, v14

    .line 932
    const/4 v9, 0x0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v1, v9, v3, v14, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 934
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 936
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 937
    const/4 v7, -0x1

    .line 939
    .local v7, "lastSpecialIndex":I
    move v9, v7

    move v7, v4

    move v4, v5

    .local v4, "i":I
    .local v7, "newcount":I
    .local v9, "lastSpecialIndex":I
    :goto_3
    if-ge v4, v6, :cond_17

    .line 940
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v14, v4

    .line 942
    .restart local v14    # "ch":C
    if-eq v14, v10, :cond_15

    if-eq v14, v8, :cond_15

    if-ne v14, v15, :cond_11

    goto :goto_5

    .line 950
    :cond_11
    if-eq v14, v11, :cond_14

    if-eq v14, v12, :cond_14

    const/16 v13, 0xa

    if-eq v14, v13, :cond_14

    const/16 v13, 0xd

    if-eq v14, v13, :cond_14

    const/16 v13, 0x9

    if-ne v14, v13, :cond_12

    goto :goto_4

    .line 960
    :cond_12
    const/16 v13, 0x20

    if-ge v14, v13, :cond_13

    .line 961
    move v9, v4

    .line 962
    add-int/lit8 v7, v7, 0x5

    .line 963
    goto :goto_6

    .line 966
    :cond_13
    const/16 v13, 0x7f

    if-lt v14, v13, :cond_16

    .line 967
    move v9, v4

    .line 968
    add-int/lit8 v7, v7, 0x5

    .line 969
    goto :goto_6

    .line 955
    :cond_14
    :goto_4
    move v9, v4

    .line 956
    add-int/lit8 v7, v7, 0x1

    .line 957
    goto :goto_6

    .line 945
    :cond_15
    :goto_5
    move v9, v4

    .line 946
    add-int/lit8 v7, v7, 0x1

    .line 947
    nop

    .line 939
    .end local v14    # "ch":C
    :cond_16
    :goto_6
    add-int/lit8 v4, v4, 0x1

    const/16 v13, 0x75

    goto :goto_3

    .line 973
    .end local v4    # "i":I
    :cond_17
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-le v7, v4, :cond_18

    .line 974
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 976
    :cond_18
    iput v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 978
    move v4, v9

    .restart local v4    # "i":I
    :goto_7
    if-lt v4, v5, :cond_1f

    .line 979
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v13, v13, v4

    .line 981
    .local v13, "ch":C
    if-eq v13, v11, :cond_1d

    if-eq v13, v12, :cond_1d

    const/16 v14, 0xa

    if-eq v13, v14, :cond_1d

    const/16 v14, 0xd

    if-eq v13, v14, :cond_1d

    const/16 v14, 0x9

    if-ne v13, v14, :cond_19

    goto/16 :goto_9

    .line 994
    :cond_19
    if-eq v13, v10, :cond_1c

    if-eq v13, v8, :cond_1c

    if-ne v13, v15, :cond_1a

    goto/16 :goto_8

    .line 1005
    :cond_1a
    const/16 v14, 0x20

    if-ge v13, v14, :cond_1b

    .line 1006
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v4, 0x1

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x6

    sub-int v16, v6, v4

    const/16 v17, 0x1

    add-int/lit8 v10, v16, -0x1

    invoke-static {v14, v11, v12, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v15, v8, v4

    .line 1008
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    const/16 v11, 0x75

    aput-char v11, v8, v10

    .line 1009
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x2

    const/16 v11, 0x30

    aput-char v11, v8, v10

    .line 1010
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x3

    aput-char v11, v8, v10

    .line 1011
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x4

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v12, v13, 0x2

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1012
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x5

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v12, v13, 0x2

    const/4 v14, 0x1

    add-int/2addr v12, v14

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1013
    add-int/lit8 v6, v6, 0x5

    .line 1014
    goto/16 :goto_a

    .line 1017
    :cond_1b
    const/16 v8, 0x7f

    if-lt v13, v8, :cond_1e

    .line 1018
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x6

    sub-int v14, v6, v4

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v8, v10, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1019
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v15, v8, v4

    .line 1020
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    const/16 v11, 0x75

    aput-char v11, v8, v10

    .line 1021
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x2

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v12, v13, 0xc

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1022
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x3

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v12, v13, 0x8

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1023
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x4

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v12, v13, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1024
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x5

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v12, v13, 0xf

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1025
    add-int/lit8 v6, v6, 0x5

    .end local v13    # "ch":C
    goto :goto_a

    .line 998
    .restart local v13    # "ch":C
    :cond_1c
    :goto_8
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v14, v6, v4

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v8, v10, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v15, v8, v4

    .line 1000
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    aput-char v13, v8, v10

    .line 1001
    add-int/lit8 v6, v6, 0x1

    .line 1002
    goto :goto_a

    .line 987
    :cond_1d
    :goto_9
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v14, v6, v4

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v8, v10, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v15, v8, v4

    .line 989
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v13

    aput-char v11, v8, v10

    .line 990
    add-int/lit8 v6, v6, 0x1

    .line 991
    nop

    .line 978
    .end local v13    # "ch":C
    :cond_1e
    :goto_a
    add-int/lit8 v4, v4, -0x1

    const/16 v8, 0x2f

    const/16 v10, 0x22

    const/16 v11, 0x8

    const/16 v12, 0xc

    goto/16 :goto_7

    .line 1029
    .end local v4    # "i":I
    :cond_1f
    if-eqz v2, :cond_20

    .line 1030
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x2

    const/16 v10, 0x22

    aput-char v10, v4, v8

    .line 1031
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    aput-char v2, v4, v8

    goto :goto_b

    .line 1033
    :cond_20
    const/16 v10, 0x22

    const/4 v11, 0x1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v8, v11

    aput-char v10, v4, v8

    .line 1036
    :goto_b
    return-void

    .line 1039
    .end local v7    # "newcount":I
    .end local v9    # "lastSpecialIndex":I
    .local v4, "newcount":I
    :cond_21
    const/4 v8, 0x0

    .line 1040
    .local v8, "specialCount":I
    const/4 v9, -0x1

    .line 1041
    .restart local v9    # "lastSpecialIndex":I
    const/4 v10, -0x1

    .line 1042
    .local v10, "firstSpecialIndex":I
    const/4 v11, 0x0

    .line 1044
    .local v11, "lastSpecial":C
    move v12, v9

    move v9, v4

    move v4, v5

    .local v4, "i":I
    .local v9, "newcount":I
    .local v12, "lastSpecialIndex":I
    :goto_c
    if-ge v4, v6, :cond_2d

    .line 1045
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v13, v13, v4

    .line 1047
    .restart local v13    # "ch":C
    const/16 v14, 0x5d

    if-lt v13, v14, :cond_25

    .line 1048
    const/16 v14, 0x7f

    if-lt v13, v14, :cond_24

    const/16 v14, 0x2028

    if-eq v13, v14, :cond_22

    const/16 v14, 0x2029

    if-eq v13, v14, :cond_22

    const/16 v14, 0xa0

    if-ge v13, v14, :cond_24

    .line 1052
    :cond_22
    const/4 v14, -0x1

    if-ne v10, v14, :cond_23

    .line 1053
    move v10, v4

    .line 1056
    :cond_23
    add-int/lit8 v8, v8, 0x1

    .line 1057
    move v12, v4

    .line 1058
    move v11, v13

    .line 1059
    add-int/lit8 v9, v9, 0x4

    goto :goto_10

    .line 1044
    .end local v13    # "ch":C
    :cond_24
    move/from16 v24, v8

    goto :goto_f

    .line 1064
    .restart local v13    # "ch":C
    :cond_25
    const/16 v14, 0x40

    if-ge v13, v14, :cond_26

    move/from16 v24, v8

    iget-wide v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    .end local v8    # "specialCount":I
    .local v24, "specialCount":I
    const-wide/16 v22, 0x1

    shl-long v22, v22, v13

    and-long v7, v7, v22

    const-wide/16 v22, 0x0

    cmp-long v7, v7, v22

    if-nez v7, :cond_27

    goto :goto_d

    .end local v24    # "specialCount":I
    .restart local v8    # "specialCount":I
    :cond_26
    move/from16 v24, v8

    .end local v8    # "specialCount":I
    .restart local v24    # "specialCount":I
    :goto_d
    if-ne v13, v15, :cond_28

    :cond_27
    const/4 v14, 0x1

    goto :goto_e

    :cond_28
    const/4 v14, 0x0

    :goto_e
    move v7, v14

    .line 1065
    .local v7, "special":Z
    if-eqz v7, :cond_2b

    .line 1066
    add-int/lit8 v8, v24, 0x1

    .line 1067
    .end local v24    # "specialCount":I
    .restart local v8    # "specialCount":I
    move v12, v4

    .line 1068
    move v11, v13

    .line 1070
    const/16 v14, 0x28

    if-eq v13, v14, :cond_29

    const/16 v14, 0x29

    if-eq v13, v14, :cond_29

    const/16 v14, 0x3c

    if-eq v13, v14, :cond_29

    const/16 v14, 0x3e

    if-eq v13, v14, :cond_29

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v14, v14

    if-ge v13, v14, :cond_2a

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v14, v14, v13

    const/4 v15, 0x4

    if-ne v14, v15, :cond_2a

    .line 1077
    :cond_29
    add-int/lit8 v9, v9, 0x4

    .line 1080
    :cond_2a
    const/4 v14, -0x1

    if-ne v10, v14, :cond_2c

    .line 1081
    move v7, v4

    .line 1044
    .end local v10    # "firstSpecialIndex":I
    .end local v13    # "ch":C
    .local v7, "firstSpecialIndex":I
    move v10, v7

    goto :goto_10

    .end local v7    # "firstSpecialIndex":I
    .restart local v10    # "firstSpecialIndex":I
    :cond_2b
    :goto_f
    move/from16 v8, v24

    :cond_2c
    :goto_10
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x28

    const/16 v15, 0x5c

    goto :goto_c

    .line 1086
    .end local v4    # "i":I
    :cond_2d
    move/from16 v24, v8

    .end local v8    # "specialCount":I
    .restart local v24    # "specialCount":I
    if-lez v24, :cond_40

    .line 1087
    add-int v9, v9, v24

    .line 1088
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-le v9, v4, :cond_2e

    .line 1089
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1091
    :cond_2e
    iput v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1093
    move/from16 v8, v24

    const/4 v4, 0x1

    if-ne v8, v4, :cond_34

    .line 1094
    .end local v24    # "specialCount":I
    .restart local v8    # "specialCount":I
    const/16 v4, 0x2028

    if-ne v11, v4, :cond_2f

    .line 1095
    add-int/lit8 v4, v12, 0x1

    .line 1096
    .local v4, "srcPos":I
    add-int/lit8 v7, v12, 0x6

    .line 1097
    .local v7, "destPos":I
    sub-int v13, v6, v12

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 1099
    .local v13, "LengthOfCopy":I
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v14, v4, v15, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v14, v12

    .line 1101
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v12, 0x1

    const/16 v15, 0x75

    aput-char v15, v14, v12

    .line 1102
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v15, 0x1

    add-int/2addr v12, v15

    const/16 v16, 0x32

    aput-char v16, v14, v12

    .line 1103
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    const/16 v16, 0x30

    aput-char v16, v14, v12

    .line 1104
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    const/16 v16, 0x32

    aput-char v16, v14, v12

    .line 1105
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    const/16 v15, 0x38

    aput-char v15, v14, v12

    .line 1107
    .end local v4    # "srcPos":I
    .end local v7    # "destPos":I
    .end local v13    # "LengthOfCopy":I
    nop

    .line 1207
    .end local v3    # "len":I
    .local v25, "len":I
    :goto_11
    move/from16 v25, v3

    goto/16 :goto_1a

    .line 1107
    .end local v25    # "len":I
    .restart local v3    # "len":I
    :cond_2f
    const/16 v4, 0x2029

    if-ne v11, v4, :cond_30

    .line 1108
    add-int/lit8 v4, v12, 0x1

    .line 1109
    .restart local v4    # "srcPos":I
    add-int/lit8 v7, v12, 0x6

    .line 1110
    .restart local v7    # "destPos":I
    sub-int v13, v6, v12

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 1112
    .restart local v13    # "LengthOfCopy":I
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v14, v4, v15, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v14, v12

    .line 1114
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v12, 0x1

    const/16 v15, 0x75

    aput-char v15, v14, v12

    .line 1115
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v15, 0x1

    add-int/2addr v12, v15

    const/16 v16, 0x32

    aput-char v16, v14, v12

    .line 1116
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    const/16 v16, 0x30

    aput-char v16, v14, v12

    .line 1117
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    const/16 v16, 0x32

    aput-char v16, v14, v12

    .line 1118
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    const/16 v15, 0x39

    aput-char v15, v14, v12

    .line 1120
    .end local v4    # "srcPos":I
    .end local v7    # "destPos":I
    .end local v13    # "LengthOfCopy":I
    goto :goto_11

    :cond_30
    const/16 v4, 0x28

    if-eq v11, v4, :cond_33

    const/16 v4, 0x29

    if-eq v11, v4, :cond_33

    const/16 v4, 0x3c

    if-eq v11, v4, :cond_33

    const/16 v4, 0x3e

    if-ne v11, v4, :cond_31

    .line 1121
    move/from16 v25, v3

    goto/16 :goto_13

    .line 1134
    :cond_31
    move v4, v11

    .line 1135
    .local v4, "ch":C
    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v7, v7

    if-ge v4, v7, :cond_32

    sget-object v7, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v7, v7, v4

    const/4 v13, 0x4

    if-ne v7, v13, :cond_32

    .line 1137
    add-int/lit8 v7, v12, 0x1

    .line 1138
    .local v7, "srcPos":I
    add-int/lit8 v13, v12, 0x6

    .line 1139
    .local v13, "destPos":I
    sub-int v14, v6, v12

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    .line 1140
    .local v14, "LengthOfCopy":I
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move/from16 v25, v3

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .end local v3    # "len":I
    .restart local v25    # "len":I
    invoke-static {v15, v7, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1142
    move v3, v12

    .line 1143
    .local v3, "bufIndex":I
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v3, 0x1

    .local v16, "bufIndex":I
    const/16 v18, 0x5c

    aput-char v18, v15, v3

    .line 1144
    .end local v3    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v16, 0x1

    .local v15, "bufIndex":I
    const/16 v18, 0x75

    aput-char v18, v3, v16

    .line 1145
    .end local v16    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v15, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v4, 0xc

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v15

    .line 1146
    .end local v15    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v4, 0x8

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v16

    .line 1147
    .end local v16    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v15, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v4, 0x4

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v15

    .line 1148
    .end local v15    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v19, v4, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v16

    .line 1149
    .end local v7    # "srcPos":I
    .end local v13    # "destPos":I
    .end local v14    # "LengthOfCopy":I
    .end local v15    # "bufIndex":I
    .end local v16    # "bufIndex":I
    goto :goto_12

    .line 1150
    .end local v25    # "len":I
    .local v3, "len":I
    :cond_32
    move/from16 v25, v3

    .end local v3    # "len":I
    .restart local v25    # "len":I
    add-int/lit8 v3, v12, 0x1

    .line 1151
    .local v3, "srcPos":I
    add-int/lit8 v7, v12, 0x2

    .line 1152
    .local v7, "destPos":I
    sub-int v13, v6, v12

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 1153
    .local v13, "LengthOfCopy":I
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v14, v3, v15, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1154
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v14, v12

    .line 1155
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v12, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v15, v15, v4

    aput-char v15, v14, v12

    .line 1157
    .end local v3    # "srcPos":I
    .end local v4    # "ch":C
    .end local v7    # "destPos":I
    .end local v13    # "LengthOfCopy":I
    :goto_12
    goto/16 :goto_1a

    .line 1121
    .end local v25    # "len":I
    .local v3, "len":I
    :cond_33
    move/from16 v25, v3

    .end local v3    # "len":I
    .restart local v25    # "len":I
    :goto_13
    add-int/lit8 v3, v12, 0x1

    .line 1122
    .local v3, "srcPos":I
    add-int/lit8 v4, v12, 0x6

    .line 1123
    .local v4, "destPos":I
    sub-int v7, v6, v12

    const/4 v13, 0x1

    sub-int/2addr v7, v13

    .line 1124
    .local v7, "LengthOfCopy":I
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v13, v3, v14, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v14, 0x5c

    aput-char v14, v13, v12

    .line 1126
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v12, 0x1

    const/16 v14, 0x75

    aput-char v14, v13, v12

    .line 1128
    move v13, v11

    .line 1129
    .local v13, "ch":C
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v15, 0x1

    add-int/2addr v12, v15

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v13, 0xc

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v14, v12

    .line 1130
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v13, 0x8

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v14, v12

    .line 1131
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v13, 0x4

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v14, v12

    .line 1132
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v12, v15

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v17, v13, 0xf

    aget-char v16, v16, v17

    aput-char v16, v14, v12

    .line 1133
    .end local v3    # "srcPos":I
    .end local v4    # "destPos":I
    .end local v7    # "LengthOfCopy":I
    .end local v13    # "ch":C
    goto/16 :goto_1a

    .line 1158
    .end local v25    # "len":I
    .local v3, "len":I
    :cond_34
    move/from16 v25, v3

    move v15, v4

    .end local v3    # "len":I
    .restart local v25    # "len":I
    if-le v8, v15, :cond_41

    .line 1159
    sub-int v3, v10, v5

    .line 1160
    .local v3, "textIndex":I
    move v4, v10

    .line 1161
    .local v4, "bufIndex":I
    move v7, v6

    move v6, v4

    move v4, v3

    .local v4, "i":I
    .local v6, "bufIndex":I
    .local v7, "end":I
    :goto_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v4, v13, :cond_3f

    .line 1162
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1164
    .restart local v13    # "ch":C
    iget-boolean v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v14, :cond_37

    const/16 v14, 0x28

    if-eq v13, v14, :cond_35

    const/16 v15, 0x29

    if-eq v13, v15, :cond_36

    const/16 v14, 0x3c

    if-eq v13, v14, :cond_36

    const/16 v14, 0x3e

    if-ne v13, v14, :cond_38

    goto :goto_15

    .line 1168
    :cond_35
    const/16 v15, 0x29

    :cond_36
    :goto_15
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v6, 0x1

    .local v18, "bufIndex":I
    const/16 v19, 0x5c

    aput-char v19, v14, v6

    .line 1169
    .end local v6    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v18, 0x1

    .local v14, "bufIndex":I
    const/16 v19, 0x75

    aput-char v19, v6, v18

    .line 1170
    .end local v18    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v14, 0x1

    .restart local v18    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0xc

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v14

    .line 1171
    .end local v14    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v18, 0x1

    .restart local v14    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0x8

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 1172
    .end local v18    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v14, 0x1

    .restart local v18    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0x4

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v14

    .line 1173
    .end local v14    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v18, 0x1

    .restart local v14    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v20, v13, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 1174
    .end local v18    # "bufIndex":I
    add-int/lit8 v7, v7, 0x5

    .line 1161
    move v6, v14

    .end local v13    # "ch":C
    .end local v14    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :goto_16
    const/16 v18, 0x5c

    const/16 v19, 0x75

    goto/16 :goto_19

    .line 1175
    .restart local v13    # "ch":C
    :cond_37
    const/16 v15, 0x29

    :cond_38
    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v14, v14

    if-ge v13, v14, :cond_39

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v14, v14, v13

    if-nez v14, :cond_3a

    :cond_39
    const/16 v14, 0x2f

    if-ne v13, v14, :cond_3c

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1177
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 1178
    :cond_3a
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v6, 0x1

    .restart local v18    # "bufIndex":I
    const/16 v19, 0x5c

    aput-char v19, v14, v6

    .line 1179
    .end local v6    # "bufIndex":I
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v6, v6, v13

    const/4 v14, 0x4

    if-ne v6, v14, :cond_3b

    .line 1180
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v18, 0x1

    .restart local v16    # "bufIndex":I
    const/16 v19, 0x75

    aput-char v19, v6, v18

    .line 1181
    .end local v18    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v16, 0x1

    .restart local v18    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0xc

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v16

    .line 1182
    .end local v16    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v18, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0x8

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 1183
    .end local v18    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v16, 0x1

    .restart local v18    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0x4

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v16

    .line 1184
    .end local v16    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v18, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v20, v13, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 1185
    .end local v18    # "bufIndex":I
    add-int/lit8 v7, v7, 0x5

    .line 1161
    .end local v13    # "ch":C
    .end local v16    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :goto_17
    move/from16 v6, v16

    goto :goto_16

    .line 1187
    .end local v6    # "bufIndex":I
    .restart local v13    # "ch":C
    .restart local v18    # "bufIndex":I
    :cond_3b
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v18, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v19, v19, v13

    aput-char v19, v6, v18

    .line 1188
    .end local v18    # "bufIndex":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 1191
    .end local v16    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :cond_3c
    const/4 v14, 0x4

    const/16 v14, 0x2028

    if-eq v13, v14, :cond_3e

    const/16 v14, 0x2029

    if-ne v13, v14, :cond_3d

    goto :goto_18

    .line 1200
    :cond_3d
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v6, 0x1

    .restart local v16    # "bufIndex":I
    aput-char v13, v14, v6

    .end local v6    # "bufIndex":I
    .end local v13    # "ch":C
    goto :goto_17

    .line 1192
    .end local v16    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    .restart local v13    # "ch":C
    :cond_3e
    :goto_18
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v6, 0x1

    .restart local v16    # "bufIndex":I
    const/16 v18, 0x5c

    aput-char v18, v14, v6

    .line 1193
    .end local v6    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v16, 0x1

    .restart local v14    # "bufIndex":I
    const/16 v19, 0x75

    aput-char v19, v6, v16

    .line 1194
    .end local v16    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v14, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v13, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    aput-char v20, v6, v14

    .line 1195
    .end local v14    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v16, 0x1

    .restart local v14    # "bufIndex":I
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v13, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    aput-char v20, v6, v16

    .line 1196
    .end local v16    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v14, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v13, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    aput-char v20, v6, v14

    .line 1197
    .end local v14    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v16, 0x1

    .restart local v14    # "bufIndex":I
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v13, 0xf

    aget-char v20, v20, v21

    aput-char v20, v6, v16

    .line 1198
    .end local v16    # "bufIndex":I
    add-int/lit8 v7, v7, 0x5

    .line 1161
    move v6, v14

    .end local v13    # "ch":C
    .end local v14    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    .line 1207
    .end local v3    # "textIndex":I
    .end local v4    # "i":I
    .end local v6    # "bufIndex":I
    :cond_3f
    move v6, v7

    goto :goto_1a

    .end local v7    # "end":I
    .end local v8    # "specialCount":I
    .end local v25    # "len":I
    .local v3, "len":I
    .local v6, "end":I
    .restart local v24    # "specialCount":I
    :cond_40
    move/from16 v25, v3

    move/from16 v8, v24

    .end local v3    # "len":I
    .end local v24    # "specialCount":I
    .restart local v8    # "specialCount":I
    .restart local v25    # "len":I
    :cond_41
    :goto_1a
    if-eqz v2, :cond_42

    .line 1208
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    const/16 v7, 0x22

    aput-char v7, v3, v4

    .line 1209
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    aput-char v2, v3, v4

    goto :goto_1b

    .line 1211
    :cond_42
    const/16 v7, 0x22

    const/4 v13, 0x1

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v4, v13

    aput-char v7, v3, v4

    .line 1213
    :goto_1b
    return-void
.end method

.method public writeStringWithDoubleQuote([CC)V
    .locals 26
    .param p1, "text"    # [C
    .param p2, "seperator"    # C

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1216
    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 1218
    if-eqz v2, :cond_0

    .line 1219
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1221
    :cond_0
    return-void

    .line 1224
    :cond_1
    array-length v3, v1

    .line 1225
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 1226
    .local v4, "newcount":I
    if-eqz v2, :cond_2

    .line 1227
    add-int/lit8 v4, v4, 0x1

    .line 1230
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x29

    const/16 v7, 0x28

    const/16 v8, 0x2f

    const/16 v10, 0x22

    const/16 v11, 0x8

    const/16 v12, 0xc

    const/16 v13, 0x75

    const/16 v15, 0x5c

    if-le v4, v5, :cond_10

    .line 1231
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_f

    .line 1232
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1234
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v14, v1

    if-ge v5, v14, :cond_d

    .line 1235
    aget-char v14, v1, v5

    .line 1237
    .local v14, "ch":C
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1238
    if-eq v14, v7, :cond_3

    if-eq v14, v6, :cond_3

    const/16 v9, 0x3c

    if-eq v14, v9, :cond_3

    const/16 v9, 0x3e

    if-ne v14, v9, :cond_4

    .line 1243
    :cond_3
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1244
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1245
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0xc

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1246
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0x8

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1247
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0x4

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1248
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v19, v14, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1249
    goto/16 :goto_2

    .line 1253
    :cond_4
    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1254
    if-eq v14, v11, :cond_7

    if-eq v14, v12, :cond_7

    const/16 v9, 0xa

    if-eq v14, v9, :cond_7

    const/16 v9, 0xd

    if-eq v14, v9, :cond_7

    const/16 v9, 0x9

    if-eq v14, v9, :cond_7

    if-eq v14, v10, :cond_7

    if-eq v14, v8, :cond_7

    if-ne v14, v15, :cond_5

    goto :goto_1

    .line 1267
    :cond_5
    const/16 v9, 0x20

    if-ge v14, v9, :cond_6

    .line 1268
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1269
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1270
    const/16 v9, 0x30

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1271
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1272
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v19, v14, 0x2

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1273
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v19, v14, 0x2

    const/16 v17, 0x1

    add-int/lit8 v19, v19, 0x1

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1274
    goto/16 :goto_2

    .line 1277
    :cond_6
    const/16 v9, 0x7f

    if-lt v14, v9, :cond_c

    .line 1278
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1279
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1280
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0xc

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1281
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0x8

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1282
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v14, 0x4

    and-int/lit8 v19, v19, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1283
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v19, v14, 0xf

    aget-char v9, v9, v19

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1284
    goto :goto_2

    .line 1262
    :cond_7
    :goto_1
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1263
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v14

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1264
    goto :goto_2

    .line 1287
    :cond_8
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v9, v9

    if-ge v14, v9, :cond_9

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v9, v9, v14

    if-nez v9, :cond_a

    :cond_9
    if-ne v14, v8, :cond_c

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1289
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1290
    :cond_a
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1291
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v9, v9, v14

    const/4 v6, 0x4

    if-ne v9, v6, :cond_b

    .line 1292
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1293
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v14, 0xc

    and-int/lit8 v9, v9, 0xf

    aget-char v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1294
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v14, 0x8

    and-int/lit8 v9, v9, 0xf

    aget-char v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1295
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v9, v14, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1296
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v9, v14, 0xf

    aget-char v6, v6, v9

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 1298
    :cond_b
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1300
    goto :goto_2

    .line 1304
    :cond_c
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1234
    .end local v14    # "ch":C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x29

    goto/16 :goto_0

    .line 1307
    .end local v5    # "i":I
    :cond_d
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1308
    if-eqz v2, :cond_e

    .line 1309
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 1311
    :cond_e
    return-void

    .line 1313
    :cond_f
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1316
    :cond_10
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 1317
    .local v5, "start":I
    add-int v6, v5, v3

    .line 1319
    .local v6, "end":I
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v10, v9, v14

    .line 1321
    const/4 v9, 0x0

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v7, v1

    invoke-static {v1, v9, v14, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1323
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1325
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1326
    const/4 v7, -0x1

    .line 1328
    .local v7, "lastSpecialIndex":I
    move v9, v7

    move v7, v4

    move v4, v5

    .local v4, "i":I
    .local v7, "newcount":I
    .local v9, "lastSpecialIndex":I
    :goto_3
    if-ge v4, v6, :cond_17

    .line 1329
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v14, v14, v4

    .line 1331
    .restart local v14    # "ch":C
    if-eq v14, v10, :cond_15

    if-eq v14, v8, :cond_15

    if-ne v14, v15, :cond_11

    goto :goto_5

    .line 1339
    :cond_11
    if-eq v14, v11, :cond_14

    if-eq v14, v12, :cond_14

    const/16 v13, 0xa

    if-eq v14, v13, :cond_14

    const/16 v13, 0xd

    if-eq v14, v13, :cond_14

    const/16 v13, 0x9

    if-ne v14, v13, :cond_12

    goto :goto_4

    .line 1349
    :cond_12
    const/16 v13, 0x20

    if-ge v14, v13, :cond_13

    .line 1350
    move v9, v4

    .line 1351
    add-int/lit8 v7, v7, 0x5

    .line 1352
    goto :goto_6

    .line 1355
    :cond_13
    const/16 v13, 0x7f

    if-lt v14, v13, :cond_16

    .line 1356
    move v9, v4

    .line 1357
    add-int/lit8 v7, v7, 0x5

    .line 1358
    goto :goto_6

    .line 1344
    :cond_14
    :goto_4
    move v9, v4

    .line 1345
    add-int/lit8 v7, v7, 0x1

    .line 1346
    goto :goto_6

    .line 1334
    :cond_15
    :goto_5
    move v9, v4

    .line 1335
    add-int/lit8 v7, v7, 0x1

    .line 1336
    nop

    .line 1328
    .end local v14    # "ch":C
    :cond_16
    :goto_6
    add-int/lit8 v4, v4, 0x1

    const/16 v13, 0x75

    goto :goto_3

    .line 1362
    .end local v4    # "i":I
    :cond_17
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-le v7, v4, :cond_18

    .line 1363
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1365
    :cond_18
    iput v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1367
    move v4, v9

    .restart local v4    # "i":I
    :goto_7
    if-lt v4, v5, :cond_1f

    .line 1368
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v13, v13, v4

    .line 1370
    .local v13, "ch":C
    if-eq v13, v11, :cond_1d

    if-eq v13, v12, :cond_1d

    const/16 v14, 0xa

    if-eq v13, v14, :cond_1d

    const/16 v14, 0xd

    if-eq v13, v14, :cond_1d

    const/16 v14, 0x9

    if-ne v13, v14, :cond_19

    goto/16 :goto_9

    .line 1382
    :cond_19
    if-eq v13, v10, :cond_1c

    if-eq v13, v8, :cond_1c

    if-ne v13, v15, :cond_1a

    goto/16 :goto_8

    .line 1392
    :cond_1a
    const/16 v14, 0x20

    if-ge v13, v14, :cond_1b

    .line 1393
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v4, 0x1

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v4, 0x6

    sub-int v16, v6, v4

    const/16 v17, 0x1

    add-int/lit8 v10, v16, -0x1

    invoke-static {v14, v11, v12, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1394
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v15, v8, v4

    .line 1395
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    const/16 v11, 0x75

    aput-char v11, v8, v10

    .line 1396
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x2

    const/16 v11, 0x30

    aput-char v11, v8, v10

    .line 1397
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x3

    aput-char v11, v8, v10

    .line 1398
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x4

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v12, v13, 0x2

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1399
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x5

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    mul-int/lit8 v12, v13, 0x2

    const/4 v14, 0x1

    add-int/2addr v12, v14

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1400
    add-int/lit8 v6, v6, 0x5

    .line 1401
    goto/16 :goto_a

    .line 1404
    :cond_1b
    const/16 v8, 0x7f

    if-lt v13, v8, :cond_1e

    .line 1405
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x6

    sub-int v14, v6, v4

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v8, v10, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1406
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v15, v8, v4

    .line 1407
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    const/16 v11, 0x75

    aput-char v11, v8, v10

    .line 1408
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x2

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v12, v13, 0xc

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1409
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x3

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v12, v13, 0x8

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1410
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x4

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v12, v13, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1411
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x5

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v12, v13, 0xf

    aget-char v11, v11, v12

    aput-char v11, v8, v10

    .line 1412
    add-int/lit8 v6, v6, 0x5

    .end local v13    # "ch":C
    goto :goto_a

    .line 1385
    .restart local v13    # "ch":C
    :cond_1c
    :goto_8
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v14, v6, v4

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v8, v10, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1386
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v15, v8, v4

    .line 1387
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    aput-char v13, v8, v10

    .line 1388
    add-int/lit8 v6, v6, 0x1

    .line 1389
    goto :goto_a

    .line 1375
    :cond_1d
    :goto_9
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    iget-object v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v12, v4, 0x2

    sub-int v14, v6, v4

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-static {v8, v10, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1376
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v15, v8, v4

    .line 1377
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v11, v11, v13

    aput-char v11, v8, v10

    .line 1378
    add-int/lit8 v6, v6, 0x1

    .line 1379
    nop

    .line 1367
    .end local v13    # "ch":C
    :cond_1e
    :goto_a
    add-int/lit8 v4, v4, -0x1

    const/16 v8, 0x2f

    const/16 v10, 0x22

    const/16 v11, 0x8

    const/16 v12, 0xc

    goto/16 :goto_7

    .line 1416
    .end local v4    # "i":I
    :cond_1f
    if-eqz v2, :cond_20

    .line 1417
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v8, -0x2

    const/16 v10, 0x22

    aput-char v10, v4, v8

    .line 1418
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    aput-char v2, v4, v8

    goto :goto_b

    .line 1420
    :cond_20
    const/16 v10, 0x22

    const/4 v11, 0x1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v8, v11

    aput-char v10, v4, v8

    .line 1423
    :goto_b
    return-void

    .line 1426
    .end local v7    # "newcount":I
    .end local v9    # "lastSpecialIndex":I
    .local v4, "newcount":I
    :cond_21
    const/4 v7, 0x0

    .line 1427
    .local v7, "specialCount":I
    const/4 v8, -0x1

    .line 1428
    .local v8, "lastSpecialIndex":I
    const/4 v9, -0x1

    .line 1429
    .local v9, "firstSpecialIndex":I
    const/4 v10, 0x0

    .line 1431
    .local v10, "lastSpecial":C
    move v11, v8

    move v8, v4

    move v4, v5

    .local v4, "i":I
    .local v8, "newcount":I
    .local v11, "lastSpecialIndex":I
    :goto_c
    if-ge v4, v6, :cond_2b

    .line 1432
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v12, v12, v4

    .line 1434
    .local v12, "ch":C
    const/16 v13, 0x5d

    if-lt v12, v13, :cond_24

    .line 1435
    const/16 v13, 0x7f

    if-lt v12, v13, :cond_2a

    const/16 v13, 0x2028

    if-eq v12, v13, :cond_22

    const/16 v13, 0x2029

    if-eq v12, v13, :cond_22

    const/16 v13, 0xa0

    if-ge v12, v13, :cond_2a

    .line 1439
    :cond_22
    const/4 v13, -0x1

    if-ne v9, v13, :cond_23

    .line 1440
    move v9, v4

    .line 1443
    :cond_23
    add-int/lit8 v7, v7, 0x1

    .line 1444
    move v11, v4

    .line 1445
    move v10, v12

    .line 1446
    add-int/lit8 v8, v8, 0x4

    goto :goto_e

    .line 1451
    :cond_24
    const/16 v13, 0x40

    if-ge v12, v13, :cond_25

    iget-wide v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sepcialBits:J

    const-wide/16 v22, 0x1

    shl-long v22, v22, v12

    and-long v13, v13, v22

    const-wide/16 v22, 0x0

    cmp-long v13, v13, v22

    if-nez v13, :cond_26

    :cond_25
    if-ne v12, v15, :cond_27

    :cond_26
    const/4 v14, 0x1

    goto :goto_d

    :cond_27
    const/4 v14, 0x0

    :goto_d
    move v13, v14

    .line 1452
    .local v13, "special":Z
    if-eqz v13, :cond_2a

    .line 1453
    add-int/lit8 v7, v7, 0x1

    .line 1454
    move v11, v4

    .line 1455
    move v10, v12

    .line 1457
    const/16 v14, 0x28

    if-eq v12, v14, :cond_28

    const/16 v14, 0x29

    if-eq v12, v14, :cond_28

    const/16 v14, 0x3c

    if-eq v12, v14, :cond_28

    const/16 v14, 0x3e

    if-eq v12, v14, :cond_28

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v14, v14

    if-ge v12, v14, :cond_29

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v14, v14, v12

    const/4 v15, 0x4

    if-ne v14, v15, :cond_29

    .line 1464
    :cond_28
    add-int/lit8 v8, v8, 0x4

    .line 1467
    :cond_29
    const/4 v14, -0x1

    if-ne v9, v14, :cond_2a

    .line 1468
    move v9, v4

    .line 1431
    .end local v12    # "ch":C
    .end local v13    # "special":Z
    :cond_2a
    :goto_e
    add-int/lit8 v4, v4, 0x1

    const/16 v15, 0x5c

    goto :goto_c

    .line 1473
    .end local v4    # "i":I
    :cond_2b
    if-lez v7, :cond_3e

    .line 1474
    add-int/2addr v8, v7

    .line 1475
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v4, v4

    if-le v8, v4, :cond_2c

    .line 1476
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 1478
    :cond_2c
    iput v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 1480
    const/4 v4, 0x1

    if-ne v7, v4, :cond_32

    .line 1481
    const/16 v4, 0x2028

    if-ne v10, v4, :cond_2d

    .line 1482
    add-int/lit8 v4, v11, 0x1

    .line 1483
    .local v4, "srcPos":I
    add-int/lit8 v12, v11, 0x6

    .line 1484
    .local v12, "destPos":I
    sub-int v13, v6, v11

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 1485
    .local v13, "LengthOfCopy":I
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v14, v4, v15, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1486
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v14, v11

    .line 1487
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v11, 0x1

    const/16 v15, 0x75

    aput-char v15, v14, v11

    .line 1488
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v15, 0x1

    add-int/2addr v11, v15

    const/16 v16, 0x32

    aput-char v16, v14, v11

    .line 1489
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    const/16 v16, 0x30

    aput-char v16, v14, v11

    .line 1490
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    const/16 v16, 0x32

    aput-char v16, v14, v11

    .line 1491
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    const/16 v15, 0x38

    aput-char v15, v14, v11

    .line 1492
    .end local v4    # "srcPos":I
    .end local v12    # "destPos":I
    .end local v13    # "LengthOfCopy":I
    nop

    .line 1590
    .end local v3    # "len":I
    .local v24, "len":I
    :goto_f
    move/from16 v24, v3

    goto/16 :goto_18

    .line 1492
    .end local v24    # "len":I
    .restart local v3    # "len":I
    :cond_2d
    const/16 v4, 0x2029

    if-ne v10, v4, :cond_2e

    .line 1493
    add-int/lit8 v4, v11, 0x1

    .line 1494
    .restart local v4    # "srcPos":I
    add-int/lit8 v12, v11, 0x6

    .line 1495
    .restart local v12    # "destPos":I
    sub-int v13, v6, v11

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 1496
    .restart local v13    # "LengthOfCopy":I
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v14, v4, v15, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1497
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v14, v11

    .line 1498
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v11, 0x1

    const/16 v15, 0x75

    aput-char v15, v14, v11

    .line 1499
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v15, 0x1

    add-int/2addr v11, v15

    const/16 v16, 0x32

    aput-char v16, v14, v11

    .line 1500
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    const/16 v16, 0x30

    aput-char v16, v14, v11

    .line 1501
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    const/16 v16, 0x32

    aput-char v16, v14, v11

    .line 1502
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    const/16 v15, 0x39

    aput-char v15, v14, v11

    .line 1503
    .end local v4    # "srcPos":I
    .end local v12    # "destPos":I
    .end local v13    # "LengthOfCopy":I
    goto :goto_f

    :cond_2e
    const/16 v4, 0x28

    if-eq v10, v4, :cond_31

    const/16 v4, 0x29

    if-eq v10, v4, :cond_31

    const/16 v4, 0x3c

    if-eq v10, v4, :cond_31

    const/16 v4, 0x3e

    if-ne v10, v4, :cond_2f

    .line 1504
    move/from16 v24, v3

    goto/16 :goto_11

    .line 1517
    :cond_2f
    move v4, v10

    .line 1518
    .local v4, "ch":C
    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v12, v12

    if-ge v4, v12, :cond_30

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v12, v12, v4

    const/4 v13, 0x4

    if-ne v12, v13, :cond_30

    .line 1520
    add-int/lit8 v12, v11, 0x1

    .line 1521
    .local v12, "srcPos":I
    add-int/lit8 v13, v11, 0x6

    .line 1522
    .local v13, "destPos":I
    sub-int v14, v6, v11

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    .line 1523
    .local v14, "LengthOfCopy":I
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    move/from16 v24, v3

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .end local v3    # "len":I
    .restart local v24    # "len":I
    invoke-static {v15, v12, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1525
    move v3, v11

    .line 1526
    .local v3, "bufIndex":I
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v3, 0x1

    .local v16, "bufIndex":I
    const/16 v18, 0x5c

    aput-char v18, v15, v3

    .line 1527
    .end local v3    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v16, 0x1

    .local v15, "bufIndex":I
    const/16 v18, 0x75

    aput-char v18, v3, v16

    .line 1528
    .end local v16    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v15, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v4, 0xc

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v15

    .line 1529
    .end local v15    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v4, 0x8

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v16

    .line 1530
    .end local v16    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v15, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v19, v4, 0x4

    and-int/lit8 v19, v19, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v15

    .line 1531
    .end local v15    # "bufIndex":I
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "bufIndex":I
    sget-object v18, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v19, v4, 0xf

    aget-char v18, v18, v19

    aput-char v18, v3, v16

    .line 1532
    .end local v12    # "srcPos":I
    .end local v13    # "destPos":I
    .end local v14    # "LengthOfCopy":I
    .end local v15    # "bufIndex":I
    .end local v16    # "bufIndex":I
    goto :goto_10

    .line 1533
    .end local v24    # "len":I
    .local v3, "len":I
    :cond_30
    move/from16 v24, v3

    .end local v3    # "len":I
    .restart local v24    # "len":I
    add-int/lit8 v3, v11, 0x1

    .line 1534
    .local v3, "srcPos":I
    add-int/lit8 v12, v11, 0x2

    .line 1535
    .local v12, "destPos":I
    sub-int v13, v6, v11

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .line 1536
    .local v13, "LengthOfCopy":I
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v14, v3, v15, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1537
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v15, 0x5c

    aput-char v15, v14, v11

    .line 1538
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v11, 0x1

    sget-object v15, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v15, v15, v4

    aput-char v15, v14, v11

    .line 1540
    .end local v3    # "srcPos":I
    .end local v4    # "ch":C
    .end local v12    # "destPos":I
    .end local v13    # "LengthOfCopy":I
    :goto_10
    goto/16 :goto_18

    .line 1504
    .end local v24    # "len":I
    .local v3, "len":I
    :cond_31
    move/from16 v24, v3

    .end local v3    # "len":I
    .restart local v24    # "len":I
    :goto_11
    add-int/lit8 v3, v11, 0x1

    .line 1505
    .local v3, "srcPos":I
    add-int/lit8 v4, v11, 0x6

    .line 1506
    .local v4, "destPos":I
    sub-int v12, v6, v11

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .line 1507
    .local v12, "LengthOfCopy":I
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-static {v13, v3, v14, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1508
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v14, 0x5c

    aput-char v14, v13, v11

    .line 1509
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v11, 0x1

    const/16 v14, 0x75

    aput-char v14, v13, v11

    .line 1511
    move v13, v10

    .line 1512
    .local v13, "ch":C
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v15, 0x1

    add-int/2addr v11, v15

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v13, 0xc

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v14, v11

    .line 1513
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v13, 0x8

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v14, v11

    .line 1514
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v17, v13, 0x4

    and-int/lit8 v17, v17, 0xf

    aget-char v16, v16, v17

    aput-char v16, v14, v11

    .line 1515
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v11, v15

    sget-object v16, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v17, v13, 0xf

    aget-char v16, v16, v17

    aput-char v16, v14, v11

    .line 1516
    .end local v3    # "srcPos":I
    .end local v4    # "destPos":I
    .end local v12    # "LengthOfCopy":I
    .end local v13    # "ch":C
    goto/16 :goto_18

    .line 1541
    .end local v24    # "len":I
    .local v3, "len":I
    :cond_32
    move/from16 v24, v3

    move v15, v4

    .end local v3    # "len":I
    .restart local v24    # "len":I
    if-le v7, v15, :cond_3f

    .line 1542
    sub-int v3, v9, v5

    .line 1543
    .local v3, "textIndex":I
    move v4, v9

    .line 1544
    .local v4, "bufIndex":I
    move v12, v6

    move v6, v4

    move v4, v3

    .local v4, "i":I
    .local v6, "bufIndex":I
    .local v12, "end":I
    :goto_12
    array-length v13, v1

    if-ge v4, v13, :cond_3d

    .line 1545
    aget-char v13, v1, v4

    .line 1547
    .restart local v13    # "ch":C
    iget-boolean v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->browserSecure:Z

    if-eqz v14, :cond_35

    const/16 v14, 0x28

    if-eq v13, v14, :cond_33

    const/16 v15, 0x29

    if-eq v13, v15, :cond_34

    const/16 v14, 0x3c

    if-eq v13, v14, :cond_34

    const/16 v14, 0x3e

    if-ne v13, v14, :cond_36

    goto :goto_13

    .line 1551
    :cond_33
    const/16 v15, 0x29

    :cond_34
    :goto_13
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v6, 0x1

    .local v18, "bufIndex":I
    const/16 v19, 0x5c

    aput-char v19, v14, v6

    .line 1552
    .end local v6    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v18, 0x1

    .local v14, "bufIndex":I
    const/16 v19, 0x75

    aput-char v19, v6, v18

    .line 1553
    .end local v18    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v14, 0x1

    .restart local v18    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0xc

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v14

    .line 1554
    .end local v14    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v18, 0x1

    .restart local v14    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0x8

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 1555
    .end local v18    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v14, 0x1

    .restart local v18    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0x4

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v14

    .line 1556
    .end local v14    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v18, 0x1

    .restart local v14    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v20, v13, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 1557
    .end local v18    # "bufIndex":I
    add-int/lit8 v12, v12, 0x5

    .line 1544
    move v6, v14

    .end local v13    # "ch":C
    .end local v14    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :goto_14
    const/16 v18, 0x5c

    const/16 v19, 0x75

    goto/16 :goto_17

    .line 1558
    .restart local v13    # "ch":C
    :cond_35
    const/16 v15, 0x29

    :cond_36
    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    array-length v14, v14

    if-ge v13, v14, :cond_37

    sget-object v14, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v14, v14, v13

    if-nez v14, :cond_38

    :cond_37
    const/16 v14, 0x2f

    if-ne v13, v14, :cond_3a

    sget-object v14, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 1560
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 1561
    :cond_38
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v6, 0x1

    .restart local v18    # "bufIndex":I
    const/16 v19, 0x5c

    aput-char v19, v14, v6

    .line 1562
    .end local v6    # "bufIndex":I
    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v6, v6, v13

    const/4 v14, 0x4

    if-ne v6, v14, :cond_39

    .line 1563
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v18, 0x1

    .restart local v16    # "bufIndex":I
    const/16 v19, 0x75

    aput-char v19, v6, v18

    .line 1564
    .end local v18    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v16, 0x1

    .restart local v18    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0xc

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v16

    .line 1565
    .end local v16    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v18, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0x8

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 1566
    .end local v18    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v18, v16, 0x1

    .restart local v18    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v20, v13, 0x4

    and-int/lit8 v20, v20, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v16

    .line 1567
    .end local v16    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v18, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v20, v13, 0xf

    aget-char v19, v19, v20

    aput-char v19, v6, v18

    .line 1568
    .end local v18    # "bufIndex":I
    add-int/lit8 v12, v12, 0x5

    .line 1544
    .end local v13    # "ch":C
    .end local v16    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :goto_15
    move/from16 v6, v16

    goto :goto_14

    .line 1570
    .end local v6    # "bufIndex":I
    .restart local v13    # "ch":C
    .restart local v18    # "bufIndex":I
    :cond_39
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v18, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v19, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v19, v19, v13

    aput-char v19, v6, v18

    .line 1571
    .end local v18    # "bufIndex":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    .line 1574
    .end local v16    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :cond_3a
    const/4 v14, 0x4

    const/16 v14, 0x2028

    if-eq v13, v14, :cond_3c

    const/16 v14, 0x2029

    if-ne v13, v14, :cond_3b

    goto :goto_16

    .line 1583
    :cond_3b
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v6, 0x1

    .restart local v16    # "bufIndex":I
    aput-char v13, v14, v6

    .end local v6    # "bufIndex":I
    .end local v13    # "ch":C
    goto :goto_15

    .line 1575
    .end local v16    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    .restart local v13    # "ch":C
    :cond_3c
    :goto_16
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v6, 0x1

    .restart local v16    # "bufIndex":I
    const/16 v18, 0x5c

    aput-char v18, v14, v6

    .line 1576
    .end local v6    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v16, 0x1

    .restart local v14    # "bufIndex":I
    const/16 v19, 0x75

    aput-char v19, v6, v16

    .line 1577
    .end local v16    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v14, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v13, 0xc

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    aput-char v20, v6, v14

    .line 1578
    .end local v14    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v16, 0x1

    .restart local v14    # "bufIndex":I
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v13, 0x8

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    aput-char v20, v6, v16

    .line 1579
    .end local v16    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v14, 0x1

    .restart local v16    # "bufIndex":I
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    ushr-int/lit8 v21, v13, 0x4

    and-int/lit8 v21, v21, 0xf

    aget-char v20, v20, v21

    aput-char v20, v6, v14

    .line 1580
    .end local v14    # "bufIndex":I
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v14, v16, 0x1

    .restart local v14    # "bufIndex":I
    sget-object v20, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    and-int/lit8 v21, v13, 0xf

    aget-char v20, v20, v21

    aput-char v20, v6, v16

    .line 1581
    .end local v16    # "bufIndex":I
    add-int/lit8 v12, v12, 0x5

    .line 1544
    move v6, v14

    .end local v13    # "ch":C
    .end local v14    # "bufIndex":I
    .restart local v6    # "bufIndex":I
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    .line 1590
    .end local v3    # "textIndex":I
    .end local v4    # "i":I
    .end local v6    # "bufIndex":I
    :cond_3d
    move v6, v12

    goto :goto_18

    .end local v12    # "end":I
    .end local v24    # "len":I
    .local v3, "len":I
    .local v6, "end":I
    :cond_3e
    move/from16 v24, v3

    .end local v3    # "len":I
    .restart local v24    # "len":I
    :cond_3f
    :goto_18
    if-eqz v2, :cond_40

    .line 1591
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v4, v4, -0x2

    const/16 v12, 0x22

    aput-char v12, v3, v4

    .line 1592
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    aput-char v2, v3, v4

    goto :goto_19

    .line 1594
    :cond_40
    const/16 v12, 0x22

    const/4 v13, 0x1

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v4, v13

    aput-char v12, v3, v4

    .line 1596
    :goto_19
    return-void
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 19
    .param p1, "text"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 2199
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2200
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 2201
    .local v3, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_0

    .line 2202
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2204
    :cond_0
    const-string v5, "null"

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v5, v2, v4, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 2205
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2206
    return-void

    .line 2209
    .end local v3    # "newcount":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2210
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 2211
    .local v4, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x2f

    const/16 v7, 0xd

    const/16 v8, 0x5c

    const/16 v9, 0x27

    if-le v4, v5, :cond_6

    .line 2212
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_5

    .line 2213
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2214
    nop

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 2215
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2216
    .local v5, "ch":C
    if-le v5, v7, :cond_3

    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_3

    if-ne v5, v6, :cond_2

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2217
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 2221
    :cond_2
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .end local v5    # "ch":C
    goto :goto_2

    .line 2218
    .restart local v5    # "ch":C
    :cond_3
    :goto_1
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2219
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v5

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2214
    .end local v5    # "ch":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2224
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2225
    return-void

    .line 2227
    :cond_5
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2230
    :cond_6
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v10, 0x1

    add-int/2addr v5, v10

    .line 2231
    .local v5, "start":I
    add-int v11, v5, v3

    .line 2233
    .local v11, "end":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v12, v13

    .line 2234
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    invoke-virtual {v1, v2, v3, v12, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 2235
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2237
    const/4 v2, 0x0

    .line 2238
    .local v2, "specialCount":I
    const/4 v12, -0x1

    .line 2239
    .local v12, "lastSpecialIndex":I
    const/4 v13, 0x0

    .line 2240
    .local v13, "lastSpecial":C
    move v14, v13

    move v13, v12

    move v12, v2

    move v2, v5

    .local v2, "i":I
    .local v12, "specialCount":I
    .local v13, "lastSpecialIndex":I
    .local v14, "lastSpecial":C
    :goto_3
    if-ge v2, v11, :cond_9

    .line 2241
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v15, v15, v2

    .line 2242
    .local v15, "ch":C
    if-le v15, v7, :cond_7

    if-eq v15, v8, :cond_7

    if-eq v15, v9, :cond_7

    if-ne v15, v6, :cond_8

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2243
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2244
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 2245
    move v6, v2

    .line 2246
    .end local v13    # "lastSpecialIndex":I
    .local v6, "lastSpecialIndex":I
    move v13, v15

    .line 2240
    .end local v14    # "lastSpecial":C
    .end local v15    # "ch":C
    .local v13, "lastSpecial":C
    move v14, v13

    move v13, v6

    .end local v6    # "lastSpecialIndex":I
    .local v13, "lastSpecialIndex":I
    .restart local v14    # "lastSpecial":C
    :cond_8
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x2f

    goto :goto_3

    .line 2250
    .end local v2    # "i":I
    :cond_9
    add-int/2addr v4, v12

    .line 2251
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v4, v2, :cond_a

    .line 2252
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2254
    :cond_a
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2256
    if-ne v12, v10, :cond_b

    .line 2257
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v13, 0x1

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v13, 0x2

    sub-int v16, v11, v13

    add-int/lit8 v9, v16, -0x1

    invoke-static {v2, v6, v7, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2258
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v2, v13

    .line 2259
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v13, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v6, v14

    aput-char v6, v2, v13

    goto/16 :goto_7

    .line 2260
    :cond_b
    if-le v12, v10, :cond_e

    .line 2261
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v13, 0x1

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v13, 0x2

    sub-int v17, v11, v13

    add-int/lit8 v7, v17, -0x1

    invoke-static {v2, v6, v9, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2262
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v2, v13

    .line 2263
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v13, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v6, v14

    aput-char v6, v2, v13

    .line 2264
    add-int/lit8 v11, v11, 0x1

    .line 2265
    add-int/lit8 v2, v13, -0x2

    .restart local v2    # "i":I
    :goto_4
    if-lt v2, v5, :cond_e

    .line 2266
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v2

    .line 2268
    .local v6, "ch":C
    const/16 v7, 0xd

    if-le v6, v7, :cond_d

    if-eq v6, v8, :cond_d

    const/16 v9, 0x27

    if-eq v6, v9, :cond_d

    const/16 v9, 0x2f

    if-ne v6, v9, :cond_c

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2269
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_c

    goto :goto_5

    .line 2265
    .end local v6    # "ch":C
    :cond_c
    move v7, v8

    goto :goto_6

    .line 2270
    .restart local v6    # "ch":C
    :cond_d
    const/16 v9, 0x2f

    :goto_5
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x1

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x2

    sub-int v16, v11, v2

    add-int/lit8 v1, v16, -0x1

    invoke-static {v15, v7, v9, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2271
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x5c

    aput-char v7, v1, v2

    .line 2272
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v6

    aput-char v9, v1, v8

    .line 2273
    add-int/lit8 v11, v11, 0x1

    .line 2265
    .end local v6    # "ch":C
    :goto_6
    add-int/lit8 v2, v2, -0x1

    move v8, v7

    move-object/from16 v1, p1

    goto :goto_4

    .line 2278
    .end local v2    # "i":I
    :cond_e
    :goto_7
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v10

    const/16 v6, 0x27

    aput-char v6, v1, v2

    .line 2279
    return-void
.end method

.method protected writeStringWithSingleQuote([C)V
    .locals 19
    .param p1, "chars"    # [C

    move-object/from16 v0, p0

    .line 2282
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2283
    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    .line 2284
    .local v3, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    if-le v3, v5, :cond_0

    .line 2285
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2287
    :cond_0
    const-string v5, "null"

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {v5, v2, v4, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 2288
    iput v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2289
    return-void

    .line 2292
    .end local v3    # "newcount":I
    :cond_1
    array-length v3, v1

    .line 2293
    .local v3, "len":I
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    .line 2294
    .local v4, "newcount":I
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v5, v5

    const/16 v6, 0x2f

    const/16 v7, 0xd

    const/16 v8, 0x5c

    const/16 v9, 0x27

    if-le v4, v5, :cond_6

    .line 2295
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v5, :cond_5

    .line 2296
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2297
    nop

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 2298
    aget-char v5, v1, v2

    .line 2299
    .local v5, "ch":C
    if-le v5, v7, :cond_3

    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_3

    if-ne v5, v6, :cond_2

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2300
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 2304
    :cond_2
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .end local v5    # "ch":C
    goto :goto_2

    .line 2301
    .restart local v5    # "ch":C
    :cond_3
    :goto_1
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2302
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v10, v10, v5

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2297
    .end local v5    # "ch":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2307
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 2308
    return-void

    .line 2310
    :cond_5
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2313
    :cond_6
    iget v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v10, 0x1

    add-int/2addr v5, v10

    .line 2314
    .local v5, "start":I
    add-int v11, v5, v3

    .line 2316
    .local v11, "end":I
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v9, v12, v13

    .line 2318
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v13, v1

    invoke-static {v1, v2, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2319
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2321
    const/4 v2, 0x0

    .line 2322
    .local v2, "specialCount":I
    const/4 v12, -0x1

    .line 2323
    .local v12, "lastSpecialIndex":I
    const/4 v13, 0x0

    .line 2324
    .local v13, "lastSpecial":C
    move v14, v13

    move v13, v12

    move v12, v2

    move v2, v5

    .local v2, "i":I
    .local v12, "specialCount":I
    .local v13, "lastSpecialIndex":I
    .local v14, "lastSpecial":C
    :goto_3
    if-ge v2, v11, :cond_9

    .line 2325
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v15, v15, v2

    .line 2326
    .local v15, "ch":C
    if-le v15, v7, :cond_7

    if-eq v15, v8, :cond_7

    if-eq v15, v9, :cond_7

    if-ne v15, v6, :cond_8

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2327
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2328
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 2329
    move v6, v2

    .line 2330
    .end local v13    # "lastSpecialIndex":I
    .local v6, "lastSpecialIndex":I
    move v13, v15

    .line 2324
    .end local v14    # "lastSpecial":C
    .end local v15    # "ch":C
    .local v13, "lastSpecial":C
    move v14, v13

    move v13, v6

    .end local v6    # "lastSpecialIndex":I
    .local v13, "lastSpecialIndex":I
    .restart local v14    # "lastSpecial":C
    :cond_8
    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x2f

    goto :goto_3

    .line 2334
    .end local v2    # "i":I
    :cond_9
    add-int/2addr v4, v12

    .line 2335
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v2, v2

    if-le v4, v2, :cond_a

    .line 2336
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    .line 2338
    :cond_a
    iput v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 2340
    if-ne v12, v10, :cond_b

    .line 2341
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v13, 0x1

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v13, 0x2

    sub-int v16, v11, v13

    add-int/lit8 v9, v16, -0x1

    invoke-static {v2, v6, v7, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2342
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v2, v13

    .line 2343
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v13, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v6, v14

    aput-char v6, v2, v13

    goto/16 :goto_7

    .line 2344
    :cond_b
    if-le v12, v10, :cond_e

    .line 2345
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v6, v13, 0x1

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v15, v13, 0x2

    sub-int v17, v11, v13

    add-int/lit8 v7, v17, -0x1

    invoke-static {v2, v6, v9, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2346
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aput-char v8, v2, v13

    .line 2347
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v13, 0x1

    sget-object v6, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v6, v6, v14

    aput-char v6, v2, v13

    .line 2348
    add-int/lit8 v11, v11, 0x1

    .line 2349
    add-int/lit8 v2, v13, -0x2

    .restart local v2    # "i":I
    :goto_4
    if-lt v2, v5, :cond_e

    .line 2350
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    aget-char v6, v6, v2

    .line 2352
    .local v6, "ch":C
    const/16 v7, 0xd

    if-le v6, v7, :cond_d

    if-eq v6, v8, :cond_d

    const/16 v9, 0x27

    if-eq v6, v9, :cond_d

    const/16 v9, 0x2f

    if-ne v6, v9, :cond_c

    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2353
    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v15

    if-eqz v15, :cond_c

    goto :goto_5

    .line 2349
    .end local v6    # "ch":C
    :cond_c
    move v7, v8

    goto :goto_6

    .line 2354
    .restart local v6    # "ch":C
    :cond_d
    const/16 v9, 0x2f

    :goto_5
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v2, 0x1

    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x2

    sub-int v16, v11, v2

    add-int/lit8 v1, v16, -0x1

    invoke-static {v15, v7, v9, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2355
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/16 v7, 0x5c

    aput-char v7, v1, v2

    .line 2356
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aget-char v9, v9, v6

    aput-char v9, v1, v8

    .line 2357
    add-int/lit8 v11, v11, 0x1

    .line 2349
    .end local v6    # "ch":C
    :goto_6
    add-int/lit8 v2, v2, -0x1

    move v8, v7

    move-object/from16 v1, p1

    goto :goto_4

    .line 2362
    .end local v2    # "i":I
    :cond_e
    :goto_7
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v2, v10

    const/16 v6, 0x27

    aput-char v6, v1, v2

    .line 2363
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 381
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    .line 385
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 377
    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    .line 392
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    if-ne p2, v0, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->encodeToUTF8(Ljava/io/OutputStream;)I

    move-result v0

    return v0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 396
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 397
    array-length v1, v0

    return v1

    .line 389
    .end local v0    # "bytes":[B
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writer not null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
