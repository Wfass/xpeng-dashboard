.class public Lbgr;
.super Ljava/lang/Object;
.source "DolbyDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgr$a;,
        Lbgr$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lbgr;->e:Z

    .line 33
    iput-boolean v0, p0, Lbgr;->f:Z

    return-void
.end method

.method public static a()Lbgr;
    .locals 1

    .line 40
    sget-object v0, Lbgr$b;->a:Lbgr;

    return-object v0
.end method


# virtual methods
.method public a(Lbgr$a;II)V
    .locals 2

    const-string v0, "DolbyDataModel"

    const-string v1, "getDolbyData start"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p2, p3}, Lbet;->a(II)Lio/reactivex/Observable;

    move-result-object p3

    const/16 v0, 0x32

    invoke-static {p2, v0}, Lbet;->b(II)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lbgr$3;

    invoke-direct {v0, p0}, Lbgr$3;-><init>(Lbgr;)V

    invoke-static {p3, p2, v0}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object p2

    .line 105
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lbgr$1;

    invoke-direct {p3, p0, p1}, Lbgr$1;-><init>(Lbgr;Lbgr$a;)V

    new-instance v0, Lbgr$2;

    invoke-direct {v0, p0, p1}, Lbgr$2;-><init>(Lbgr;Lbgr$a;)V

    .line 106
    invoke-virtual {p2, p3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lbgr;->a:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lbgr;->e:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lbgr;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lbgr;->b:Ljava/util/List;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lbgr;->f:Z

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lbgr;->b:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lbgr;->c:Ljava/util/List;

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lbgr;->c:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lbgr;->d:Ljava/util/List;

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lbgr;->d:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lbgr;->e:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lbgr;->f:Z

    return v0
.end method
