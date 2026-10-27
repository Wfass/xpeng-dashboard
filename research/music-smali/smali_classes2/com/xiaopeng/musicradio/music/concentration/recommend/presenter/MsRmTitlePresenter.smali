.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsRmTitlePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;",
        ">;"
    }
.end annotation


# static fields
.field public static c:I = 0x12


# instance fields
.field public b:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->f:Ljava/util/ArrayList;

    const-string v0, "100823"

    .line 33
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->g:I

    const/16 v0, 0xa

    .line 38
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->i:Z

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V
    .locals 4

    .line 100
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_8

    .line 101
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ne v2, v1, :cond_2

    .line 107
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    return-void

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    if-ne v2, v1, :cond_8

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;->showNoDataView(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h:I

    .line 121
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->g:I

    .line 123
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v3, "listsign_recommend_music"

    .line 124
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 129
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-ne v2, v1, :cond_8

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->c:I

    if-le p1, v0, :cond_7

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->i()V

    goto :goto_2

    .line 136
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h()V

    :cond_8
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->i:Z

    return p1
.end method

.method private m()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->c:I

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 172
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;->getData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;->getData(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->j:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 205
    sput p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->c:I

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "new_music_radio"

    .line 63
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

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->d:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;->updateRmPlayState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 8

    .line 74
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->i:Z

    .line 78
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\u534e\u8bed"

    .line 79
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-string v0, "1"

    .line 81
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "100823"

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->b:Ljava/lang/String;

    .line 85
    :goto_0
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->b:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->g:I

    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->j:I

    new-instance v7, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter$1;

    invoke-direct {v7, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;)V

    invoke-virtual/range {v1 .. v7}, Lasp;->a(Ljava/lang/String;IIIILbkv;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->c:I

    if-lt v0, v1, :cond_1

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->m()V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->c:I

    mul-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_2

    .line 148
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->g:I

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h:I

    if-lt v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->m()V

    .line 161
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->g:I

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h:I

    if-ge v0, v1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public o_()V
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/d;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsRmTitlePresenter"

    const-string v0, "onCreateView"

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->j()V

    :cond_0
    return-void
.end method
