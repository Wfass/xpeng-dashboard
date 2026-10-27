.class Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;
.super Ljava/lang/Object;
.source "V1ThriftSpanWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/V1ThriftSpanWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThriftBinaryAnnotationWriter"
.end annotation


# static fields
.field static final ENDPOINT:Lzipkin2/internal/ThriftField;

.field static final KEY:Lzipkin2/internal/ThriftField;

.field static final TYPE:Lzipkin2/internal/ThriftField;

.field static final VALUE:Lzipkin2/internal/ThriftField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 230
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->KEY:Lzipkin2/internal/ThriftField;

    .line 231
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->VALUE:Lzipkin2/internal/ThriftField;

    .line 232
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->TYPE:Lzipkin2/internal/ThriftField;

    .line 233
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xc

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->ENDPOINT:Lzipkin2/internal/ThriftField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sizeInBytes(III)I
    .locals 3
    .param p0, "keySize"    # I
    .param p1, "valueSize"    # I
    .param p2, "endpointSizeInBytes"    # I

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "sizeInBytes":I
    const/4 v1, 0x7

    add-int v2, v1, p0

    add-int/2addr v0, v2

    .line 238
    add-int v2, v1, p1

    add-int/2addr v0, v2

    .line 239
    add-int/2addr v0, v1

    .line 240
    if-lez p2, :cond_0

    const/4 v1, 0x3

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 242
    return v0
.end method

.method static write(Ljava/lang/String;Ljava/lang/String;[BLzipkin2/internal/Buffer;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "stringValue"    # Ljava/lang/String;
    .param p2, "endpointBytes"    # [B
    .param p3, "buffer"    # Lzipkin2/internal/Buffer;

    .line 246
    sget-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->KEY:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p3}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 247
    invoke-static {p3, p0}, Lzipkin2/internal/ThriftCodec;->writeLengthPrefixed(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->VALUE:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p3}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 252
    const/4 v0, 0x6

    .line 253
    invoke-static {p1}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v1

    invoke-static {p3, v1}, Lzipkin2/internal/ThriftCodec;->writeInt(Lzipkin2/internal/Buffer;I)V

    .line 254
    invoke-virtual {p3, p1}, Lzipkin2/internal/Buffer;->writeUtf8(Ljava/lang/String;)Lzipkin2/internal/Buffer;

    goto :goto_0

    .line 256
    :cond_0
    const/4 v1, 0x1

    invoke-static {p3, v1}, Lzipkin2/internal/ThriftCodec;->writeInt(Lzipkin2/internal/Buffer;I)V

    .line 257
    invoke-virtual {p3, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 260
    :goto_0
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->TYPE:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, p3}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 261
    invoke-static {p3, v0}, Lzipkin2/internal/ThriftCodec;->writeInt(Lzipkin2/internal/Buffer;I)V

    .line 263
    if-eqz p2, :cond_1

    .line 264
    sget-object v1, Lzipkin2/internal/V1ThriftSpanWriter$ThriftBinaryAnnotationWriter;->ENDPOINT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, p3}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 265
    invoke-virtual {p3, p2}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    .line 268
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 269
    return-void
.end method
