.class public Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsRankPresenter.java"

# interfaces
.implements Laxy$a;
.implements Laxy$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/rank/rank/view/a;",
        ">;",
        "Laxy$a;",
        "Laxy$b;"
    }
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->c:Z

    .line 27
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;Ljava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->c:Z

    return p1
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 126
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 127
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string p1, "MsRankPresenter"

    const-string v0, "msrank--onDataFetch"

    .line 31
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "new_music_radio"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "listsign_rank_music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->b:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;->showLoadingView()V

    .line 67
    :cond_0
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Laxy;->a(Laxy$a;Z)V

    .line 68
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e:I

    new-instance v2, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;)V

    invoke-virtual {v0, v1, v2}, Lasp;->e(ILbkv;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 154
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->c:Z

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e()V

    :cond_0
    return-void
.end method

.method public n_()V
    .locals 2

    const-string v0, "MsRankPresenter"

    const-string v1, "msrank--onErrorRetry"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->e()V

    return-void
.end method

.method public o_()V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/rank/rank/view/a;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string v0, "MsRankPresenter"

    const-string v1, "onCreate"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 47
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->a(Laxy$a;)V

    .line 48
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->c:Z

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/rank/rank/presenter/MsRankPresenter;->j()V

    :cond_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const-string p1, "MsRankPresenter"

    const-string v0, "onDestroy"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method
