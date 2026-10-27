.class final Lzipkin2/internal/ThriftField;
.super Ljava/lang/Object;
.source "ThriftField.java"


# static fields
.field static final TYPE_BOOL:B = 0x2t

.field static final TYPE_BYTE:B = 0x3t

.field static final TYPE_DOUBLE:B = 0x4t

.field static final TYPE_I16:B = 0x6t

.field static final TYPE_I32:B = 0x8t

.field static final TYPE_I64:B = 0xat

.field static final TYPE_LIST:B = 0xft

.field static final TYPE_MAP:B = 0xdt

.field static final TYPE_SET:B = 0xet

.field static final TYPE_STOP:B = 0x0t

.field static final TYPE_STRING:B = 0xbt

.field static final TYPE_STRUCT:B = 0xct


# instance fields
.field final id:I

.field final type:B


# direct methods
.method constructor <init>(BI)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "id"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-byte p1, p0, Lzipkin2/internal/ThriftField;->type:B

    .line 38
    iput p2, p0, Lzipkin2/internal/ThriftField;->id:I

    .line 39
    return-void
.end method

.method static read(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;
    .locals 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 50
    .local v0, "type":B
    new-instance v1, Lzipkin2/internal/ThriftField;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    :goto_0
    invoke-direct {v1, v0, v2}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    return-object v1
.end method


# virtual methods
.method isEqualTo(Lzipkin2/internal/ThriftField;)Z
    .locals 2
    .param p1, "that"    # Lzipkin2/internal/ThriftField;

    .line 54
    iget-byte v0, p0, Lzipkin2/internal/ThriftField;->type:B

    iget-byte v1, p1, Lzipkin2/internal/ThriftField;->type:B

    if-ne v0, v1, :cond_0

    iget v0, p0, Lzipkin2/internal/ThriftField;->id:I

    iget v1, p1, Lzipkin2/internal/ThriftField;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method write(Lzipkin2/internal/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lzipkin2/internal/Buffer;

    .line 42
    iget-byte v0, p0, Lzipkin2/internal/ThriftField;->type:B

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 44
    iget v0, p0, Lzipkin2/internal/ThriftField;->id:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 45
    iget v0, p0, Lzipkin2/internal/ThriftField;->id:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 46
    return-void
.end method
