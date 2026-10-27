.class public abstract Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerCallbackImpl;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "ServerCallbackImpl.java"

# interfaces
.implements Lcom/lzy/okgo/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/callback/AbsCallback<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;",
        ">;",
        "Lcom/lzy/okgo/callback/Callback<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;",
        ">;"
    }
.end annotation


# instance fields
.field private convert:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    .line 12
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerConverter;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerConverter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerCallbackImpl;->convert:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerConverter;

    .line 13
    return-void
.end method


# virtual methods
.method public convertResponse(Lokhttp3/Response;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerCallbackImpl;->convert:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerConverter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerConverter;->convertResponse(Lokhttp3/Response;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    move-result-object v0

    .line 18
    .local v0, "bean":Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 19
    return-object v0
.end method

.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerCallbackImpl;->convertResponse(Lokhttp3/Response;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/ServerBean;

    move-result-object p1

    return-object p1
.end method
