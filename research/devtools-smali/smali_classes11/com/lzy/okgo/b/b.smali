.class public interface abstract Lcom/lzy/okgo/b/b;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lcom/lzy/okgo/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/c/a<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onCacheSuccess(Lcom/lzy/okgo/model/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lcom/lzy/okgo/model/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onFinish()V
.end method

.method public abstract onStart(Lcom/lzy/okgo/request/base/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lcom/lzy/okgo/model/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract uploadProgress(Lcom/lzy/okgo/model/Progress;)V
.end method
