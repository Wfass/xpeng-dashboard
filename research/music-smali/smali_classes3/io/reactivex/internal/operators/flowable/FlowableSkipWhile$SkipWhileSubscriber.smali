.class final Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;
.super Ljava/lang/Object;
.source "FlowableSkipWhile.java"

# interfaces
.implements Lchk;
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkipWhile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipWhileSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lchk;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final downstream:Lchj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchj<",
            "-TT;>;"
        }
    .end annotation
.end field

.field notSkipping:Z

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lchk;


# direct methods
.method constructor <init>(Lchj;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "-TT;>;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lchj;

    .line 42
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 93
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lchk;

    invoke-interface {v0}, Lchk;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 83
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lchj;

    invoke-interface {v0}, Lchj;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->notSkipping:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 68
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lchk;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lchk;->request(J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->notSkipping:Z

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 62
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lchk;

    invoke-interface {v0}, Lchk;->cancel()V

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lchk;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lchk;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lchk;Lchk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lchk;

    .line 49
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->downstream:Lchj;

    invoke-interface {p1, p0}, Lchj;->onSubscribe(Lchk;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 88
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkipWhile$SkipWhileSubscriber;->upstream:Lchk;

    invoke-interface {v0, p1, p2}, Lchk;->request(J)V

    return-void
.end method
