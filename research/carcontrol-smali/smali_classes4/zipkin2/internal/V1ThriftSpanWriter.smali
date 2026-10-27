.class public final Lzipkin2/internal/V1ThriftSpanWriter;
.super Ljava/lang/Object;
.source "V1ThriftSpanWriter.java"

# interfaces
.implements Lzipkin2/internal/Buffer$Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;,
        Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/Buffer$Writer<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# static fields
.field static final ANNOTATIONS:Lzipkin2/internal/ThriftField;

.field static final BINARY_ANNOTATIONS:Lzipkin2/internal/ThriftField;

.field static final DEBUG:Lzipkin2/internal/ThriftField;

.field static final DURATION:Lzipkin2/internal/ThriftField;

.field static final EMPTY_ARRAY:[B

.field static final ID:Lzipkin2/internal/ThriftField;

.field static final NAME:Lzipkin2/internal/ThriftField;

.field static final PARENT_ID:Lzipkin2/internal/ThriftField;

.field static final TIMESTAMP:Lzipkin2/internal/ThriftField;

.field static final TRACE_ID:Lzipkin2/internal/ThriftField;

.field static final TRACE_ID_HIGH:Lzipkin2/internal/ThriftField;


# instance fields
.field final converter:Lzipkin2/v1/V2SpanConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->TRACE_ID:Lzipkin2/internal/ThriftField;

    .line 38
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->TRACE_ID_HIGH:Lzipkin2/internal/ThriftField;

    .line 39
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->NAME:Lzipkin2/internal/ThriftField;

    .line 40
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->ID:Lzipkin2/internal/ThriftField;

    .line 41
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->PARENT_ID:Lzipkin2/internal/ThriftField;

    .line 42
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v3, 0xf

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->ANNOTATIONS:Lzipkin2/internal/ThriftField;

    .line 43
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->BINARY_ANNOTATIONS:Lzipkin2/internal/ThriftField;

    .line 44
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/4 v3, 0x2

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->DEBUG:Lzipkin2/internal/ThriftField;

    .line 45
    new-instance v0, Lzipkin2/internal/ThriftField;

    invoke-direct {v0, v1, v1}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->TIMESTAMP:Lzipkin2/internal/ThriftField;

    .line 46
    new-instance v0, Lzipkin2/internal/ThriftField;

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->DURATION:Lzipkin2/internal/ThriftField;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 48
    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter;->EMPTY_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lzipkin2/v1/V2SpanConverter;->create()Lzipkin2/v1/V2SpanConverter;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/internal/V1ThriftSpanWriter;->converter:Lzipkin2/v1/V2SpanConverter;

    return-void
.end method

.method static legacyEndpointBytes(Lzipkin2/Endpoint;)[B
    .locals 2
    .param p0    # Lzipkin2/Endpoint;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-static {p0}, Lzipkin2/internal/ThriftEndpointCodec;->sizeInBytes(Lzipkin2/Endpoint;)I

    move-result v1

    invoke-direct {v0, v1}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 194
    invoke-static {p0, v0}, Lzipkin2/internal/ThriftEndpointCodec;->write(Lzipkin2/Endpoint;Lzipkin2/internal/Buffer;)V

    .line 195
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static writeAnnotations(Lzipkin2/internal/Buffer;Lzipkin2/v1/V1Span;[B)V
    .locals 5

    .line 143
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    invoke-static {p0, v0}, Lzipkin2/internal/ThriftCodec;->writeListBegin(Lzipkin2/internal/Buffer;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 146
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/v1/V1Annotation;

    .line 147
    invoke-virtual {v2}, Lzipkin2/v1/V1Annotation;->timestamp()J

    move-result-wide v3

    invoke-virtual {v2}, Lzipkin2/v1/V1Annotation;->value()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, p2, p0}, Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;->write(JLjava/lang/String;[BLzipkin2/internal/Buffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static writeBinaryAnnotations(Lzipkin2/internal/Buffer;Lzipkin2/v1/V1Span;[B)V
    .locals 5

    .line 152
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    invoke-static {p0, v0}, Lzipkin2/internal/ThriftCodec;->writeListBegin(Lzipkin2/internal/Buffer;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 155
    invoke-virtual {p1}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/v1/V1BinaryAnnotation;

    .line 156
    invoke-virtual {v2}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lzipkin2/v1/V1BinaryAnnotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v3

    invoke-static {v3}, Lzipkin2/internal/V1ThriftSpanWriter;->legacyEndpointBytes(Lzipkin2/Endpoint;)[B

    move-result-object v3

    .line 157
    :goto_1
    invoke-virtual {v2}, Lzipkin2/v1/V1BinaryAnnotation;->key()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3, p0}, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->write(Ljava/lang/String;Ljava/lang/String;[BLzipkin2/internal/Buffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/internal/V1ThriftSpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 10

    .line 54
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanWriter;->converter:Lzipkin2/v1/V2SpanConverter;

    invoke-virtual {v0, p1}, Lzipkin2/v1/V2SpanConverter;->convert(Lzipkin2/Span;)Lzipkin2/v1/V1Span;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/ThriftEndpointCodec;->sizeInBytes(Lzipkin2/Endpoint;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 60
    :goto_0
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->traceIdHigh()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/16 v4, 0xb

    if-eqz v3, :cond_1

    const/16 v3, 0x16

    goto :goto_1

    :cond_1
    move v3, v4

    .line 61
    :goto_1
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->parentId()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-eqz v7, :cond_2

    add-int/lit8 v3, v3, 0xb

    :cond_2
    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    .line 64
    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v3, p1

    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 68
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v4, v2

    :goto_2
    if-ge v4, p1, :cond_4

    .line 69
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->annotations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzipkin2/v1/V1Annotation;

    invoke-virtual {v7}, Lzipkin2/v1/V1Annotation;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v7

    .line 70
    invoke-static {v7, v1}, Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;->sizeInBytes(II)I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x8

    .line 74
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    const/4 v4, 0x1

    if-ge v2, p1, :cond_6

    .line 75
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->binaryAnnotations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzipkin2/v1/V1BinaryAnnotation;

    .line 76
    invoke-virtual {v7}, Lzipkin2/v1/V1BinaryAnnotation;->key()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v8

    .line 77
    invoke-virtual {v7}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 78
    invoke-virtual {v7}, Lzipkin2/v1/V1BinaryAnnotation;->stringValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v4

    .line 79
    invoke-static {v8, v4, v1}, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->sizeInBytes(III)I

    move-result v4

    goto :goto_4

    .line 81
    :cond_5
    invoke-virtual {v7}, Lzipkin2/v1/V1BinaryAnnotation;->endpoint()Lzipkin2/Endpoint;

    move-result-object v7

    invoke-static {v7}, Lzipkin2/internal/ThriftEndpointCodec;->sizeInBytes(Lzipkin2/Endpoint;)I

    move-result v7

    .line 82
    invoke-static {v8, v4, v7}, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->sizeInBytes(III)I

    move-result v4

    :goto_4
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 86
    :cond_6
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->debug()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_7

    add-int/lit8 v3, v3, 0x4

    .line 87
    :cond_7
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->timestamp()J

    move-result-wide v1

    cmp-long p1, v1, v5

    if-eqz p1, :cond_8

    add-int/lit8 v3, v3, 0xb

    .line 88
    :cond_8
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->duration()J

    move-result-wide v0

    cmp-long p1, v0, v5

    if-eqz p1, :cond_9

    add-int/lit8 v3, v3, 0xb

    :cond_9
    add-int/2addr v3, v4

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    .locals 0

    .line 35
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/V1ThriftSpanWriter;->write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V

    return-void
.end method

.method public write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V
    .locals 6

    .line 96
    iget-object v0, p0, Lzipkin2/internal/V1ThriftSpanWriter;->converter:Lzipkin2/v1/V2SpanConverter;

    invoke-virtual {v0, p1}, Lzipkin2/v1/V2SpanConverter;->convert(Lzipkin2/Span;)Lzipkin2/v1/V1Span;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v1

    invoke-static {v1}, Lzipkin2/internal/V1ThriftSpanWriter;->legacyEndpointBytes(Lzipkin2/Endpoint;)[B

    move-result-object v1

    .line 99
    sget-object v2, Lzipkin2/internal/V1ThriftSpanWriter;->TRACE_ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {v2, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 100
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->traceId()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    .line 102
    sget-object v2, Lzipkin2/internal/V1ThriftSpanWriter;->NAME:Lzipkin2/internal/ThriftField;

    invoke-virtual {v2, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 103
    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p2, p1}, Lzipkin2/internal/ThriftCodec;->writeLengthPrefixed(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    .line 105
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {p1, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 106
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->id()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    .line 108
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->parentId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    .line 109
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->PARENT_ID:Lzipkin2/internal/ThriftField;

    invoke-virtual {p1, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 110
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->parentId()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    .line 114
    :cond_1
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->ANNOTATIONS:Lzipkin2/internal/ThriftField;

    invoke-virtual {p1, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 115
    invoke-static {p2, v0, v1}, Lzipkin2/internal/V1ThriftSpanWriter;->writeAnnotations(Lzipkin2/internal/Buffer;Lzipkin2/v1/V1Span;[B)V

    .line 117
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->BINARY_ANNOTATIONS:Lzipkin2/internal/ThriftField;

    invoke-virtual {p1, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 118
    invoke-static {p2, v0, v1}, Lzipkin2/internal/V1ThriftSpanWriter;->writeBinaryAnnotations(Lzipkin2/internal/Buffer;Lzipkin2/v1/V1Span;[B)V

    .line 120
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->debug()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->DEBUG:Lzipkin2/internal/ThriftField;

    invoke-virtual {p1, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 122
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->debug()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 125
    :cond_2
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->timestamp()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-eqz p1, :cond_3

    .line 126
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->TIMESTAMP:Lzipkin2/internal/ThriftField;

    invoke-virtual {p1, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 127
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->timestamp()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    .line 129
    :cond_3
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->duration()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-eqz p1, :cond_4

    .line 130
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->DURATION:Lzipkin2/internal/ThriftField;

    invoke-virtual {p1, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 131
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->duration()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    .line 134
    :cond_4
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->traceIdHigh()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-eqz p1, :cond_5

    .line 135
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->TRACE_ID_HIGH:Lzipkin2/internal/ThriftField;

    invoke-virtual {p1, p2}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 136
    invoke-virtual {v0}, Lzipkin2/v1/V1Span;->traceIdHigh()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    :cond_5
    const/4 p1, 0x0

    .line 139
    invoke-virtual {p2, p1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

.method public write(Lzipkin2/Span;)[B
    .locals 2

    .line 176
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-virtual {p0, p1}, Lzipkin2/internal/V1ThriftSpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result v1

    invoke-direct {v0, v1}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 177
    invoke-virtual {p0, p1, v0}, Lzipkin2/internal/V1ThriftSpanWriter;->write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V

    .line 178
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public writeList(Ljava/util/List;[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;[BI)I"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 185
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-direct {v0, p2, p3}, Lzipkin2/internal/Buffer;-><init>([BI)V

    .line 186
    invoke-static {p0, p1, v0}, Lzipkin2/internal/ThriftCodec;->writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V

    .line 188
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->pos()I

    move-result p1

    sub-int/2addr p1, p3

    return p1
.end method

.method public writeList(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)[B"
        }
    .end annotation

    .line 167
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object p1, Lzipkin2/internal/V1ThriftSpanWriter;->EMPTY_ARRAY:[B

    return-object p1

    .line 170
    :cond_0
    new-instance v0, Lzipkin2/internal/Buffer;

    invoke-static {p0, p1}, Lzipkin2/internal/ThriftCodec;->listSizeInBytes(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;)I

    move-result v1

    invoke-direct {v0, v1}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 171
    invoke-static {p0, p1, v0}, Lzipkin2/internal/ThriftCodec;->writeList(Lzipkin2/internal/Buffer$Writer;Ljava/util/List;Lzipkin2/internal/Buffer;)V

    .line 172
    invoke-virtual {v0}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
