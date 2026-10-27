.class final Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;
.super Ljava/lang/Object;
.source "FlowableInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscriberOnComplete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Action;"
    }
.end annotation


# instance fields
.field final subscriber:Lchj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lchj<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lchj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchj<",
            "TT;>;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;->subscriber:Lchj;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete;->subscriber:Lchj;

    invoke-interface {v0}, Lchj;->onComplete()V

    return-void
.end method
