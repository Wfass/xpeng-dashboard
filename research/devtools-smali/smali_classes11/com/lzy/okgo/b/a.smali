.class public abstract Lcom/lzy/okgo/b/a;
.super Ljava/lang/Object;
.source "AbsCallback.java"

# interfaces
.implements Lcom/lzy/okgo/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/b/b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 57
    return-void
.end method

.method public onCacheSuccess(Lcom/lzy/okgo/model/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    return-void
.end method

.method public onError(Lcom/lzy/okgo/model/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 49
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
    return-void
.end method

.method public uploadProgress(Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    .line 53
    return-void
.end method
