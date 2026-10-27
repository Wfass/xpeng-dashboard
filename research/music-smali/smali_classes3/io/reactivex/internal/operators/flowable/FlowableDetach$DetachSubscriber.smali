.class final Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;
.super Ljava/lang/Object;
.source "FlowableDetach.java"

# interfaces
.implements Lchk;
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDetach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DetachSubscriber"
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
.field downstream:Lchj;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->downstream:Lchj;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 50
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->upstream:Lchk;

    .line 51
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->upstream:Lchk;

    .line 52
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Lchj;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->downstream:Lchj;

    .line 53
    invoke-interface {v0}, Lchk;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 80
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->downstream:Lchj;

    .line 81
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->upstream:Lchk;

    .line 82
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Lchj;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->downstream:Lchj;

    .line 83
    invoke-interface {v0}, Lchj;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->downstream:Lchj;

    .line 73
    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->upstream:Lchk;

    .line 74
    invoke-static {}, Lio/reactivex/internal/util/EmptyComponent;->asSubscriber()Lchj;

    move-result-object v1

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->downstream:Lchj;

    .line 75
    invoke-interface {v0, p1}, Lchj;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lchk;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->upstream:Lchk;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lchk;Lchk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->upstream:Lchk;

    .line 61
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->downstream:Lchj;

    invoke-interface {p1, p0}, Lchj;->onSubscribe(Lchk;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDetach$DetachSubscriber;->upstream:Lchk;

    invoke-interface {v0, p1, p2}, Lchk;->request(J)V

    return-void
.end method
