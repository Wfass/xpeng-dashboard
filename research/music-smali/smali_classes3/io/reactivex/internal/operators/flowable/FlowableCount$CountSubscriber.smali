.class final Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "FlowableCount.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "Ljava/lang/Long;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4503a8fe5159fe4eL


# instance fields
.field count:J

.field upstream:Lchk;


# direct methods
.method constructor <init>(Lchj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lchj;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 71
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->upstream:Lchk;

    invoke-interface {v0}, Lchk;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 66
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    .line 56
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->count:J

    return-void
.end method

.method public onSubscribe(Lchk;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->upstream:Lchk;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lchk;Lchk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->upstream:Lchk;

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCount$CountSubscriber;->downstream:Lchj;

    invoke-interface {v0, p0}, Lchj;->onSubscribe(Lchk;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 50
    invoke-interface {p1, v0, v1}, Lchk;->request(J)V

    :cond_0
    return-void
.end method
