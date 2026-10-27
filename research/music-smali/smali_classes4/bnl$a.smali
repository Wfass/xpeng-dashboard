.class public Lbnl$a;
.super Lbkv;
.source "RxOkAdapterObservable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
        ">",
        "Lbkv<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field private a:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected volatile b:Z

.field protected c:Z

.field d:Z

.field private e:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lbkv;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lbnl$a;->c:Z

    .line 53
    iput-boolean v0, p0, Lbnl$a;->d:Z

    return-void
.end method

.method static synthetic a(Lbnl$a;)Lcom/lzy/okgo/adapter/Call;
    .locals 0

    .line 47
    iget-object p0, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lbnl$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-boolean v0, p0, Lbnl$a;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lbnl$a;->d:Z

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 126
    :try_start_0
    iput-boolean v0, p0, Lbnl$a;->c:Z

    .line 127
    iget-object v0, p0, Lbnl$a;->e:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->getRequest()Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    const-string v1, "error: "

    const-string v2, "RxOkGoResponse"

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v1}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v1}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " baseUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v1}, Lcom/lzy/okgo/adapter/Call;->getRequest()Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    new-instance v0, Lbkp;

    invoke-direct {v0, p1, p2}, Lbkp;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 98
    :try_start_0
    iput-boolean p1, p0, Lbnl$a;->d:Z

    .line 99
    iget-object p2, p0, Lbnl$a;->e:Lio/reactivex/Observer;

    invoke-interface {p2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 101
    invoke-static {p2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 102
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object p2, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method a(Lcom/lzy/okgo/adapter/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public final a(Lcom/lzy/okgo/model/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1}, Lbkv;->a(Lcom/lzy/okgo/model/Response;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    iget-boolean v0, p0, Lbnl$a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbnl$a;->e:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RxOkGoResponse"

    const-string v1, "response: "

    .line 69
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    iget-boolean v1, p0, Lbnl$a;->c:Z

    if-eqz v1, :cond_1

    .line 71
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :cond_1
    iget-boolean v1, p0, Lbnl$a;->b:Z

    if-nez v1, :cond_2

    .line 74
    :try_start_1
    iget-object v1, p0, Lbnl$a;->e:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "response inner: "

    .line 76
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 78
    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method a(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lbnl$a;->e:Lio/reactivex/Observer;

    return-void
.end method

.method public final b(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 108
    invoke-super {p0, p1}, Lbkv;->b(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lbnl$a;->b:Z

    .line 136
    iget-object v0, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lbnl$a;->a:Lcom/lzy/okgo/adapter/Call;

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lbnl$a;->b:Z

    return v0
.end method
