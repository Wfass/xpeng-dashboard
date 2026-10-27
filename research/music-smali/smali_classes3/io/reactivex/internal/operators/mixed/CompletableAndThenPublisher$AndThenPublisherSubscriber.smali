.class final Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableAndThenPublisher.java"

# interfaces
.implements Lchk;
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AndThenPublisherSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lchk;",
        ">;",
        "Lchk;",
        "Lio/reactivex/CompletableObserver;",
        "Lio/reactivex/FlowableSubscriber<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7c2e9f0a46fa84b0L


# instance fields
.field final downstream:Lchj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchj<",
            "-TR;>;"
        }
    .end annotation
.end field

.field other:Lchi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchi<",
            "+TR;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lchj;Lchi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "-TR;>;",
            "Lchi<",
            "+TR;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 64
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->downstream:Lchj;

    .line 65
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->other:Lchi;

    .line 66
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 98
    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->other:Lchi;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->downstream:Lchj;

    invoke-interface {v0}, Lchj;->onComplete()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->other:Lchi;

    .line 86
    invoke-interface {v0, p0}, Lchi;->subscribe(Lchj;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lchk;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lchk;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->upstream:Lio/reactivex/disposables/Disposable;

    .line 105
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->downstream:Lchj;

    invoke-interface {p1, p0}, Lchj;->onSubscribe(Lchk;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/CompletableAndThenPublisher$AndThenPublisherSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, v0, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
