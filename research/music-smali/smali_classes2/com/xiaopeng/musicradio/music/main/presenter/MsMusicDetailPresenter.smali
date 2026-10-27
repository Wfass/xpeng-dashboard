.class public Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "MsMusicDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lcom/xiaopeng/musicradio/music/main/view/b;",
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

.field protected i:Z

.field protected j:I

.field protected k:Z

.field protected l:J

.field protected m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;

.field private r:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->c:Ljava/util/HashMap;

    const-string v0, "3104910"

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->n:Z

    .line 57
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->f:Z

    const/16 v2, 0xa

    .line 59
    iput v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->g:I

    .line 61
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->o:Z

    .line 63
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->h:Z

    .line 65
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->i:Z

    const/16 v0, 0x1f4

    .line 67
    iput v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->j:I

    .line 71
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->m:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->p:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->r:J

    return-wide v0
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 8

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->f:Z

    if-eqz p1, :cond_0

    .line 184
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

    :goto_0
    const-string v2, ""

    const/4 v3, 0x1

    if-eqz p1, :cond_b

    .line 185
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v4

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ltz v4, :cond_b

    .line 186
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean$DataBean;->getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 189
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v5

    .line 190
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotal()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/musicradio/music/main/view/b;->setTotalSong(I)V

    goto :goto_1

    :cond_1
    move v5, v3

    .line 194
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_4

    if-ge v5, v7, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/music/main/view/b;->showNoDataView(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 200
    :cond_3
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->i:Z

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/b;->loadEnd()V

    goto/16 :goto_4

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 207
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 208
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->isFromCache()Z

    move-result v6

    invoke-static {v2, v6}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Z)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 210
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    if-ge v5, v7, :cond_7

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/main/view/b;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/xiaopeng/musicradio/music/main/view/b;->getData(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 217
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/music/main/view/b;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/xiaopeng/musicradio/music/main/view/b;->addData(Ljava/util/ArrayList;)V

    .line 219
    :goto_3
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->h:Z

    :cond_8
    if-eqz v4, :cond_a

    .line 222
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->g:I

    .line 223
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_9

    .line 224
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result p1

    add-int/2addr p1, v3

    iput p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    .line 225
    iget p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->g:I

    if-le p1, v1, :cond_9

    .line 226
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->i:Z

    .line 227
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/b;->loadEnd()V

    .line 232
    :cond_9
    iget p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->g:I

    if-ne p1, v3, :cond_c

    .line 233
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->i:Z

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/b;->loadEnd()V

    goto :goto_4

    .line 239
    :cond_a
    iput v3, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->g:I

    .line 240
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->i:Z

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/b;->loadEnd()V

    goto :goto_4

    .line 248
    :cond_b
    iget p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    if-ne p1, v3, :cond_c

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 250
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/music/main/view/b;->showErrorView(Ljava/lang/String;)V

    .line 251
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->h:Z

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/b;->setTotalSong(I)V

    :cond_c
    :goto_4
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->j()V

    return-void
.end method

.method private j()V
    .locals 6

    .line 147
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->p:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    iget v4, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->m:I

    new-instance v5, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$2;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$2;-><init>(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)V

    invoke-virtual/range {v0 .. v5}, Lasp;->a(Ljava/lang/String;IIILbkv;)V

    return-void
.end method

.method private k()V
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/main/view/b;->updatePlayState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 275
    iput p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->p:I

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVersion: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->p:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NrAllRadioActPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 287
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->r:J

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCacheId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->r:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NrAllRadioActPresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 397
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->enableLove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-virtual {v0}, Layr;->b()Layq;

    move-result-object v0

    invoke-virtual {v0, p1}, Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 400
    :cond_0
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->tip_no_can_love:I

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V
    .locals 5

    .line 162
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->k:Z

    if-eqz v0, :cond_1

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 164
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->l:J

    sub-long/2addr v0, v2

    .line 165
    iget v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->j:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance v2, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$3;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$3;-><init>(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    iget p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->j:I

    int-to-long v3, p1

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lbql;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/MusicCollectSongListBean;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 269
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NrAllRadioActPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 6
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

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 367
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
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
            "I)V"
        }
    .end annotation

    .line 372
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 373
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 375
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 376
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_1

    .line 378
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    .line 381
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    .line 384
    :cond_2
    iget p4, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    if-nez p4, :cond_3

    move v7, v0

    goto :goto_0

    :cond_3
    move v7, p4

    .line 389
    :goto_0
    iget v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->m:I

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, p2

    move v3, p5

    move v6, p3

    invoke-static/range {v1 .. v7}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(ZLcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 1

    .line 292
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 293
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    return-void
.end method

.method public a(ZLcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V
    .locals 2

    .line 297
    new-instance v0, Lasj$l;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {v0, p2, v1}, Lasj$l;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;Z)V

    .line 298
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 300
    invoke-static {}, Layr;->a()Layr;

    move-result-object p1

    invoke-virtual {p1, p3}, Layr;->a(I)Layq;

    move-result-object p1

    invoke-static {p2}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object p2

    invoke-virtual {p1, p2}, Layq;->a(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Layr;->a()Layr;

    move-result-object p1

    invoke-virtual {p1, p3}, Layr;->a(I)Layq;

    move-result-object p1

    invoke-static {p2}, Lbif;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    move-result-object p2

    invoke-virtual {p1, p2}, Layq;->b(Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;)V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 473
    iput p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->m:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 281
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->q:Ljava/lang/String;

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NrAllRadioActPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected c()V
    .locals 3

    .line 102
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->p:I

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    new-instance v2, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;)V

    invoke-virtual {v0, v1, v2}, Lasp;->a(Ljava/lang/String;Lbkv;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->j()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 87
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->h:Z

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/main/view/b;->showLoadingView()V

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->l:J

    .line 92
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->k:Z

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->c()V

    return-void
.end method

.method public dealAudioInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 324
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->k()V

    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 319
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->k()V

    return-void
.end method

.method public dealMusicLove(Lasj$r;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 329
    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Lasj$r;->c()Z

    move-result v1

    .line 331
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 334
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    invoke-virtual {v3, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealMusicLove:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lasj$r;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",musicInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHttpCache()Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NrAllRadioActPresenter"

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    if-eqz p1, :cond_2

    .line 342
    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/main/view/b;->updateLove(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public e()Z
    .locals 4

    .line 405
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 408
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    .line 411
    :cond_1
    iget v3, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->g:I

    if-le v0, v3, :cond_2

    return v1

    .line 414
    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->f:Z

    return v2
.end method

.method public f()V
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/main/view/b;->showErrorView(Ljava/lang/String;)V

    .line 424
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 425
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbez$g;->common_tips_loading_failed:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 427
    :cond_1
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->h:Z

    .line 428
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/music/main/view/b;->setTotalSong(I)V

    .line 432
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->f:Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 260
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    .line 261
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->h:Z

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d()V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->i:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->e:I

    return v0
.end method

.method public musicAlbumLoveEvent(Lasj$l;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "musicAlbumLoveEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " love = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NrAllRadioActPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lasj$l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-virtual {p1}, Lasj$l;->b()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/main/view/b;->refreshLove(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "NrAllRadioActPresenter"

    const-string v0, "onCreate"

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 453
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 454
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->o:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 455
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->o:Z

    .line 456
    invoke-static {}, Lbni;->a()V

    :cond_0
    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/main/view/b;->notifySpeechChange()V

    :cond_0
    return-void
.end method

.method public onUsbLoadingEstimateTime(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$a;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/main/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$a;->a()D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/music/main/view/b;->updateEstimateLoadingTime(D)V

    :cond_0
    return-void
.end method

.method public onUsbLoadingTimeout(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$e;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/main/view/b;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/main/view/b;->updateEstimateLoadingTime(D)V

    :cond_0
    return-void
.end method

.method public receiveLogout(Lasj$ag;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 444
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 445
    invoke-static {}, Lbni;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 447
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/main/presenter/MsMusicDetailPresenter;->o:Z

    :goto_0
    return-void
.end method
