.class Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;
.super Ljava/lang/Object;
.source "BaseCachePolicy.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->requestNetworkAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/policy/BaseCachePolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    .line 129
    .local p0, "this":Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;, "Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;"
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 132
    .local p0, "this":Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;, "Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;"
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->currentRetryCount:I

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getRetryCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget v1, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->currentRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->currentRetryCount:I

    .line 135
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v1

    iput-object v1, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->rawCall:Lokhttp3/Call;

    .line 136
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget-boolean v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->canceled:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->rawCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->rawCall:Lokhttp3/Call;

    invoke-interface {v0, p0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 144
    .local v0, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 147
    .end local v0    # "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;, "Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;"
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    .line 154
    .local v0, "responseCode":I
    const/4 v1, 0x0

    const/16 v2, 0x194

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    invoke-virtual {v2, p1, p2}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->onAnalysisResponse(Lokhttp3/Call;Lokhttp3/Response;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 163
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    iget-object v2, v2, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v2}, Lcom/lzy/okgo/request/base/Request;->getConverter()Lcom/lzy/okgo/convert/Converter;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/lzy/okgo/convert/Converter;->convertResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v2

    .line 165
    .local v2, "body":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->access$000(Lcom/lzy/okgo/cache/policy/BaseCachePolicy;Lokhttp3/Headers;Ljava/lang/Object;)V

    .line 166
    invoke-static {v1, v2, p1, p2}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v3

    .line 167
    .local v3, "success":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    iget-object v4, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    invoke-virtual {v4, v3}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->onSuccess(Lcom/lzy/okgo/model/Response;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2    # "body":Ljava/lang/Object;, "TT;"
    .end local v3    # "success":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, p1, p2, v2}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    .line 170
    .local v1, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    invoke-virtual {v3, v1}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 172
    .end local v1    # "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 155
    :cond_2
    :goto_1
    invoke-static {}, Lcom/lzy/okgo/exception/HttpException;->NET_ERROR()Lcom/lzy/okgo/exception/HttpException;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    .line 156
    .restart local v1    # "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/BaseCachePolicy$1;->this$0:Lcom/lzy/okgo/cache/policy/BaseCachePolicy;

    invoke-virtual {v2, v1}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 157
    return-void
.end method
