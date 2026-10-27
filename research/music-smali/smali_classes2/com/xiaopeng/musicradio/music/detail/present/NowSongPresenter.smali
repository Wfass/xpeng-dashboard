.class public Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "NowSongPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lbgq;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/String;

.field protected e:I

.field public f:Z

.field protected g:I

.field protected h:Z

.field protected i:I

.field protected j:Z

.field protected k:J

.field protected l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->b:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->c:Ljava/util/HashMap;

    const-string v0, "3104910"

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->m:Z

    .line 49
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->f:Z

    const/16 v2, 0xa

    .line 51
    iput v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->g:I

    .line 53
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->n:Z

    .line 55
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->h:Z

    .line 57
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->o:Z

    const/16 v0, 0x1f4

    .line 59
    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->i:I

    .line 63
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->l:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 8

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->f:Z

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_9

    .line 126
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    .line 131
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_3

    if-ge v5, v7, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgq;

    invoke-interface {p1, v3}, Lbgq;->showNoDataView(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 137
    :cond_2
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->o:Z

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgq;

    invoke-interface {p1}, Lbgq;->loadEnd()V

    goto/16 :goto_4

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 145
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->isFromCache()Z

    move-result v6

    invoke-static {v3, v6}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 147
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 150
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    if-ge v5, v7, :cond_6

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgq;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Lbgq;->getData(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 154
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgq;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Lbgq;->addData(Ljava/util/ArrayList;)V

    .line 156
    :goto_3
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->h:Z

    :cond_7
    if-eqz v2, :cond_8

    .line 159
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->g:I

    .line 160
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_a

    .line 161
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    .line 162
    iget p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    iget v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->g:I

    if-le p1, v1, :cond_a

    .line 163
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->o:Z

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgq;

    invoke-interface {p1}, Lbgq;->loadEnd()V

    goto :goto_4

    .line 170
    :cond_8
    iput v4, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->g:I

    goto :goto_4

    .line 175
    :cond_9
    iget p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    if-ne p1, v4, :cond_a

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgq;

    invoke-interface {p1, v3}, Lbgq;->showErrorView(Ljava/lang/String;)V

    .line 178
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->h:Z

    :cond_a
    :goto_4
    return-void
.end method

.method private j()V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgq;

    invoke-interface {v0}, Lbgq;->updatePlayState()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 5

    .line 102
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->j:Z

    if-eqz v0, :cond_1

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->k:J

    sub-long/2addr v0, v2

    .line 105
    iget v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->i:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v2, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$2;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$2;-><init>(Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    iget p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->i:I

    int-to-long v3, p1

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ")V"
        }
    .end annotation

    .line 217
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 218
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 220
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 221
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_1

    .line 223
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    .line 226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    .line 229
    :cond_2
    iget p4, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    if-nez p4, :cond_3

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, p4

    .line 233
    :goto_0
    iget v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->l:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c()V
    .locals 4

    .line 72
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->h:Z

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgq;

    invoke-interface {v0}, Lbgq;->showLoadingView()V

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->k:J

    .line 77
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->j:Z

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->d()V

    return-void
.end method

.method protected d()V
    .locals 6

    .line 87
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->d:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->l:I

    new-instance v5, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;)V

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lasp;->b(Ljava/lang/String;IIZLbkv;)V

    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 206
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->j()V

    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->j()V

    return-void
.end method

.method public e()Z
    .locals 4

    .line 239
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 242
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    .line 245
    :cond_1
    iget v3, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->g:I

    if-le v0, v3, :cond_2

    return v1

    .line 248
    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->f:Z

    return v2
.end method

.method public f()V
    .locals 3

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgq;

    const-string v1, ""

    invoke-interface {v0, v1}, Lbgq;->showErrorView(Ljava/lang/String;)V

    .line 258
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 259
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbez$g;->common_tips_loading_failed:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 261
    :cond_1
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->h:Z

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    .line 265
    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->f:Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    .line 187
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->h:Z

    if-nez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->c()V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->o:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->e:I

    return v0
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "NowSongPresenter"

    const-string v0, "onCreate"

    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 287
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->n:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 288
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->n:Z

    .line 289
    invoke-static {}, Lbni;->a()V

    :cond_0
    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbgq;

    invoke-interface {p1}, Lbgq;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public receiveLogout(Lasj$ag;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 277
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 278
    invoke-static {}, Lbni;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 280
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/detail/present/NowSongPresenter;->n:Z

    :goto_0
    return-void
.end method
