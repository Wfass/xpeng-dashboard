.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    .line 69
    return-void
.end method

.method private followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    .locals 5
    .param p2    # Lokhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    if-eqz p1, :cond_11

    .line 216
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    .line 218
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    .line 219
    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 325
    return-object v2

    .line 311
    :sswitch_0
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 312
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v0, 0x1f7

    if-ne p2, v0, :cond_0

    .line 314
    return-object v2

    .line 317
    :cond_0
    const p2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result p2

    if-nez p2, :cond_1

    .line 319
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 322
    :cond_1
    return-object v2

    .line 288
    :sswitch_1
    iget-object p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result p2

    if-nez p2, :cond_2

    .line 290
    return-object v2

    .line 293
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p2

    .line 294
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 295
    return-object v2

    .line 298
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 299
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v0, 0x198

    if-ne p2, v0, :cond_4

    .line 301
    return-object v2

    .line 304
    :cond_4
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result p2

    if-lez p2, :cond_5

    .line 305
    return-object v2

    .line 308
    :cond_5
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 221
    :sswitch_2
    if-eqz p2, :cond_6

    .line 222
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_6
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 224
    :goto_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_7

    .line 227
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 225
    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :sswitch_3
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 236
    :sswitch_4
    const-string p2, "GET"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 237
    return-object v2

    .line 245
    :cond_8
    :sswitch_5
    iget-object p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result p2

    if-nez p2, :cond_9

    return-object v2

    .line 247
    :cond_9
    const-string p2, "Location"

    invoke-virtual {p1, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 248
    if-nez p2, :cond_a

    return-object v2

    .line 249
    :cond_a
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    .line 252
    if-nez p2, :cond_b

    return-object v2

    .line 255
    :cond_b
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 256
    if-nez v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v0

    if-nez v0, :cond_c

    return-object v2

    .line 259
    :cond_c
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 260
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 261
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v3

    .line 262
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 263
    const-string v1, "GET"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 265
    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    nop

    .line 266
    :cond_e
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 268
    :goto_1
    if-nez v3, :cond_f

    .line 269
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 270
    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 271
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 278
    :cond_f
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1, p2}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 279
    const-string p1, "Authorization"

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 282
    :cond_10
    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 215
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_5
        0x12d -> :sswitch_5
        0x12e -> :sswitch_5
        0x12f -> :sswitch_5
        0x133 -> :sswitch_4
        0x134 -> :sswitch_4
        0x191 -> :sswitch_3
        0x197 -> :sswitch_2
        0x198 -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3

    .line 179
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    return v1

    .line 185
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 186
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 191
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 194
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    .line 195
    return v1

    .line 198
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    .line 200
    return v1

    .line 206
    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z
    .locals 2

    .line 156
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z

    move-result p4

    if-eqz p4, :cond_1

    return v1

    .line 162
    :cond_1
    invoke-direct {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 165
    :cond_2
    invoke-virtual {p2}, Lokhttp3/internal/connection/Transmitter;->canRetry()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 168
    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z
    .locals 0

    .line 172
    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p2

    .line 173
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    instance-of p1, p1, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private retryAfter(Lokhttp3/Response;I)I
    .locals 1

    .line 330
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 332
    if-nez p1, :cond_0

    .line 333
    return p2

    .line 338
    :cond_0
    const-string p2, "\\d+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 342
    :cond_1
    const p1, 0x7fffffff

    return p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 73
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 74
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->transmitter()Lokhttp3/internal/connection/Transmitter;

    move-result-object v1

    .line 76
    nop

    .line 77
    nop

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    :goto_0
    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/Transmitter;->prepareToConnect(Lokhttp3/Request;)V

    .line 81
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_a

    .line 86
    nop

    .line 88
    :try_start_0
    invoke-virtual {p1, v0, v1, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;

    move-result-object v6
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    nop

    .line 103
    nop

    .line 109
    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v6}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    .line 112
    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    .line 111
    invoke-virtual {v0, v4}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 117
    move-object v4, v0

    goto :goto_1

    :cond_0
    move-object v4, v6

    :goto_1
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v0, v4}, Lokhttp3/internal/Internal;->exchange(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v6

    goto :goto_2

    .line 119
    :cond_1
    move-object v6, v3

    :goto_2
    invoke-direct {p0, v4, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;

    move-result-object v6

    .line 121
    if-nez v6, :cond_3

    .line 122
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->isDuplex()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    .line 125
    :cond_2
    return-object v4

    .line 128
    :cond_3
    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    .line 129
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 130
    return-object v4

    .line 133
    :cond_4
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 134
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->hasExchange()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 135
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->detachWithViolence()V

    .line 138
    :cond_5
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x14

    if-gt v5, v0, :cond_6

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 79
    move-object v0, v6

    goto :goto_0

    .line 139
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 96
    :catch_0
    move-exception v6

    .line 98
    :try_start_1
    instance-of v7, v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v7, :cond_7

    .line 99
    const/4 v7, 0x1

    goto :goto_3

    .line 98
    :cond_7
    nop

    .line 99
    move v7, v2

    :goto_3
    invoke-direct {p0, v6, v1, v7, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    throw v6

    .line 90
    :catch_1
    move-exception v6

    .line 92
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    invoke-direct {p0, v7, v1, v2, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_9

    .line 103
    :goto_4
    nop

    .line 104
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto/16 :goto_0

    .line 93
    :cond_9
    :try_start_2
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :goto_5
    nop

    .line 104
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    throw p1

    .line 82
    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
