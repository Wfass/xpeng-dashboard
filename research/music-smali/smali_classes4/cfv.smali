.class public Lcfv;
.super Lcfm;
.source "WebSocketNetworkModule.java"


# static fields
.field private static final b:Ljava/lang/String; = "cfv"

.field private static final c:Lcgw;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/io/PipedInputStream;

.field private h:Lcfw;

.field private i:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Lcfv;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcfv;->c:Lcgw;

    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p3, p4, p5}, Lcfm;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    new-instance p1, Lcfr;

    invoke-direct {p1, p0}, Lcfr;-><init>(Lcfv;)V

    iput-object p1, p0, Lcfv;->i:Ljava/io/ByteArrayOutputStream;

    .line 53
    iput-object p2, p0, Lcfv;->d:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcfv;->e:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcfv;->f:I

    .line 56
    new-instance p1, Ljava/io/PipedInputStream;

    invoke-direct {p1}, Ljava/io/PipedInputStream;-><init>()V

    iput-object p1, p0, Lcfv;->g:Ljava/io/PipedInputStream;

    .line 58
    sget-object p1, Lcfv;->c:Lcgw;

    invoke-interface {p1, p5}, Lcgw;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 62
    invoke-super {p0}, Lcfm;->a()V

    .line 63
    new-instance v6, Lcfu;

    invoke-virtual {p0}, Lcfv;->g()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcfv;->f()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcfv;->d:Ljava/lang/String;

    iget-object v4, p0, Lcfv;->e:Ljava/lang/String;

    iget v5, p0, Lcfv;->f:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcfu;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    invoke-virtual {v6}, Lcfu;->a()V

    .line 65
    new-instance v0, Lcfw;

    invoke-virtual {p0}, Lcfv;->g()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcfv;->g:Ljava/io/PipedInputStream;

    invoke-direct {v0, v1, v2}, Lcfw;-><init>(Ljava/io/InputStream;Ljava/io/PipedInputStream;)V

    iput-object v0, p0, Lcfv;->h:Lcfw;

    .line 66
    iget-object v0, p0, Lcfv;->h:Lcfw;

    const-string v1, "webSocketReceiver"

    invoke-virtual {v0, v1}, Lcfw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    .line 78
    iget-object v0, p0, Lcfv;->g:Ljava/io/PipedInputStream;

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    .line 82
    iget-object v0, p0, Lcfv;->i:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public d()V
    .locals 4

    .line 90
    new-instance v0, Lcft;

    const-string v1, "1000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcft;-><init>(BZ[B)V

    .line 91
    invoke-virtual {v0}, Lcft;->c()[B

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcfv;->f()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 93
    invoke-virtual {p0}, Lcfv;->f()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    iget-object v0, p0, Lcfv;->h:Lcfw;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcfw;->a()V

    .line 98
    :cond_0
    invoke-super {p0}, Lcfm;->d()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ws://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcfv;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcfv;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/io/OutputStream;
    .locals 1

    .line 70
    invoke-super {p0}, Lcfm;->c()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/io/InputStream;
    .locals 1

    .line 74
    invoke-super {p0}, Lcfm;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
