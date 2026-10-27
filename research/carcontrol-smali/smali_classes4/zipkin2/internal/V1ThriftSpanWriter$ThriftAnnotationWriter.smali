.class Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;
.super Ljava/lang/Object;
.source "V1ThriftSpanWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/V1ThriftSpanWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThriftAnnotationWriter"
.end annotation


# static fields
.field static final ENDPOINT:Lzipkin2/internal/ThriftField;

.field static final TIMESTAMP:Lzipkin2/internal/ThriftField;

.field static final VALUE:Lzipkin2/internal/ThriftField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 200
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;->TIMESTAMP:Lzipkin2/internal/ThriftField;

    .line 201
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;->VALUE:Lzipkin2/internal/ThriftField;

    .line 202
    new-instance v0, Lzipkin2/internal/ThriftField;

    const/16 v1, 0xc

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;->ENDPOINT:Lzipkin2/internal/ThriftField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sizeInBytes(II)I
    .locals 1

    add-int/lit8 p0, p0, 0x7

    const/16 v0, 0xb

    add-int/2addr v0, p0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static write(JLjava/lang/String;[BLzipkin2/internal/Buffer;)V
    .locals 1

    .line 214
    sget-object v0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;->TIMESTAMP:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p4}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 215
    invoke-static {p4, p0, p1}, Lzipkin2/internal/ThriftCodec;->writeLong(Lzipkin2/internal/Buffer;J)V

    .line 217
    sget-object p0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;->VALUE:Lzipkin2/internal/ThriftField;

    invoke-virtual {p0, p4}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 218
    invoke-static {p4, p2}, Lzipkin2/internal/ThriftCodec;->writeLengthPrefixed(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 221
    sget-object p0, Lzipkin2/internal/V1ThriftSpanWriter$ThriftAnnotationWriter;->ENDPOINT:Lzipkin2/internal/ThriftField;

    invoke-virtual {p0, p4}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 222
    invoke-virtual {p4, p3}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    :cond_0
    const/4 p0, 0x0

    .line 224
    invoke-virtual {p4, p0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method
