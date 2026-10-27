.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "StringCallbackAdapter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mOuterCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 10
    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    .line 11
    nop

    .line 12
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;->mOuterCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 13
    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/lzy/okgo/callback/StringCallback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;->mOuterCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;-><init>(Lcom/lzy/okgo/model/Response;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;->onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V

    .line 19
    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;->mOuterCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;-><init>(Lcom/lzy/okgo/model/Response;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;->onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V

    .line 28
    return-void
.end method
