.class Lcom/xiaopeng/musicradio/model/bluetooth/j$1;
.super Ljava/lang/Object;
.source "PositionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/j;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/j;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PositionManager"

    const-string v1, "updatePositionByInterval"

    .line 87
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->b()V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/j$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/j;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v1}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 90
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 91
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/model/bluetooth/j$1$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/j$1$1;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/j$1;)V

    .line 98
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->emptyConsumer()Lio/reactivex/functions/Consumer;

    move-result-object v3

    .line 92
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/j;->a(Lcom/xiaopeng/musicradio/model/bluetooth/j;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
