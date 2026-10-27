.class final Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;
.super Ljava/lang/Object;
.source "FlowableSkip.java"

# interfaces
.implements Lchk;
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableSkip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SkipSubscriber"
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

.field remaining:J

.field upstream:Lchk;


# direct methods
.method constructor <init>(Lchj;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->downstream:Lchj;

    .line 41
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->remaining:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->upstream:Lchk;

    invoke-interface {v0}, Lchk;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 70
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->downstream:Lchj;

    invoke-interface {v0}, Lchj;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->downstream:Lchj;

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

    .line 56
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 57
    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->remaining:J

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lchk;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->upstream:Lchk;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lchk;Lchk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->remaining:J

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->upstream:Lchk;

    .line 49
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->downstream:Lchj;

    invoke-interface {v2, p0}, Lchj;->onSubscribe(Lchk;)V

    .line 50
    invoke-interface {p1, v0, v1}, Lchk;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableSkip$SkipSubscriber;->upstream:Lchk;

    invoke-interface {v0, p1, p2}, Lchk;->request(J)V

    return-void
.end method
