.class public Lbbo;
.super Ljava/lang/Object;
.source "PreloadPageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(III)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    add-int v1, p1, p2

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    .line 144
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    const-string p2, "PreloadPageHandler"

    const-string p3, "startPage = %d, pageNum = %d, totalPage = %d, targetPage = %d"

    invoke-static {p2, p3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p2}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lbbo;III)Lio/reactivex/Observable;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lbbo;->a(III)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lbbo;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lbbo;->b:Z

    return p0
.end method

.method static synthetic a(Lbbo;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lbbo;->b:Z

    return p1
.end method

.method static synthetic b(Lbbo;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lbbo;->a:Z

    return p0
.end method

.method static synthetic b(Lbbo;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lbbo;->a:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "PreloadPageHandler"

    const-string v1, "cancel: "

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lbbo;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lbbo;->a:Z

    .line 158
    iput-boolean v0, p0, Lbbo;->b:Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/ListSignBean;",
            "IIIIZ",
            "Lbbo$a<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p7, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lbbo;->a()V

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    move v6, p4

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    const/4 p4, 0x3

    .line 42
    new-array p4, p4, [Ljava/lang/Object;

    const/4 p6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, p6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p4, v0

    const/4 p6, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, p6

    const-string p6, "PreloadPageHandler"

    const-string v1, "startPage = %d, preloadPage = %d, totalPage = %d"

    invoke-static {p6, v1, p4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p2, v0, :cond_2

    .line 45
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "preloadPageReq:pageSize = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p6, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-interface {p7, v0, p3}, Lbbo$a;->a(II)Lio/reactivex/Observable;

    move-result-object p4

    new-instance p5, Lbbo$6;

    invoke-direct {p5, p0}, Lbbo$6;-><init>(Lbbo;)V

    invoke-virtual {p4, p5}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p4

    new-instance p5, Lbbo$5;

    invoke-direct {p5, p0, p7}, Lbbo$5;-><init>(Lbbo;Lbbo$a;)V

    .line 51
    invoke-virtual {p4, p5}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p4

    new-instance p5, Lbbo$4;

    invoke-direct {p5, p0}, Lbbo$4;-><init>(Lbbo;)V

    .line 57
    invoke-virtual {p4, p5}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p4

    new-instance p5, Lbbo$1;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p7

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lbbo$1;-><init>(Lbbo;Lbbo$a;Lcom/xiaopeng/musicradio/bean/ListSignBean;II)V

    .line 62
    invoke-virtual {p4, p5}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-gt p5, v0, :cond_3

    .line 78
    invoke-interface {p7, v0, v0}, Lbbo$a;->a(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p4, Lbbo$8;

    invoke-direct {p4, p0, p7}, Lbbo$8;-><init>(Lbbo;Lbbo$a;)V

    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p4, Lbbo$7;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p7

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lbbo$7;-><init>(Lbbo;Lbbo$a;III)V

    .line 84
    invoke-virtual {p1, p4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_1

    .line 93
    :cond_3
    invoke-direct {p0, p2, v6, p5}, Lbbo;->a(III)Lio/reactivex/Observable;

    move-result-object p1

    .line 98
    :goto_1
    new-instance p2, Lbbo$3;

    invoke-direct {p2, p0, p7, p3}, Lbbo$3;-><init>(Lbbo;Lbbo$a;I)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lbbo$11;

    invoke-direct {p2, p0}, Lbbo$11;-><init>(Lbbo;)V

    new-instance p3, Lbbo$2;

    invoke-direct {p3, p0}, Lbbo$2;-><init>(Lbbo;)V

    .line 108
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->collect(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiConsumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 119
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 120
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lbbo$9;

    invoke-direct {p2, p0, p7}, Lbbo$9;-><init>(Lbbo;Lbbo$a;)V

    new-instance p3, Lbbo$10;

    invoke-direct {p3, p0}, Lbbo$10;-><init>(Lbbo;)V

    .line 121
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbbo;->c:Lio/reactivex/disposables/Disposable;

    return-void
.end method
