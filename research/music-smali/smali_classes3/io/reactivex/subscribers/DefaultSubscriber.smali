.class public abstract Lio/reactivex/subscribers/DefaultSubscriber;
.super Ljava/lang/Object;
.source "DefaultSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field upstream:Lchk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final cancel()V
    .locals 2

    .line 102
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lchk;

    .line 103
    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v1, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lchk;

    .line 104
    invoke-interface {v0}, Lchk;->cancel()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 113
    invoke-virtual {p0, v0, v1}, Lio/reactivex/subscribers/DefaultSubscriber;->request(J)V

    return-void
.end method

.method public final onSubscribe(Lchk;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lchk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->validate(Lchk;Lchk;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iput-object p1, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lchk;

    .line 83
    invoke-virtual {p0}, Lio/reactivex/subscribers/DefaultSubscriber;->onStart()V

    :cond_0
    return-void
.end method

.method protected final request(J)V
    .locals 1

    .line 92
    iget-object v0, p0, Lio/reactivex/subscribers/DefaultSubscriber;->upstream:Lchk;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1, p2}, Lchk;->request(J)V

    :cond_0
    return-void
.end method
