.class public Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "MsRmCategoryLayoutPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:Z

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Z

.field protected f:Z

.field protected g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b:Z

    const-string v1, "0"

    .line 40
    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c:Ljava/lang/String;

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->i:I

    .line 43
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->j:I

    .line 44
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    .line 45
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->e:Z

    .line 46
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->f:Z

    const/16 v0, 0xa

    .line 47
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->g:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->i:I

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V
    .locals 7

    .line 152
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_8

    .line 153
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 158
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v4

    .line 159
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    if-ne v3, v2, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v3, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showNoDataView(Ljava/lang/String;)V

    goto :goto_3

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v1, v4}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->b(Ljava/util/List;)V

    goto :goto_3

    .line 170
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v6, "listsign_recommend_music"

    .line 171
    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    if-ne v3, v2, :cond_4

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v1, v4}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->a(Ljava/util/List;)V

    .line 179
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v1, v4}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->b(Ljava/util/List;)V

    .line 184
    :cond_5
    :goto_2
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->f:Z

    :cond_6
    :goto_3
    if-eqz v0, :cond_9

    .line 187
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->g:I

    .line 188
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_7

    .line 189
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result p1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    .line 191
    :cond_7
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->g:I

    if-le p1, v0, :cond_9

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->e:Z

    goto :goto_4

    .line 196
    :cond_8
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    if-ne p1, v2, :cond_9

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 198
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->f()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 307
    new-instance v0, Lbgo;

    invoke-direct {v0}, Lbgo;-><init>()V

    .line 308
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    invoke-virtual {v0, v1}, Lbgo;->a(I)V

    .line 309
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->e:Z

    invoke-virtual {v0, v1}, Lbgo;->a(Z)V

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lbgo;->a(Ljava/util/List;)V

    .line 311
    invoke-static {}, Lcom/xiaopeng/musicradio/music/detail/a;->a()Lcom/xiaopeng/musicradio/music/detail/a;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/musicradio/music/detail/a;->a(Ljava/lang/String;Lbgo;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 319
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->e:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->j:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 221
    const-class v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getExtra()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object p1

    const-string v2, "new_music_radio"

    .line 225
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "listsign_recommend_music"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b:Z

    goto :goto_0

    .line 230
    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b:Z

    goto :goto_0

    .line 233
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 65
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 68
    invoke-static {}, Layb;->a()Layb;

    move-result-object v0

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v2

    invoke-virtual {v2}, Lbdu;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Layb;->a(I)Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpPlayData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MsRmCategoryLayoutPresenter"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    if-eqz v2, :cond_1

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->a(Ljava/util/List;)V

    .line 75
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b(Ljava/lang/String;)V

    .line 76
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->f:Z

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->e:Z

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->e()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 292
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 8

    .line 85
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->f:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showLoadingView()V

    .line 90
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v6

    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c:Ljava/lang/String;

    .line 94
    :cond_1
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->i:I

    iget v4, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->j:I

    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    new-instance v7, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter$1;

    invoke-direct {v7, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;)V

    invoke-virtual/range {v1 .. v7}, Lasp;->a(Ljava/lang/String;IIIILbkv;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->h:Ljava/lang/String;

    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 260
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 246
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b:Z

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b:Z

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 110
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->f:Z

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showLoadingView()V

    .line 115
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 116
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;)V

    invoke-virtual {v1, v0, v2}, Lasp;->b(ILbkv;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->b:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    .line 207
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->f:Z

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c()V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->e:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->d:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onChangeAudioType(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 255
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsRmCategoryLayoutPresenter"

    const-string v0, "onCreateView"

    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->f:Z

    if-eqz p1, :cond_0

    .line 58
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSpeechStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmCategoryLayoutPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->f()V

    :cond_0
    return-void
.end method
