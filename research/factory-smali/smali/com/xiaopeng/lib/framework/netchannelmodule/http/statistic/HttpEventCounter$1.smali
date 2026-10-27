.class Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;
.super Lokhttp3/EventListener;
.source "HttpEventCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$19;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$19;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;)V

    const-string v2, "callEnd"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "ioe"    # Ljava/io/IOException;

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$20;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Ljava/io/IOException;)V

    const-string v2, "callFailed"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;)V

    const-string v2, "callStart"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 8
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v7, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$7;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    const-string v1, "connectEnd"

    invoke-static {v0, v7, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 9
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;
    .param p4, "protocol"    # Lokhttp3/Protocol;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "ioe"    # Ljava/io/IOException;

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v8, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$8;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$8;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    const-string v1, "connectFailed"

    invoke-static {v0, v8, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "inetSocketAddress"    # Ljava/net/InetSocketAddress;
    .param p3, "proxy"    # Ljava/net/Proxy;

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$4;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    const-string v2, "connectStart"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "connection"    # Lokhttp3/Connection;

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$9;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Lokhttp3/Connection;)V

    const-string v2, "connectionAcquired"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "connection"    # Lokhttp3/Connection;

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$10;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Lokhttp3/Connection;)V

    const-string v2, "connectionReleased"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$3;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "dnsEnd"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "domainName"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Ljava/lang/String;)V

    const-string v2, "dnsStart"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "byteCount"    # J

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$14;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;J)V

    const-string v2, "requestBodyEnd"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$13;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$13;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;)V

    const-string v2, "requestBodyStart"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "request"    # Lokhttp3/Request;

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$12;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Lokhttp3/Request;)V

    const-string v2, "requestHeadersEnd"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$11;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$11;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;)V

    const-string v2, "requestHeadersStart"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "byteCount"    # J

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$18;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;J)V

    const-string v2, "responseBodyEnd"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$17;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$17;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;)V

    const-string v2, "responseBodyStart"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$16;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Lokhttp3/Response;)V

    const-string v2, "responseHeadersEnd"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$15;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$15;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;)V

    const-string v2, "responseHeadersStart"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "handshake"    # Lokhttp3/Handshake;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$6;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;Lokhttp3/Handshake;)V

    const-string v2, "secureConnectEnd"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1$5;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;Lokhttp3/Call;)V

    const-string v2, "secureConnectStart"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 185
    return-void
.end method
