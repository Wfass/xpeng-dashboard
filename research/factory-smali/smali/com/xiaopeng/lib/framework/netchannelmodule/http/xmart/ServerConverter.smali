.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerConverter;
.super Ljava/lang/Object;
.source "ServerConverter.java"

# interfaces
.implements Lcom/lzy/okgo/convert/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/convert/Converter<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;
    .locals 4
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 14
    .local v0, "body":Lokhttp3/ResponseBody;
    if-eqz v0, :cond_0

    .line 18
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;-><init>()V

    .line 19
    .local v1, "bean":Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->code(I)V

    .line 22
    :try_start_0
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->data(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 23
    :catch_0
    move-exception v3

    .line 27
    :goto_0
    :try_start_1
    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->message(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    goto :goto_1

    .line 28
    :catch_1
    move-exception v3

    .line 31
    :goto_1
    return-object v1

    .line 15
    .end local v1    # "bean":Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerConverter;->convertResponse(Lokhttp3/Response;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    move-result-object p1

    return-object p1
.end method
