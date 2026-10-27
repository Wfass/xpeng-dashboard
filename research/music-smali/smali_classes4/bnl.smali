.class public abstract Lbnl;
.super Lio/reactivex/Observable;
.source "RxOkAdapterObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lbnl$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbnl$a<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Lbkv;)Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbkv<",
            "TT;>;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected final subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lbnl;->a()Lbnl$a;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lbnl$a;->a(Lio/reactivex/Observer;)V

    .line 26
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 28
    invoke-static {v0}, Lbnl$a;->a(Lbnl$a;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "RxOkAdapterObservable"

    const-string v1, "subscribeActual: "

    .line 29
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    invoke-virtual {v0}, Lbnl$a;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 33
    invoke-virtual {p0, v0}, Lbnl;->a(Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbnl$a;->a(Lcom/lzy/okgo/adapter/Call;)V

    :cond_1
    return-void
.end method
