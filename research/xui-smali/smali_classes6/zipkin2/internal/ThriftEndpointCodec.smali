.class final Lzipkin2/internal/ThriftEndpointCodec;
.super Ljava/lang/Object;
.source "ThriftEndpointCodec.java"


# static fields
.field static final INT_ZERO:[B

.field static final IPV4:Lzipkin2/internal/ThriftField;

.field static final IPV6:Lzipkin2/internal/ThriftField;

.field static final PORT:Lzipkin2/internal/ThriftField;

.field static final SERVICE_NAME:Lzipkin2/internal/ThriftField;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lzipkin2/internal/ThriftEndpointCodec;->INT_ZERO:[B

    .line 28
    new-instance v1, Lzipkin2/internal/ThriftField;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v1, Lzipkin2/internal/ThriftEndpointCodec;->IPV4:Lzipkin2/internal/ThriftField;

    .line 29
    new-instance v1, Lzipkin2/internal/ThriftField;

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v1, Lzipkin2/internal/ThriftEndpointCodec;->PORT:Lzipkin2/internal/ThriftField;

    .line 30
    new-instance v1, Lzipkin2/internal/ThriftField;

    const/16 v2, 0xb

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v1, Lzipkin2/internal/ThriftEndpointCodec;->SERVICE_NAME:Lzipkin2/internal/ThriftField;

    .line 31
    new-instance v1, Lzipkin2/internal/ThriftField;

    invoke-direct {v1, v2, v0}, Lzipkin2/internal/ThriftField;-><init>(BI)V

    sput-object v1, Lzipkin2/internal/ThriftEndpointCodec;->IPV6:Lzipkin2/internal/ThriftField;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Ljava/nio/ByteBuffer;)Lzipkin2/Endpoint;
    .locals 6
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .line 34
    invoke-static {}, Lzipkin2/Endpoint;->newBuilder()Lzipkin2/Endpoint$Builder;

    move-result-object v0

    .line 37
    .local v0, "result":Lzipkin2/Endpoint$Builder;
    :goto_0
    invoke-static {p0}, Lzipkin2/internal/ThriftField;->read(Ljava/nio/ByteBuffer;)Lzipkin2/internal/ThriftField;

    move-result-object v1

    .line 38
    .local v1, "thriftField":Lzipkin2/internal/ThriftField;
    iget-byte v2, v1, Lzipkin2/internal/ThriftField;->type:B

    if-nez v2, :cond_0

    .line 61
    .end local v1    # "thriftField":Lzipkin2/internal/ThriftField;
    invoke-virtual {v0}, Lzipkin2/Endpoint$Builder;->build()Lzipkin2/Endpoint;

    move-result-object v1

    return-object v1

    .line 40
    .restart local v1    # "thriftField":Lzipkin2/internal/ThriftField;
    :cond_0
    sget-object v2, Lzipkin2/internal/ThriftEndpointCodec;->IPV4:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, v2}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 42
    .local v2, "ipv4":I
    if-eqz v2, :cond_1

    .line 43
    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x3

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-virtual {v0, v3}, Lzipkin2/Endpoint$Builder;->parseIp([B)Z

    .line 51
    .end local v2    # "ipv4":I
    :cond_1
    goto :goto_1

    :cond_2
    sget-object v2, Lzipkin2/internal/ThriftEndpointCodec;->PORT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, v2}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lzipkin2/Endpoint$Builder;->port(I)Lzipkin2/Endpoint$Builder;

    goto :goto_1

    .line 53
    :cond_3
    sget-object v2, Lzipkin2/internal/ThriftEndpointCodec;->SERVICE_NAME:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, v2}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->readUtf8(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/Endpoint$Builder;->serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;

    goto :goto_1

    .line 55
    :cond_4
    sget-object v2, Lzipkin2/internal/ThriftEndpointCodec;->IPV6:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, v2}, Lzipkin2/internal/ThriftField;->isEqualTo(Lzipkin2/internal/ThriftField;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    invoke-static {p0}, Lzipkin2/internal/ThriftCodec;->readByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lzipkin2/Endpoint$Builder;->parseIp([B)Z

    goto :goto_1

    .line 58
    :cond_5
    iget-byte v2, v1, Lzipkin2/internal/ThriftField;->type:B

    invoke-static {p0, v2}, Lzipkin2/internal/ThriftCodec;->skip(Ljava/nio/ByteBuffer;B)V

    .line 60
    .end local v1    # "thriftField":Lzipkin2/internal/ThriftField;
    :goto_1
    goto :goto_0
.end method

.method static sizeInBytes(Lzipkin2/Endpoint;)I
    .locals 4
    .param p0, "value"    # Lzipkin2/Endpoint;

    .line 65
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "serviceName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, "sizeInBytes":I
    const/4 v2, 0x7

    add-int/2addr v1, v2

    .line 68
    add-int/lit8 v1, v1, 0x5

    .line 69
    if-eqz v0, :cond_0

    invoke-static {v0}, Lzipkin2/internal/Buffer;->utf8SizeInBytes(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 70
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x17

    .line 71
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 72
    return v1
.end method

.method static write(Lzipkin2/Endpoint;Lzipkin2/internal/Buffer;)V
    .locals 3
    .param p0, "value"    # Lzipkin2/Endpoint;
    .param p1, "buffer"    # Lzipkin2/internal/Buffer;

    .line 76
    sget-object v0, Lzipkin2/internal/ThriftEndpointCodec;->IPV4:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 77
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4Bytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4Bytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lzipkin2/internal/ThriftEndpointCodec;->INT_ZERO:[B

    :goto_0
    invoke-virtual {p1, v0}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    .line 79
    sget-object v0, Lzipkin2/internal/ThriftEndpointCodec;->PORT:Lzipkin2/internal/ThriftField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 80
    invoke-virtual {p0}, Lzipkin2/Endpoint;->portAsInt()I

    move-result v0

    .line 82
    .local v0, "port":I
    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 83
    and-int/lit16 v1, v0, 0xff

    invoke-virtual {p1, v1}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 85
    sget-object v1, Lzipkin2/internal/ThriftEndpointCodec;->SERVICE_NAME:Lzipkin2/internal/ThriftField;

    invoke-virtual {v1, p1}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 86
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-static {p1, v1}, Lzipkin2/internal/ThriftCodec;->writeLengthPrefixed(Lzipkin2/internal/Buffer;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6Bytes()[B

    move-result-object v1

    .line 89
    .local v1, "ipv6":[B
    if-eqz v1, :cond_2

    .line 90
    sget-object v2, Lzipkin2/internal/ThriftEndpointCodec;->IPV6:Lzipkin2/internal/ThriftField;

    invoke-virtual {v2, p1}, Lzipkin2/internal/ThriftField;->write(Lzipkin2/internal/Buffer;)V

    .line 91
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lzipkin2/internal/ThriftCodec;->writeInt(Lzipkin2/internal/Buffer;I)V

    .line 92
    invoke-virtual {p1, v1}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    .line 95
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 96
    return-void
.end method
