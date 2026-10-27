.class public abstract Lcom/lzy/okgo/callback/AbsCallback;
.super Ljava/lang/Object;
.source "AbsCallback.java"

# interfaces
.implements Lcom/lzy/okgo/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/callback/Callback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lcom/lzy/okgo/callback/AbsCallback;, "Lcom/lzy/okgo/callback/AbsCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .param p1, "progress"    # Lcom/lzy/okgo/model/Progress;

    .line 57
    .local p0, "this":Lcom/lzy/okgo/callback/AbsCallback;, "Lcom/lzy/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public onCacheSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/lzy/okgo/callback/AbsCallback;, "Lcom/lzy/okgo/callback/AbsCallback<TT;>;"
    .local p1, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    return-void
.end method

.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/lzy/okgo/callback/AbsCallback;, "Lcom/lzy/okgo/callback/AbsCallback<TT;>;"
    .local p1, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 49
    .local p0, "this":Lcom/lzy/okgo/callback/AbsCallback;, "Lcom/lzy/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method

.method public onStart(Lcom/lzy/okgo/request/base/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/lzy/okgo/callback/AbsCallback;, "Lcom/lzy/okgo/callback/AbsCallback<TT;>;"
    .local p1, "request":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;+Lcom/lzy/okgo/request/base/Request;>;"
    return-void
.end method

.method public uploadProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 0
    .param p1, "progress"    # Lcom/lzy/okgo/model/Progress;

    .line 53
    .local p0, "this":Lcom/lzy/okgo/callback/AbsCallback;, "Lcom/lzy/okgo/callback/AbsCallback<TT;>;"
    return-void
.end method
