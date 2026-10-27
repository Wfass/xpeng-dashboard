.class public abstract Lorg/apache/commons/net/a;
.super Ljava/lang/Object;
.source "DatagramSocketClient.java"


# static fields
.field private static final apT:Lorg/apache/commons/net/b;


# instance fields
.field protected apU:I

.field protected apV:Ljava/net/DatagramSocket;

.field protected apW:Z

.field protected apX:Lorg/apache/commons/net/b;

.field private charset:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lorg/apache/commons/net/c;

    invoke-direct {v0}, Lorg/apache/commons/net/c;-><init>()V

    sput-object v0, Lorg/apache/commons/net/a;->apT:Lorg/apache/commons/net/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/a;->charset:Ljava/nio/charset/Charset;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/a;->apV:Ljava/net/DatagramSocket;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/a;->apU:I

    .line 86
    iput-boolean v0, p0, Lorg/apache/commons/net/a;->apW:Z

    .line 87
    sget-object v0, Lorg/apache/commons/net/a;->apT:Lorg/apache/commons/net/b;

    iput-object v0, p0, Lorg/apache/commons/net/a;->apX:Lorg/apache/commons/net/b;

    .line 88
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/apache/commons/net/a;->apV:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/commons/net/a;->apV:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/a;->apV:Ljava/net/DatagramSocket;

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/a;->apW:Z

    .line 166
    return-void
.end method

.method public fu(I)V
    .locals 0

    .line 193
    iput p1, p0, Lorg/apache/commons/net/a;->apU:I

    .line 194
    return-void
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lorg/apache/commons/net/a;->apV:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/a;->apX:Lorg/apache/commons/net/b;

    invoke-interface {v0}, Lorg/apache/commons/net/b;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/a;->apV:Ljava/net/DatagramSocket;

    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/a;->apV:Ljava/net/DatagramSocket;

    iget v1, p0, Lorg/apache/commons/net/a;->apU:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/a;->apW:Z

    .line 107
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/commons/net/a;->apV:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 222
    return-void
.end method
