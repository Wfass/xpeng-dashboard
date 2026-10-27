.class public final Lzipkin2/Endpoint$Builder;
.super Ljava/lang/Object;
.source "Endpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field ipv4:Ljava/lang/String;

.field ipv4Bytes:[B

.field ipv6:Ljava/lang/String;

.field ipv6Bytes:[B

.field port:I

.field serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lzipkin2/Endpoint;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-object v0, p1, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->serviceName:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    .line 115
    iget-object v0, p1, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lzipkin2/Endpoint;->ipv4Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    .line 117
    iget-object v0, p1, Lzipkin2/Endpoint;->ipv6Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6Bytes:[B

    .line 118
    iget p1, p1, Lzipkin2/Endpoint;->port:I

    iput p1, p0, Lzipkin2/Endpoint$Builder;->port:I

    return-void
.end method


# virtual methods
.method public build()Lzipkin2/Endpoint;
    .locals 1

    .line 263
    new-instance v0, Lzipkin2/Endpoint;

    invoke-direct {v0, p0}, Lzipkin2/Endpoint;-><init>(Lzipkin2/Endpoint$Builder;)V

    return-object v0
.end method

.method public ip(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 202
    invoke-virtual {p0, p1}, Lzipkin2/Endpoint$Builder;->parseIp(Ljava/lang/String;)Z

    return-object p0
.end method

.method public ip(Ljava/net/InetAddress;)Lzipkin2/Endpoint$Builder;
    .locals 0
    .param p1    # Ljava/net/InetAddress;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    .line 140
    invoke-virtual {p0, p1}, Lzipkin2/Endpoint$Builder;->parseIp(Ljava/net/InetAddress;)Z

    return-object p0
.end method

.method merge(Lzipkin2/Endpoint;)Lzipkin2/Endpoint$Builder;
    .locals 1

    .line 122
    iget-object v0, p0, Lzipkin2/Endpoint$Builder;->serviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->serviceName:Ljava/lang/String;

    .line 123
    :cond_0
    iget-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    .line 124
    :cond_1
    iget-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6:Ljava/lang/String;

    .line 125
    :cond_2
    iget-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    if-nez v0, :cond_3

    iget-object v0, p1, Lzipkin2/Endpoint;->ipv4Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    .line 126
    :cond_3
    iget-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6Bytes:[B

    if-nez v0, :cond_4

    iget-object v0, p1, Lzipkin2/Endpoint;->ipv6Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6Bytes:[B

    .line 127
    :cond_4
    iget v0, p0, Lzipkin2/Endpoint$Builder;->port:I

    if-nez v0, :cond_5

    iget p1, p1, Lzipkin2/Endpoint;->port:I

    iput p1, p0, Lzipkin2/Endpoint$Builder;->port:I

    :cond_5
    return-object p0
.end method

.method parseEmbeddedIPv4([B)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 271
    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/16 v2, 0xc

    .line 277
    aget-byte v2, p1, v2

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    const/16 v4, 0xe

    aget-byte v4, p1, v4

    const/16 v5, 0xf

    aget-byte p1, p1, v5

    const/4 v5, 0x1

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-ne p1, v5, :cond_3

    return v0

    .line 282
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v6, v2, 0xff

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v7, v3, 0xff

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v7, v4, 0xff

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v6, p1, 0xff

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [B

    aput-byte v2, v1, v0

    aput-byte v3, v1, v5

    const/4 v0, 0x2

    aput-byte v4, v1, v0

    const/4 v0, 0x3

    aput-byte p1, v1, v0

    .line 283
    iput-object v1, p0, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    return v5
.end method

.method public final parseIp(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    invoke-static {p1}, Lzipkin2/Endpoint;->detectFamily(Ljava/lang/String;)Lzipkin2/Endpoint$IpFamily;

    move-result-object v1

    .line 222
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->IPv4:Lzipkin2/Endpoint$IpFamily;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 223
    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    .line 224
    invoke-static {p1}, Lzipkin2/Endpoint;->getIpv4Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    goto :goto_0

    .line 225
    :cond_1
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->IPv4Embedded:Lzipkin2/Endpoint$IpFamily;

    if-ne v1, v2, :cond_2

    const/16 v0, 0x3a

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    .line 227
    invoke-static {p1}, Lzipkin2/Endpoint;->getIpv4Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    goto :goto_0

    .line 228
    :cond_2
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->IPv6:Lzipkin2/Endpoint$IpFamily;

    if-ne v1, v2, :cond_4

    .line 229
    invoke-static {p1}, Lzipkin2/Endpoint;->access$000(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    .line 231
    :cond_3
    invoke-static {p1}, Lzipkin2/Endpoint;->writeIpV6([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6:Ljava/lang/String;

    .line 232
    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv6Bytes:[B

    :goto_0
    return v3

    :cond_4
    :goto_1
    return v0
.end method

.method public final parseIp(Ljava/net/InetAddress;)Z
    .locals 2
    .param p1    # Ljava/net/InetAddress;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    goto :goto_0

    .line 162
    :cond_1
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_3

    .line 163
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Lzipkin2/Endpoint$Builder;->parseEmbeddedIPv4([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    invoke-static {p1}, Lzipkin2/Endpoint;->writeIpV6([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6:Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv6Bytes:[B

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final parseIp([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 181
    :cond_0
    array-length v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 182
    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_1
    array-length v1, p1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    .line 190
    invoke-virtual {p0, p1}, Lzipkin2/Endpoint$Builder;->parseEmbeddedIPv4([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    invoke-static {p1}, Lzipkin2/Endpoint;->writeIpV6([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/Endpoint$Builder;->ipv6:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->ipv6Bytes:[B

    :cond_2
    :goto_0
    return v3

    :cond_3
    return v0
.end method

.method public port(I)Lzipkin2/Endpoint$Builder;
    .locals 3

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 258
    :cond_0
    iput p1, p0, Lzipkin2/Endpoint$Builder;->port:I

    return-object p0

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public port(Ljava/lang/Integer;)Lzipkin2/Endpoint$Builder;
    .locals 3
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    .line 248
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_2
    iput v0, p0, Lzipkin2/Endpoint$Builder;->port:I

    return-object p0
.end method

.method public serviceName(Ljava/lang/String;)Lzipkin2/Endpoint$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lzipkin2/internal/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lzipkin2/Endpoint$Builder;->serviceName:Ljava/lang/String;

    return-object p0
.end method
