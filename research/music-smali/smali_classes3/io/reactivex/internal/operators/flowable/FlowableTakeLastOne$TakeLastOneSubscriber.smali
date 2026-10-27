.class final Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;
.super Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;
.source "FlowableTakeLastOne.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakeLastOneSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/DeferredScalarSubscription<",
        "TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4be1b28db2b70fbaL


# instance fields
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

    .line 39
    invoke-direct {p0, p1}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;-><init>(Lchj;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 74
    invoke-super {p0}, Lio/reactivex/internal/subscriptions/DeferredScalarSubscription;->cancel()V

    .line 75
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->upstream:Lchk;

    invoke-interface {v0}, Lchk;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->downstream:Lchj;

    invoke-interface {v0}, Lchj;->onComplete()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->value:Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->value:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lchk;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->upstream:Lchk;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lchk;Lchk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->upstream:Lchk;

    .line 46
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableTakeLastOne$TakeLastOneSubscriber;->downstream:Lchj;

    invoke-interface {v0, p0}, Lchj;->onSubscribe(Lchk;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 47
    invoke-interface {p1, v0, v1}, Lchk;->request(J)V

    :cond_0
    return-void
.end method
