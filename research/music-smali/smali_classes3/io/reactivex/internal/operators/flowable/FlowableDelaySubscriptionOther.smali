.class public final Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;
.super Lio/reactivex/Flowable;
.source "FlowableDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$MainSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final main:Lchi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchi<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final other:Lchi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchi<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lchi;Lchi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchi<",
            "+TT;>;",
            "Lchi<",
            "TU;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;->main:Lchi;

    .line 35
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;->other:Lchi;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lchj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$MainSubscriber;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;->main:Lchi;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$MainSubscriber;-><init>(Lchj;Lchi;)V

    .line 41
    invoke-interface {p1, v0}, Lchj;->onSubscribe(Lchk;)V

    .line 42
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther;->other:Lchi;

    iget-object v0, v0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$MainSubscriber;->other:Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$MainSubscriber$OtherSubscriber;

    invoke-interface {p1, v0}, Lchi;->subscribe(Lchj;)V

    return-void
.end method
