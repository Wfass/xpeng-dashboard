.class Lcom/ta/a/b/f;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/a/b/f;->a:Ljava/lang/reflect/Method;

    .line 27
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/a/b/f;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 30
    iput-object p1, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    .line 31
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

    .line 35
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

    .line 40
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

    .line 45
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

    .line 50
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

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 8
    .param p1, "plainSocket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const-string v0, ""

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "peerHost"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "host"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const-string v2, "port"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v1, v6

    const-string v2, "autoClose"

    const/4 v6, 0x6

    aput-object v2, v1, v6

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v6, 0x7

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/ta/a/c/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    nop

    .line 75
    invoke-static {v3}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 79
    invoke-static {}, Lcom/ta/a/b/g;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/ta/a/b/c;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 84
    :goto_0
    const-string v1, ""

    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "createSocket"

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2

    .line 87
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 88
    if-eqz p4, :cond_1

    .line 90
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 92
    :cond_1
    invoke-virtual {v0, v1, p3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 93
    goto :goto_1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p3, v4}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 97
    :goto_1
    const-string v2, ""

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "createSocket end"

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 102
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v2, v6, :cond_3

    .line 103
    iget-object v2, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_2

    .line 106
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/ta/a/b/f;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setHostname"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/a/b/f;->a:Ljava/lang/reflect/Method;

    .line 108
    iget-object v0, p0, Lcom/ta/a/b/f;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/ta/a/b/f;->a:Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v2, ""

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "SNI not useable"

    aput-object v7, v6, v3

    aput-object v0, v6, v4

    invoke-static {v2, v6}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :goto_2
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/ta/a/b/f;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v6, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    invoke-interface {v2, v6, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    const-string v2, ""

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "SSLSession PeerHost"

    aput-object v6, v5, v3

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v2, v5}, Lcom/ta/a/c/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-object v1

    .line 119
    :cond_5
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot verify hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/ta/a/b/f;

    if-nez v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/ta/a/b/f;

    iget-object v0, v0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    return v1

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/ta/a/b/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 129
    :cond_2
    :goto_0
    return v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
