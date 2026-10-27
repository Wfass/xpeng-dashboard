.class final Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;
.super Ljava/lang/Object;
.source "FlowableFromObservable.java"

# interfaces
.implements Lchk;
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableFromObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscriberObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lchk;",
        "Lio/reactivex/Observer<",
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

.field upstream:Lio/reactivex/disposables/Disposable;


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

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->downstream:Lchj;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 64
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 44
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->downstream:Lchj;

    invoke-interface {v0}, Lchj;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->downstream:Lchj;

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

    .line 54
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->downstream:Lchj;

    invoke-interface {v0, p1}, Lchj;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 60
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableFromObservable$SubscriberObserver;->downstream:Lchj;

    invoke-interface {p1, p0}, Lchj;->onSubscribe(Lchk;)V

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
