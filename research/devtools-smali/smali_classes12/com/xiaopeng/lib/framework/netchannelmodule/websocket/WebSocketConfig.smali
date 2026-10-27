.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;
.super Ljava/lang/Object;
.source "WebSocketConfig.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;


# instance fields
.field private mClient:Lokhttp3/OkHttpClient;

.field private mLogTag:Ljava/lang/String;

.field private mPingInterval:J

.field private mReconnectInterval:J

.field private mShowLog:Z

.field private mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mShowLog:Z

    .line 16
    const-string v0, "RxWebSocket"

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mLogTag:Ljava/lang/String;

    .line 17
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mClient:Lokhttp3/OkHttpClient;

    .line 21
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mReconnectInterval:J

    .line 22
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mPingInterval:J

    .line 26
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/ConfigImpl;->getCurrentHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mClient:Lokhttp3/OkHttpClient;

    .line 27
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 31
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    move-result-object v0

    .line 32
    iget-boolean v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mShowLog:Z

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->showLog(ZLjava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->client(Lokhttp3/OkHttpClient;)V

    .line 34
    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mReconnectInterval:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->reconnectInterval(J)V

    .line 35
    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mPingInterval:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->pingInterval(J)V

    .line 36
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V

    .line 39
    :cond_0
    return-void
.end method

.method public bridge synthetic client(Lokhttp3/OkHttpClient;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->client(Lokhttp3/OkHttpClient;)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;

    move-result-object p1

    return-object p1
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mClient:Lokhttp3/OkHttpClient;

    .line 51
    return-object p0
.end method

.method public bridge synthetic disableLog()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->disableLog()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;

    move-result-object v0

    return-object v0
.end method

.method public disableLog()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;
    .locals 1

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mShowLog:Z

    .line 95
    return-object p0
.end method

.method public bridge synthetic pingInterval(J)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->pingInterval(J)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;

    move-result-object p1

    return-object p1
.end method

.method public pingInterval(J)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mPingInterval:J

    .line 86
    return-object p0
.end method

.method public bridge synthetic reconnectInterval(J)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->reconnectInterval(J)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;

    move-result-object p1

    return-object p1
.end method

.method public reconnectInterval(J)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mReconnectInterval:J

    .line 74
    return-object p0
.end method

.method public bridge synthetic showLog()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->showLog()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic showLog(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->showLog(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;

    move-result-object p1

    return-object p1
.end method

.method public showLog()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;
    .locals 1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mShowLog:Z

    .line 104
    return-object p0
.end method

.method public showLog(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;
    .locals 1

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mShowLog:Z

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mLogTag:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public bridge synthetic sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketConfig;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;

    move-result-object p1

    return-object p1
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 61
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 62
    return-object p0
.end method
