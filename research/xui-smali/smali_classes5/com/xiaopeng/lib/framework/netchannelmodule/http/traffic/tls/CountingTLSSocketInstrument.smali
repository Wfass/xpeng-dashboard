.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/CountingTLSSocketInstrument;
.super Ljava/lang/Object;
.source "CountingTLSSocketInstrument.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize()V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/CountingTLSSocketInstrument;

    monitor-enter v0

    .line 21
    :try_start_0
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/CountingTLSSocketInstrument;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/CountingTLSSocketInstrument;-><init>()V

    invoke-static {v1}, Lcom/xiaopeng/lib/http/HttpsUtils;->setSSLSocketWrapper(Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    return-void

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isKitkat()Z
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/CountingTLSSocketInstrument;

    monitor-enter v0

    .line 25
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/xiaopeng/lib/http/HttpsUtils;->setSSLSocketWrapper(Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    return-void

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createSocket(Ljava/net/Socket;Ljava/lang/String;)Ljava/net/Socket;
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/CountingTLSSocketInstrument;->isKitkat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSKitkatSocket;->createSocket(Ljava/net/Socket;Ljava/lang/String;)Ljava/net/Socket;

    .line 38
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket;

    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-direct {v0, v1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/tls/HookTLSPSocket;-><init>(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hook tls socket failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object p1
.end method
