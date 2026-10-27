.class public abstract Lorg/apache/commons/net/e;
.super Ljava/lang/Object;
.source "SocketClient.java"


# static fields
.field private static final apY:Ljavax/net/SocketFactory;

.field private static final apZ:Ljavax/net/ServerSocketFactory;


# instance fields
.field protected apU:I

.field private aqa:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected aqb:Ljava/net/Socket;

.field protected aqc:Ljava/lang/String;

.field protected aqd:I

.field protected aqe:Ljava/io/InputStream;

.field protected aqf:Ljava/io/OutputStream;

.field protected aqg:Ljavax/net/SocketFactory;

.field protected aqh:Ljavax/net/ServerSocketFactory;

.field private aqi:I

.field private aqj:I

.field private charset:Ljava/nio/charset/Charset;

.field protected connectTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/e;->apY:Ljavax/net/SocketFactory;

    .line 68
    invoke-static {}, Ljavax/net/ServerSocketFactory;->getDefault()Ljavax/net/ServerSocketFactory;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/e;->apZ:Ljavax/net/ServerSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/e;->connectTimeout:I

    .line 106
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/net/e;->aqi:I

    .line 109
    iput v1, p0, Lorg/apache/commons/net/e;->aqj:I

    .line 117
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/e;->charset:Ljava/nio/charset/Charset;

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    .line 129
    iput-object v1, p0, Lorg/apache/commons/net/e;->aqc:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lorg/apache/commons/net/e;->aqe:Ljava/io/InputStream;

    .line 131
    iput-object v1, p0, Lorg/apache/commons/net/e;->aqf:Ljava/io/OutputStream;

    .line 132
    iput v0, p0, Lorg/apache/commons/net/e;->apU:I

    .line 133
    iput v0, p0, Lorg/apache/commons/net/e;->aqd:I

    .line 134
    sget-object v0, Lorg/apache/commons/net/e;->apY:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/e;->aqg:Ljavax/net/SocketFactory;

    .line 135
    sget-object v0, Lorg/apache/commons/net/e;->apZ:Ljavax/net/ServerSocketFactory;

    iput-object v0, p0, Lorg/apache/commons/net/e;->aqh:Ljavax/net/ServerSocketFactory;

    .line 136
    return-void
.end method

.method private a(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqg:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    .line 234
    iget v0, p0, Lorg/apache/commons/net/e;->aqi:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    iget v2, p0, Lorg/apache/commons/net/e;->aqi:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 237
    :cond_0
    iget v0, p0, Lorg/apache/commons/net/e;->aqj:I

    if-eq v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/e;->aqj:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 240
    :cond_1
    if-eqz p3, :cond_2

    .line 241
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 243
    :cond_2
    iget-object p3, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    new-instance p4, Ljava/net/InetSocketAddress;

    invoke-direct {p4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget p1, p0, Lorg/apache/commons/net/e;->connectTimeout:I

    invoke-virtual {p3, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 244
    invoke-virtual {p0}, Lorg/apache/commons/net/e;->uk()V

    .line 245
    return-void
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 342
    if-eqz p1, :cond_0

    .line 344
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 345
    :catch_0
    move-exception p1

    .line 349
    :cond_0
    :goto_0
    return-void
.end method

.method private closeQuietly(Ljava/net/Socket;)V
    .locals 0

    .line 332
    if-eqz p1, :cond_0

    .line 334
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_0

    .line 335
    :catch_0
    move-exception p1

    .line 339
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected au(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 805
    invoke-virtual {p0}, Lorg/apache/commons/net/e;->um()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->uj()I

    move-result v0

    if-lez v0, :cond_0

    .line 806
    invoke-virtual {p0}, Lorg/apache/commons/net/e;->um()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->au(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_0
    return-void
.end method

.method public b(Ljava/net/Socket;)Z
    .locals 1

    .line 689
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 690
    invoke-virtual {p0}, Lorg/apache/commons/net/e;->ul()Ljava/net/InetAddress;

    move-result-object v0

    .line 692
    invoke-virtual {p1, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    iget v0, p0, Lorg/apache/commons/net/e;->aqd:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/e;->connect(Ljava/lang/String;I)V

    .line 307
    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lorg/apache/commons/net/e;->aqc:Ljava/lang/String;

    .line 202
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/net/e;->a(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 203
    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/e;->closeQuietly(Ljava/net/Socket;)V

    .line 323
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqe:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/e;->closeQuietly(Ljava/io/Closeable;)V

    .line 324
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqf:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/net/e;->closeQuietly(Ljava/io/Closeable;)V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    .line 326
    iput-object v0, p0, Lorg/apache/commons/net/e;->aqc:Ljava/lang/String;

    .line 327
    iput-object v0, p0, Lorg/apache/commons/net/e;->aqe:Ljava/io/InputStream;

    .line 328
    iput-object v0, p0, Lorg/apache/commons/net/e;->aqf:Ljava/io/OutputStream;

    .line 329
    return-void
.end method

.method public fv(I)V
    .locals 0

    .line 423
    iput p1, p0, Lorg/apache/commons/net/e;->aqd:I

    .line 424
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 646
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 375
    invoke-virtual {p0}, Lorg/apache/commons/net/e;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 378
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 379
    return v1

    .line 381
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    if-nez v0, :cond_1

    .line 382
    return v1

    .line 384
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-nez v0, :cond_2

    .line 385
    return v1

    .line 387
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    return v1

    .line 393
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    return v1

    .line 396
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 397
    return v1

    .line 400
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 401
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    nop

    .line 407
    const/4 v0, 0x1

    return v0

    .line 403
    :catch_0
    move-exception v0

    .line 405
    return v1

    .line 409
    :cond_6
    return v1
.end method

.method public isConnected()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected k(ILjava/lang/String;)V
    .locals 1

    .line 792
    invoke-virtual {p0}, Lorg/apache/commons/net/e;->um()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/net/ProtocolCommandSupport;->uj()I

    move-result v0

    if-lez v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lorg/apache/commons/net/e;->um()Lorg/apache/commons/net/ProtocolCommandSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/net/ProtocolCommandSupport;->k(ILjava/lang/String;)V

    .line 795
    :cond_0
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 742
    iput p1, p0, Lorg/apache/commons/net/e;->connectTimeout:I

    .line 743
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 580
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 494
    iput p1, p0, Lorg/apache/commons/net/e;->aqj:I

    .line 495
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 483
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 549
    return-void
.end method

.method protected uk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    iget v1, p0, Lorg/apache/commons/net/e;->apU:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 159
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/e;->aqe:Ljava/io/InputStream;

    .line 160
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/e;->aqf:Ljava/io/OutputStream;

    .line 161
    return-void
.end method

.method public ul()Ljava/net/InetAddress;
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqb:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected um()Lorg/apache/commons/net/ProtocolCommandSupport;
    .locals 1

    .line 825
    iget-object v0, p0, Lorg/apache/commons/net/e;->aqa:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method
