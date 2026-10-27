.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;
.source "HookTLSKitkatSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KitKatTLSInputStream"
.end annotation


# instance fields
.field private socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .param p1    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljavax/net/ssl/SSLSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;Ljava/io/InputStream;)V

    .line 70
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->socket:Ljavax/net/ssl/SSLSocket;

    .line 71
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->checkInputStream()V

    .line 97
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->available()I

    move-result v0

    return v0
.end method

.method public checkInputStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 116
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->access$000()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->socket:Ljavax/net/ssl/SSLSocket;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/io/IOException;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 122
    :cond_1
    :goto_1
    return-void
.end method

.method public increaseSuccess()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->mCounter:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->mCollector:Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/ICollector;->getDomain()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->increaseSucceedWithSize(Ljava/lang/String;J)V

    .line 126
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->checkInputStream()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->increaseSuccess()V

    .line 84
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->checkInputStream()V

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->increaseSuccess()V

    .line 91
    invoke-super {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->checkInputStream()V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->increaseSuccess()V

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->checkInputStream()V

    .line 103
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket$KitKatTLSInputStream;->checkInputStream()V

    .line 109
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/CountingInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
