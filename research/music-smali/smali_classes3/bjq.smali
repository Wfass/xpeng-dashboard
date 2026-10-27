.class public Lbjq;
.super Ljava/lang/Object;
.source "ConMainModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbjq$b;,
        Lbjq$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbjq;
    .locals 1

    .line 28
    invoke-static {}, Lbjq$a;->a()Lbjq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbjq$b;Ljava/lang/String;IIII)V
    .locals 8

    const-string v0, "ConMainModel"

    const-string v1, "getConMain start"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p2, p3, p4, p5, p6}, Lbet;->a(Ljava/lang/String;IIII)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {p6}, Lbet;->a(I)Lio/reactivex/Observable;

    move-result-object v3

    invoke-static {p6}, Lbet;->b(I)Lio/reactivex/Observable;

    move-result-object v4

    invoke-static {p6}, Lbet;->c(I)Lio/reactivex/Observable;

    move-result-object v5

    .line 38
    invoke-static {p6}, Lbet;->d(I)Lio/reactivex/Observable;

    move-result-object v6

    new-instance v7, Lbjq$3;

    invoke-direct {v7, p0}, Lbjq$3;-><init>(Lbjq;)V

    .line 37
    invoke-static/range {v2 .. v7}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function5;)Lio/reactivex/Observable;

    move-result-object p2

    .line 53
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lbjq$1;

    invoke-direct {p3, p0, p1}, Lbjq$1;-><init>(Lbjq;Lbjq$b;)V

    new-instance p4, Lbjq$2;

    invoke-direct {p4, p0, p1}, Lbjq$2;-><init>(Lbjq;Lbjq$b;)V

    .line 54
    invoke-virtual {p2, p3, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
