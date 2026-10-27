.class public Lbnj;
.super Ljava/lang/Object;
.source "DisposeUtils.java"


# direct methods
.method public static a(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
