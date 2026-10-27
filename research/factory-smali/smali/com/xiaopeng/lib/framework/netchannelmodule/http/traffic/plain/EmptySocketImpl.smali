.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/plain/EmptySocketImpl;
.super Ljava/net/SocketImpl;
.source "EmptySocketImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected accept(Ljava/net/SocketImpl;)V
    .locals 0
    .param p1, "newSocket"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method protected available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected bind(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method protected close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method protected connect(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method protected connect(Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method protected connect(Ljava/net/SocketAddress;I)V
    .locals 0
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method protected create(Z)V
    .locals 0
    .param p1, "isStreaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .param p1, "optID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected listen(I)V
    .locals 0
    .param p1, "backlog"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method protected sendUrgentData(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0
    .param p1, "optID"    # I
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 84
    return-void
.end method
