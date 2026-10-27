.class public final Lokhttp3/internal/connection/Transmitter;
.super Ljava/lang/Object;
.source "Transmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Transmitter$TransmitterReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final call:Lokhttp3/Call;

.field private callStackTrace:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field public connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final eventListener:Lokhttp3/EventListener;

.field private exchange:Lokhttp3/internal/connection/Exchange;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

.field private exchangeRequestDone:Z

.field private exchangeResponseDone:Z

.field private noMoreExchanges:Z

.field private request:Lokhttp3/Request;

.field private final timeout:Lokio/AsyncTimeout;

.field private timeoutEarlyExit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 54
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V
    .locals 4
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "call"    # Lokhttp3/Call;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lokhttp3/internal/connection/Transmitter$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/Transmitter$1;-><init>(Lokhttp3/internal/connection/Transmitter;)V

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    .line 80
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    .line 81
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->realConnectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RealConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 82
    iput-object p2, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    .line 83
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v0

    invoke-interface {v0, p2}, Lokhttp3/EventListener$Factory;->create(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    .line 84
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/AsyncTimeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 85
    return-void
.end method

.method private createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;
    .locals 18
    .param p1, "url"    # Lokhttp3/HttpUrl;

    move-object/from16 v0, p0

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 143
    .local v2, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v3, 0x0

    .line 144
    .local v3, "certificatePinner":Lokhttp3/CertificatePinner;
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 146
    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 147
    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v3

    .line 150
    :cond_0
    new-instance v17, Lokhttp3/Address;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->port()I

    move-result v6

    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v7

    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    .line 151
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v12

    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    .line 152
    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v4, v0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v4}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object/from16 v4, v17

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v4 .. v16}, Lokhttp3/Address;-><init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 150
    return-object v17
.end method

