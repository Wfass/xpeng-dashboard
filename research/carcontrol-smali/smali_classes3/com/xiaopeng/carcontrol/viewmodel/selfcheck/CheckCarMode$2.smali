.class Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;
.super Ljava/lang/Object;
.source "CheckCarMode.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->subscribeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onComplete$0$CheckCarMode$2()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$900(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " onComplete "

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$402(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Z)Z

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$502(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Z)Z

    .line 347
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$2$sWNsz066vZU0JwK4L7IUnkpbFeY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$2$sWNsz066vZU0JwK4L7IUnkpbFeY;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;)V

    const-wide/16 v3, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$700(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$602(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;I)I

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$800(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;->onCheckComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 334
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$402(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Z)Z

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;->onCheckError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$208(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;->onChecking(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    .line 318
    check-cast p1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->onNext(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$102(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
