.class public Layw;
.super Ljava/lang/Object;
.source "PreloadAllPageAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layw$a;
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
.field private a:Lio/reactivex/disposables/Disposable;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Layw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Layw$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layw;->b:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layw;->e:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layw;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Layw;)Layw$a;
    .locals 0

    .line 22
    iget-object p0, p0, Layw;->d:Layw$a;

    return-object p0
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

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x4

    .line 159
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

    const-string p2, "PreloadAllPageAction"

    const-string p3, "startPage = %d, pageNum = %d, totalPage = %d, targetPage = %d"

    invoke-static {p2, p3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p2}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Layw;III)Lio/reactivex/Observable;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Layw;->a(III)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Layw;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 22
    iput-object p1, p0, Layw;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Layw;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Layw;->g:Z

    return p1
.end method

.method static synthetic b(Layw;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Layw;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Layw;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Layw;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Layw;)I
    .locals 0

    .line 22
    iget p0, p0, Layw;->c:I

    return p0
.end method

.method static synthetic e(Layw;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Layw;->b:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 146
    iget-boolean v0, p0, Layw;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Layw;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Layw;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v1, p0, Layw;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Layw;->b:Ljava/util/List;

    .line 153
    iget v1, p0, Layw;->c:I

    iget-object v2, p0, Layw;->d:Layw$a;

    invoke-virtual {p0, v0, v1, v2}, Layw;->a(Ljava/util/List;ILayw$a;)V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;ILayw$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Layw$a<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 44
    :cond_0
    iput p2, p0, Layw;->c:I

    .line 45
    iput-object p3, p0, Layw;->d:Layw$a;

    const/4 p3, 0x1

    .line 46
    iput-boolean p3, p0, Layw;->g:Z

    .line 48
    invoke-virtual {p0}, Layw;->b()V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloadPageReq: pageList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadAllPageAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preloadPageReq:pageSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Layw;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Layw;->b:Ljava/util/List;

    .line 57
    iget-object p1, p0, Layw;->d:Layw$a;

    invoke-interface {p1, p3, p2}, Layw$a;->a(II)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p3, Layw$3;

    invoke-direct {p3, p0}, Layw$3;-><init>(Layw;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->doOnComplete(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p3, Layw$2;

    invoke-direct {p3, p0}, Layw$2;-><init>(Layw;)V

    .line 62
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p3, Layw$1;

    invoke-direct {p3, p0}, Layw$1;-><init>(Layw;)V

    .line 69
    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_1
    iget-object p3, p0, Layw;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x5

    if-le p3, v0, :cond_2

    .line 89
    iget-object p3, p0, Layw;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p3, 0x0

    .line 90
    invoke-interface {p1, p3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 92
    :cond_2
    invoke-static {p1}, Lio/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 95
    :goto_0
    new-instance p3, Layw$8;

    invoke-direct {p3, p0, p2}, Layw$8;-><init>(Layw;I)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Layw$6;

    invoke-direct {p2, p0}, Layw$6;-><init>(Layw;)V

    new-instance p3, Layw$7;

    invoke-direct {p3, p0}, Layw$7;-><init>(Layw;)V

    .line 112
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Observable;->collect(Ljava/util/concurrent/Callable;Lio/reactivex/functions/BiConsumer;)Lio/reactivex/Single;

    move-result-object p1

    .line 123
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 124
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Layw$4;

    invoke-direct {p2, p0}, Layw$4;-><init>(Layw;)V

    new-instance p3, Layw$5;

    invoke-direct {p3, p0}, Layw$5;-><init>(Layw;)V

    .line 125
    invoke-virtual {p1, p2, p3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Layw;->a:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b()V
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "===="

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "PreloadAllPageAction"

    const-string v2, "cancel: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    iget-object v0, p0, Layw;->a:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
