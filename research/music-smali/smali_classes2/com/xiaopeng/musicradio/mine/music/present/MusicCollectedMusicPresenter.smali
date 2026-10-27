.class public Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;
.super Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;
.source "MusicCollectedMusicPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x32

    .line 40
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;-><init>(ILjava/lang/String;)V

    .line 41
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->q:I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->r:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;)Z
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->q:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->q:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->v()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 2

    const-string v0, "MusicCollectedMusicPresenter"

    const-string v1, "getDataListPosted"

    .line 56
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Laxu;->a(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 5

    .line 91
    const-class v0, Lase$a;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a([Ljava/lang/Object;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lase$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 92
    iget-boolean v2, p1, Lase$a;->b:Z

    if-eqz v2, :cond_0

    iget-object p1, p1, Lase$a;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 95
    invoke-static {}, Laxu;->c()Z

    move-result v2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePlayingStatus:playing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",from=onDataDirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MusicCollectedMusicPresenter"

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter$a;-><init>(Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->updatePlayingState(ZLcom/xiaopeng/musicradio/datalist/d$a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public dealMusicLove(Lasj$r;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 110
    invoke-virtual {p1}, Lasj$r;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAccountType()I

    move-result v2

    if-eq v1, v2, :cond_1

    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->p()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {p1}, Lasj$r;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->addListItem(Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/collect/music/view/a;->removeListItem(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/collect/music/presenter/CollectedMusicPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 48
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->p:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 49
    invoke-static {p1}, Laxu;->e(I)V

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicCollectedMusicPresenter;->h()V

    :cond_0
    return-void
.end method
