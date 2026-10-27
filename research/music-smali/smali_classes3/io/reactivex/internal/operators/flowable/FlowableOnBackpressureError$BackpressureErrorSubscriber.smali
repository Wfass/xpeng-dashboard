.class final Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "FlowableOnBackpressureError.java"

# interfaces
.implements Lchk;
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BackpressureErrorSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lchk;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2c15206b10a3577aL


# instance fields
.field done:Z

.field final downstream:Lchj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchj<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lchk;


# direct methods
.method constructor <init>(Lchj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 46
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->downstream:Lchj;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 100
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->upstream:Lchk;

    invoke-interface {v0}, Lchk;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->done:Z

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->downstream:Lchj;

    invoke-interface {v0}, Lchj;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->done:Z

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 66
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "could not emit value due to lack of requests"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lchk;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->upstream:Lchk;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lchk;Lchk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->upstream:Lchk;

    .line 53
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableOnBackpressureError$BackpressureErrorSubscriber;->downstream:Lchj;

    invoke-interface {v0, p0}, Lchj;->onSubscribe(Lchk;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 54
    invoke-interface {p1, v0, v1}, Lchk;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 93
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
