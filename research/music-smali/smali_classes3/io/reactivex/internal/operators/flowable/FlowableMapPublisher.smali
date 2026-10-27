.class public final Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;
.super Lio/reactivex/Flowable;
.source "FlowableMapPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field

.field final source:Lchi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchi<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lchi;Lio/reactivex/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchi<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;->source:Lchi;

    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;->mapper:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lchj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "-TU;>;)V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;->source:Lchi;

    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableMapPublisher;->mapper:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/flowable/FlowableMap$MapSubscriber;-><init>(Lchj;Lio/reactivex/functions/Function;)V

    invoke-interface {v0, v1}, Lchi;->subscribe(Lchj;)V

    return-void
.end method
