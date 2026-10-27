.class Lask$5;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lask;


# direct methods
.method constructor <init>(Lask;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lask$5;->a:Lask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    .line 366
    iget-object v0, p0, Lask$5;->a:Lask;

    invoke-static {v0, p1}, Lask;->b(Lask;I)V

    .line 367
    iget-object v0, p0, Lask$5;->a:Lask;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v1}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v1

    .line 368
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 369
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lask$5$1;

    invoke-direct {v2, p0, p1}, Lask$5$1;-><init>(Lask$5;I)V

    .line 370
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 367
    invoke-static {v0, p1}, Lask;->a(Lask;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
