.class Laym$5;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Laym;


# direct methods
.method constructor <init>(Laym;I)V
    .locals 0

    .line 780
    iput-object p1, p0, Laym$5;->b:Laym;

    iput p2, p0, Laym$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 783
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const-string v1, "BluetoothMusicService"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string v0, "don\'t update playstate as not bluetooth music type"

    .line 784
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Laym$5;->b:Laym;

    iget v2, p0, Laym$5;->a:I

    invoke-static {v0, v2}, Laym;->d(Laym;I)I

    move-result v0

    .line 788
    iget v2, p0, Laym$5;->a:I

    if-nez v2, :cond_1

    .line 789
    iget-object v2, p0, Laym$5;->b:Laym;

    const-wide/16 v3, 0x1388

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v3

    .line 790
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    new-instance v4, Laym$5$1;

    invoke-direct {v4, p0}, Laym$5$1;-><init>(Laym$5;)V

    .line 791
    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    .line 789
    invoke-static {v2, v3}, Laym;->a(Laym;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 803
    :cond_1
    iget-object v2, p0, Laym$5;->b:Laym;

    invoke-static {v2}, Laym;->l(Laym;)I

    move-result v2

    if-ne v2, v0, :cond_2

    return-void

    .line 806
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayState(): state = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v1, p0, Laym$5;->b:Laym;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Laym;->b(Laym;Z)Z

    .line 808
    iget-object v1, p0, Laym$5;->b:Laym;

    invoke-static {v1, v0}, Laym;->e(Laym;I)I

    .line 809
    iget-object v1, p0, Laym$5;->b:Laym;

    invoke-static {v1}, Laym;->m(Laym;)V

    .line 810
    iget-object v1, p0, Laym$5;->b:Laym;

    invoke-static {v1}, Laym;->n(Laym;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 811
    invoke-interface {v2, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->b(I)V

    goto :goto_1

    :cond_3
    return-void
.end method
