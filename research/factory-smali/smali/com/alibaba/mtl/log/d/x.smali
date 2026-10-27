.class Lcom/alibaba/mtl/log/d/x;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "UtSslSocketFactory.java"


# instance fields
.field private ak:Ljava/lang/String;

.field private b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/log/d/x;->b:Ljava/lang/reflect/Method;

    .line 29
    iput-object p1, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 7
    .param p1, "plainSocket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const-string v0, "UtSslSocketFactory"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "bizHost"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "host"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const-string v2, "port"

    const/4 v5, 0x4

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const-string v2, "autoClose"

    const/4 v5, 0x6

    aput-object v2, v1, v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x7

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    const-string v0, "UtSslSocketFactory"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customized createSocket. host: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :try_start_0
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-static {}, Lcom/alibaba/mtl/log/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    .line 79
    const/16 v1, 0x2710

    .line 80
    invoke-static {v1, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 83
    invoke-static {}, Lcom/alibaba/mtl/log/d/y;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/d/v;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 89
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 90
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v5, 0x11

    if-ge v2, v5, :cond_2

    .line 92
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/x;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setHostname"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/d/x;->b:Ljava/lang/reflect/Method;

    .line 94
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/x;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/x;->b:Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 99
    :goto_1
    goto :goto_2

    .line 101
    :cond_2
    :try_start_2
    invoke-virtual {v0, v1, v4}, Landroid/net/SSLCertificateSocketFactory;->setUseSessionTickets(Ljava/net/Socket;Z)V

    .line 102
    iget-object v2, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 104
    :goto_2
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    return-object v1

    .line 106
    :catch_1
    move-exception v0

    .line 108
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSocket exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SDK set empty bizHost"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/alibaba/mtl/log/d/x;

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/alibaba/mtl/log/d/x;

    iget-object v0, v0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    return v1

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 115
    :cond_2
    :goto_0
    return v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/x;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
