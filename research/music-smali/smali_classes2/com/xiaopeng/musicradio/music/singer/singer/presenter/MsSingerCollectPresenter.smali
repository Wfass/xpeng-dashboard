.class public Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsSingerCollectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/singer/singer/view/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:I

.field private c:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    const-string v0, "0"

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->f:Z

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->g:Z

    .line 28
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->b:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    return p0
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;I)V
    .locals 5

    .line 63
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_6

    .line 64
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    if-ne p2, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    invoke-interface {p2, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->showNoDataView(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    invoke-interface {p2, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->addData(Ljava/util/List;)V

    goto :goto_2

    .line 76
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v4, "listsign_singer_single_music"

    .line 77
    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    if-ne p2, v2, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    invoke-interface {p2, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->getData(Ljava/util/List;)V

    .line 85
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->isFromCache()Z

    move-result p2

    if-nez p2, :cond_4

    .line 86
    iget p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    invoke-interface {p2, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->addData(Ljava/util/List;)V

    .line 90
    iget p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    .line 94
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->g:Z

    .line 96
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    .line 97
    iget p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    if-le p2, p1, :cond_7

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->f:Z

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->addData(Ljava/util/List;)V

    goto :goto_3

    .line 104
    :cond_6
    iget p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    if-ne p1, v2, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "singer_music"

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "listsign_singer_single_music"

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

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->updatePlayState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .line 41
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->showLoadingView()V

    .line 46
    :cond_0
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->c:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->b:I

    new-instance v4, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;

    invoke-direct {v4, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lasp;->a(Ljava/lang/String;IILbkv;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->g()V

    .line 115
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->g:Z

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e()V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->f:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e:I

    return v0
.end method

.method public o_()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsSingerCollectPresenter"

    const-string v0, "onCreateView"

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->g:Z

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->j()V

    :cond_0
    return-void
.end method
