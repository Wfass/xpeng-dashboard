.class public Lcfx;
.super Lcfl;
.source "WebSocketSecureNetworkModule.java"


# static fields
.field private static final b:Ljava/lang/String; = "cfx"

.field private static final c:Lcgw;


# instance fields
.field private d:Ljava/io/PipedInputStream;

.field private e:Lcfw;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Lcfx;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcfx;->c:Lcgw;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p3, p4, p5}, Lcfl;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    new-instance p1, Lcfr;

    invoke-direct {p1, p0}, Lcfr;-><init>(Lcfx;)V

    iput-object p1, p0, Lcfx;->i:Ljava/io/ByteArrayOutputStream;

    .line 53
    iput-object p2, p0, Lcfx;->f:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcfx;->g:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcfx;->h:I

    .line 56
    new-instance p1, Ljava/io/PipedInputStream;

    invoke-direct {p1}, Ljava/io/PipedInputStream;-><init>()V

    iput-object p1, p0, Lcfx;->d:Ljava/io/PipedInputStream;

    .line 57
    sget-object p1, Lcfx;->c:Lcgw;

    invoke-interface {p1, p5}, Lcgw;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 61
    invoke-super {p0}, Lcfl;->a()V

    .line 62
    new-instance v6, Lcfu;

    invoke-super {p0}, Lcfl;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-super {p0}, Lcfl;->c()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcfx;->f:Ljava/lang/String;

    iget-object v4, p0, Lcfx;->g:Ljava/lang/String;

    iget v5, p0, Lcfx;->h:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcfu;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v6}, Lcfu;->a()V

    .line 64
    new-instance v0, Lcfw;

    invoke-virtual {p0}, Lcfx;->g()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcfx;->d:Ljava/io/PipedInputStream;

    invoke-direct {v0, v1, v2}, Lcfw;-><init>(Ljava/io/InputStream;Ljava/io/PipedInputStream;)V

    iput-object v0, p0, Lcfx;->e:Lcfw;

    .line 65
    iget-object v0, p0, Lcfx;->e:Lcfw;

    const-string v1, "WssSocketReceiver"

    invoke-virtual {v0, v1}, Lcfw;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/io/InputStream;
    .locals 1

    .line 78
    iget-object v0, p0, Lcfx;->d:Ljava/io/PipedInputStream;

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    .line 82
    iget-object v0, p0, Lcfx;->i:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public d()V
    .locals 4

    .line 87
    new-instance v0, Lcft;

    const-string v1, "1000"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcft;-><init>(BZ[B)V

    .line 88
    invoke-virtual {v0}, Lcft;->c()[B

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcfx;->f()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 90
    invoke-virtual {p0}, Lcfx;->f()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 92
    iget-object v0, p0, Lcfx;->e:Lcfw;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcfw;->a()V

    .line 95
    :cond_0
    invoke-super {p0}, Lcfl;->d()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wss://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcfx;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcfx;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/io/OutputStream;
    .locals 1

    .line 70
    invoke-super {p0}, Lcfl;->c()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/io/InputStream;
    .locals 1

    .line 74
    invoke-super {p0}, Lcfl;->b()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