.method private maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "force"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 276
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 277
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot release connection while it is in use"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 280
    :cond_1
    :goto_0
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 281
    .local v1, "releasedConnection":Lokhttp3/Connection;
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v2, :cond_3

    if-nez p2, :cond_2

    iget-boolean v2, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-eqz v2, :cond_3

    .line 282
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/Transmitter;->releaseConnectionNoEvents()Ljava/net/Socket;

    move-result-object v2

    goto :goto_1

    .line 283
    :cond_3
    const/4 v2, 0x0

    .line 284
    .local v2, "socket":Ljava/net/Socket;
    :goto_1
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 285
    :cond_4
    iget-boolean v3, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v3, :cond_5

    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v4

    .line 286
    .local v3, "callEnd":Z
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 287
    .end local v1    # "releasedConnection":Lokhttp3/Connection;
    .local v0, "releasedConnection":Lokhttp3/Connection;
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 289
    if-eqz v0, :cond_6

    .line 290
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v6, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {v1, v6, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 293
    :cond_6
    if-eqz v3, :cond_9

    .line 294
    if-eqz p1, :cond_7

    move v4, v5

    nop

    :cond_7
    move v1, v4

    .line 295
    .local v1, "callFailed":Z
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Transmitter;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    .line 296
    if-eqz v1, :cond_8

    .line 297
    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {v4, v5, p1}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_3

    .line 299
    :cond_8
    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {v4, v5}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 302
    .end local v1    # "callFailed":Z
    :cond_9
    :goto_3
    return-object p1

    .line 286
    .end local v0    # "releasedConnection":Lokhttp3/Connection;
    .end local v2    # "socket":Ljava/net/Socket;
    .end local v3    # "callEnd":Z
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    if-eqz v0, :cond_0

    return-object p1

    .line 107
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 109
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    :cond_2
    return-object v0
.end method


# virtual methods
.method acquireConnectionNoEvents(Lokhttp3/internal/connection/RealConnection;)V
    .locals 3
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;

    .line 174
    nop

    .line 176
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_0

    .line 177
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 178
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    new-instance v1, Lokhttp3/internal/connection/Transmitter$TransmitterReference;

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/connection/Transmitter$TransmitterReference;-><init>(Lokhttp3/internal/connection/Transmitter;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public callStart()V
    .locals 2

    .line 116
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lokhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->callStackTrace:Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 118
    return-void
.end method

.method public canRetry()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lokhttp3/internal/connection/ExchangeFinder;->canRetry()Z

    move-result v0

    return v0
.end method

.method public cancel()V
    .locals 3

    .line 327
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 328
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->canceled:Z

    .line 329
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 330
    .local v1, "exchangeToCancel":Lokhttp3/internal/connection/Exchange;
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v2}, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v2}, Lokhttp3/internal/connection/ExchangeFinder;->connectingConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v2

    goto :goto_0

    .line 332
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 333
    .local v2, "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 334
    .end local v1    # "exchangeToCancel":Lokhttp3/internal/connection/Exchange;
    .local v0, "exchangeToCancel":Lokhttp3/internal/connection/Exchange;
    if-eqz v0, :cond_1

    .line 335
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->cancel()V

    goto :goto_1

    .line 336
    :cond_1
    if-eqz v2, :cond_2

    .line 337
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    .line 339
    :cond_2
    :goto_1
    return-void

    .line 333
    .end local v0    # "exchangeToCancel":Lokhttp3/internal/connection/Exchange;
    .end local v2    # "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exchangeDoneDueToException()V
    .locals 2

    .line 214
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-nez v1, :cond_0

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method exchangeMessageDone(Lokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 6
    .param p1, "exchange"    # Lokhttp3/internal/connection/Exchange;
    .param p2, "requestDone"    # Z
    .param p3, "responseDone"    # Z
    .param p4, "e"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "exchangeDone":Z
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eq p1, v2, :cond_0

    .line 233
    monitor-exit v1

    return-object p4

    .line 235
    :cond_0
    const/4 v2, 0x0

    .line 236
    .local v2, "changed":Z
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 237
    iget-boolean v4, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 238
    :cond_1
    iput-boolean v3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    .line 240
    :cond_2
    if-eqz p3, :cond_4

    .line 241
    iget-boolean v4, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    if-nez v4, :cond_3

    const/4 v2, 0x1

    .line 242
    :cond_3
    iput-boolean v3, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    .line 244
    :cond_4
    iget-boolean v4, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 245
    const/4 v0, 0x1

    .line 246
    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    invoke-virtual {v4}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    iget v5, v4, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/2addr v5, v3

    iput v5, v4, Lokhttp3/internal/connection/RealConnection;->successCount:I

    .line 247
    const/4 v3, 0x0

    iput-object v3, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 249
    .end local v2    # "changed":Z
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    if-eqz v0, :cond_6

    .line 251
    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p4

    .line 253
    :cond_6
    return-object p4

    .line 249
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public hasExchange()Z
    .locals 2

    .line 310
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    .line 342
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->canceled:Z

    monitor-exit v0

    return v1

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method newExchange(Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/connection/Exchange;
    .locals 8
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .param p2, "doExtensiveHealthChecks"    # Z

    .line 157
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v1, :cond_0

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/internal/connection/ExchangeFinder;->find(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/ExchangeCodec;

    move-result-object v1

    .line 163
    .local v1, "codec":Lokhttp3/internal/http/ExchangeCodec;
    new-instance v0, Lokhttp3/internal/connection/Exchange;

    iget-object v4, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    iget-object v6, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    move-object v2, v0

    move-object v3, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/Exchange;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/Call;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V

    .line 165
    .local v2, "result":Lokhttp3/internal/connection/Exchange;
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v3

    .line 166
    :try_start_1
    iput-object v2, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeRequestDone:Z

    .line 168
    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeResponseDone:Z

    .line 169
    monitor-exit v3

    return-object v2

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 159
    .end local v1    # "codec":Lokhttp3/internal/http/ExchangeCodec;
    .end local v2    # "result":Lokhttp3/internal/connection/Exchange;
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "exchange != null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 257
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    monitor-enter v0

    .line 258
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges:Z

    .line 259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object v0

    return-object v0

    .line 259
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepareToConnect(Lokhttp3/Request;)V
    .locals 7
    .param p1, "request"    # Lokhttp3/Request;

    .line 125
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchange:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lokhttp3/internal/connection/Transmitter;->maybeReleaseConnection(Ljava/io/IOException;Z)Ljava/io/IOException;

    .line 131
    iput-object v1, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 135
    :cond_2
    :goto_0
    iput-object p1, p0, Lokhttp3/internal/connection/Transmitter;->request:Lokhttp3/Request;

    .line 136
    new-instance v0, Lokhttp3/internal/connection/ExchangeFinder;

    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-direct {p0, v1}, Lokhttp3/internal/connection/Transmitter;->createAddress(Lokhttp3/HttpUrl;)Lokhttp3/Address;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/Transmitter;->call:Lokhttp3/Call;

    iget-object v6, p0, Lokhttp3/internal/connection/Transmitter;->eventListener:Lokhttp3/EventListener;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/ExchangeFinder;-><init>(Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/Transmitter;->exchangeFinder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 138
    return-void
.end method

.method releaseConnectionNoEvents()Ljava/net/Socket;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 186
    nop

    .line 188
    const/4 v0, -0x1

    .line 189
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 190
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v3, v3, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 191
    .local v3, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/Transmitter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 192
    move v0, v1

    .line 193
    goto :goto_1

    .line 189
    .end local v3    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/Transmitter;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 199
    iget-object v1, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 200
    .local v1, "released":Lokhttp3/internal/connection/RealConnection;
    iget-object v2, v1, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/Transmitter;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 203
    iget-object v3, v1, Lokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 205
    iget-object v3, p0, Lokhttp3/internal/connection/Transmitter;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v3, v1}, Lokhttp3/internal/connection/RealConnectionPool;->connectionBecameIdle(Lokhttp3/internal/connection/RealConnection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v2

    return-object v2

    .line 210
    :cond_2
    return-object v2

    .line 197
    .end local v1    # "released":Lokhttp3/internal/connection/RealConnection;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 88
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public timeoutEarlyExit()V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit:Z

    .line 102
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    .line 103
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public timeoutEnter()V
    .locals 1

    .line 92
    iget-object v0, p0, Lokhttp3/internal/connection/Transmitter;->timeout:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 93
    return-void
.end method
