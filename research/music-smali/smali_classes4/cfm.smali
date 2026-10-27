.class public Lcfm;
.super Ljava/lang/Object;
.source "TCPNetworkModule.java"

# interfaces
.implements Lcfj;


# static fields
.field private static final b:Ljava/lang/String; = "cfm"

.field private static final c:Lcgw;


# instance fields
.field protected a:Ljava/net/Socket;

.field private d:Ljavax/net/SocketFactory;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget-object v0, Lcfm;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcfm;->c:Lcgw;

    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcfm;->c:Lcgw;

    invoke-interface {v0, p4}, Lcgw;->setResourceName(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcfm;->d:Ljavax/net/SocketFactory;

    .line 59
    iput-object p2, p0, Lcfm;->e:Ljava/lang/String;

    .line 60
    iput p3, p0, Lcfm;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 75
    :try_start_0
    sget-object v0, Lcfm;->c:Lcgw;

    sget-object v1, Lcfm;->b:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "252"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcfm;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lcfm;->f:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    new-instance v7, Ljava/lang/Long;

    iget v8, p0, Lcfm;->g:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcfm;->e:Ljava/lang/String;

    iget v2, p0, Lcfm;->f:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 77
    iget-object v1, p0, Lcfm;->d:Ljavax/net/SocketFactory;

    instance-of v1, v1, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 80
    iget v2, p0, Lcfm;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 81
    iget-object v0, p0, Lcfm;->d:Ljavax/net/SocketFactory;

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcfm;->e:Ljava/lang/String;

    iget v3, p0, Lcfm;->f:I

    invoke-virtual {v0, v1, v2, v3, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcfm;->a:Ljava/net/Socket;

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcfm;->d:Ljavax/net/SocketFactory;

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcfm;->a:Ljava/net/Socket;

    .line 84
    iget-object v1, p0, Lcfm;->a:Ljava/net/Socket;

    iget v2, p0, Lcfm;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcfm;->c:Lcgw;

    sget-object v2, Lcfm;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "start"

    const-string v4, "250"

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 94
    new-instance v1, Lceo;

    const/16 v2, 0x7d67

    invoke-direct {v1, v2, v0}, Lceo;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    .line 99
    iget-object v0, p0, Lcfm;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcfm;->g:I

    return-void
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    .line 103
    iget-object v0, p0, Lcfm;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcfm;->a:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 131
    iget-object v0, p0, Lcfm;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tcp://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcfm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcfm;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
