.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsRmPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e:I

    const/16 v0, 0xa

    .line 33
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->f:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e:I

    return p0
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;I)V
    .locals 3

    .line 88
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_5

    if-ne p2, v2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    if-ne p2, v2, :cond_6

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;->showNoDataView(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->f:I

    .line 102
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e:I

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v1, "listsign_recommend_music"

    .line 105
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_6

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x12

    if-le p1, p2, :cond_4

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->i()V

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->h()V

    goto :goto_1

    .line 120
    :cond_5
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e:I

    if-ne p1, v2, :cond_6

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;->showErrorView(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;I)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;->getData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;->getData(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "new_music_radio"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "listsign_recommend_music"

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

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;->updateRmPlayState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->h()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 8

    .line 64
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;->showLoadingView()V

    .line 69
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v6

    .line 70
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e:I

    new-instance v7, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;

    invoke-direct {v7, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;)V

    const-string v2, "100823"

    invoke-virtual/range {v1 .. v7}, Lasp;->a(Ljava/lang/String;IIIILbkv;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->m()V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x48

    if-gt v0, v1, :cond_2

    .line 132
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e:I

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->f:I

    if-lt v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->h()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->m()V

    .line 145
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e:I

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->f:I

    if-ge v0, v1, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public o_()V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsRmPresenter"

    const-string v0, "onCreateView"

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->j()V

    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->e()V

    return-void
.end method
