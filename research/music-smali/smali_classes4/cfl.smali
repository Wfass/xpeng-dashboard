.class public Lcfl;
.super Lcfm;
.source "SSLNetworkModule.java"


# static fields
.field private static final b:Ljava/lang/String; = "cfl"

.field private static final c:Lcgw;


# instance fields
.field private d:[Ljava/lang/String;

.field private e:I

.field private f:Ljavax/net/ssl/HostnameVerifier;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget-object v0, Lcfl;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcfl;->c:Lcgw;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcfm;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    iput-object p2, p0, Lcfl;->g:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcfl;->h:I

    .line 55
    sget-object p1, Lcfl;->c:Lcgw;

    invoke-interface {p1, p4}, Lcgw;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 103
    invoke-super {p0}, Lcfm;->a()V

    .line 104
    iget-object v0, p0, Lcfl;->d:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcfl;->a([Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcfl;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcfl;->a:Ljava/net/Socket;

    iget v2, p0, Lcfl;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 108
    iget-object v1, p0, Lcfl;->a:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 109
    iget-object v1, p0, Lcfl;->f:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcfl;->a:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcfl;->f:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, p0, Lcfl;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 114
    :cond_0
    iget-object v1, p0, Lcfl;->a:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Lcfm;->b(I)V

    .line 91
    iput p1, p0, Lcfl;->e:I

    return-void
.end method

.method public a(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcfl;->f:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 5

    .line 72
    iput-object p1, p0, Lcfl;->d:[Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcfl;->a:Ljava/net/Socket;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 74
    sget-object v0, Lcfl;->c:Lcgw;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcgw;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    move v1, v0

    .line 76
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_0

    .line 83
    sget-object v1, Lcfl;->c:Lcgw;

    sget-object v3, Lcfl;->b:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    const-string v0, "setEnabledCiphers"

    const-string v2, "260"

    invoke-interface {v1, v3, v0, v2, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_2
    :goto_1
    iget-object v0, p0, Lcfl;->a:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ssl://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcfl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcfl;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
