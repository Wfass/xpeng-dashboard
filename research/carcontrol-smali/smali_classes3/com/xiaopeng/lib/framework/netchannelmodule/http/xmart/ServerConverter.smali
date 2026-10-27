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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 13
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;-><init>()V

    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 20
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->code(I)V

    :try_start_0
    const-string p1, "data"

    .line 22
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->data(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    const-string p1, "msg"

    .line 27
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;->message(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-object v0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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
