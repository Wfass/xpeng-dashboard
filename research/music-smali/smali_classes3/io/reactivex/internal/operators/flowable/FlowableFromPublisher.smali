.class public final Lio/reactivex/internal/operators/flowable/FlowableFromPublisher;
.super Lio/reactivex/Flowable;
.source "FlowableFromPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final publisher:Lchi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchi<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lchi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchi<",
            "+TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 24
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromPublisher;->publisher:Lchi;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lchj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "-TT;>;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromPublisher;->publisher:Lchi;

    invoke-interface {v0, p1}, Lchi;->subscribe(Lchj;)V

    return-void
.end method
