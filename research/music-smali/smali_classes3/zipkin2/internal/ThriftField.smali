.class final Lzipkin2/internal/ThriftField;
.super Ljava/lang/Object;
.source "ThriftField.java"


# instance fields
.field final a:B

.field final b:I


# direct methods
.method constructor <init>(BI)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-byte p1, p0, Lzipkin2/internal/ThriftField;->a:B

    .line 38
    iput p2, p0, Lzipkin2/internal/ThriftField;->b:I

    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;
    .locals 2

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 50
    new-instance v1, Lzipkin2/internal/ThriftField;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    :goto_0
    invoke-direct {v1, v0, p0}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    return-object v1
.end method


# virtual methods
.method a(Lzipkin2/internal/Buffer;)V
    .locals 1

    .line 42
    iget-byte v0, p0, Lzipkin2/internal/ThriftField;->a:B

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 44
    iget v0, p0, Lzipkin2/internal/ThriftField;->b:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 45
    iget v0, p0, Lzipkin2/internal/ThriftField;->b:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    return-void
.end method

.method a(Lzipkin2/internal/ThriftField;)Z
    .locals 2

    .line 54
    iget-byte v0, p0, Lzipkin2/internal/ThriftField;->a:B

    iget-byte v1, p1, Lzipkin2/internal/ThriftField;->a:B

    if-ne v0, v1, :cond_0

    iget v0, p0, Lzipkin2/internal/ThriftField;->b:I

    iget p1, p1, Lzipkin2/internal/ThriftField;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
