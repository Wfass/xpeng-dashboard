.class public abstract Lbix;
.super Lbdf;
.source "MusicReplayDownBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbix$a;
    }
.end annotation


# instance fields
.field private b:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ContinuePlayBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lbdf;-><init>()V

    return-void
.end method

.method static synthetic a(Lbix;Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/adapter/Call;
    .locals 0

    .line 46
    iput-object p1, p0, Lbix;->b:Lcom/lzy/okgo/adapter/Call;

    return-object p1
.end method

.method private a(Lbix$a;)V
    .locals 1

    .line 225
    new-instance v0, Lbix$2;

    invoke-direct {v0, p0, p1}, Lbix$2;-><init>(Lbix;Lbix$a;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbix;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lbix;->t()V

    return-void
.end method

.method static synthetic a(Lbix;Lbix$a;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lbix;->a(Lbix$a;)V

    return-void
.end method

.method static synthetic a(Lbix;Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/common/PageBean;Ljava/util/List;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lbix;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/common/PageBean;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/common/PageBean;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/ListSignBean;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/common/PageBean;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;",
            ">;)V"
        }
    .end annotation

    .line 356
    iget-boolean v0, p0, Lbix;->a:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object p1

    const-string p2, "playNetList: cancel====== "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playNetList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " totalPage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v6, v0

    .line 363
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 364
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 365
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    .line 366
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v6, v0

    .line 370
    :cond_1
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " hash = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " index = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_2
    new-instance p2, Lbix$3;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getPage()I

    move-result v3

    invoke-virtual {p0}, Lbix;->i()I

    move-result v4

    move-object v0, p2

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lbix$3;-><init>(Lbix;Ljava/lang/String;IILjava/util/List;ILcom/xiaopeng/musicradio/bean/ListSignBean;)V

    .line 399
    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/bean/common/PageBean;->getTotalPage()I

    move-result p1

    invoke-virtual {p2, p1}, Lass;->b(I)V

    .line 400
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p0}, Lbix;->d()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;I)V

    return-void
.end method

.method static synthetic b(Lbix;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lbix;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lbix;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lbix;->p()V

    return-void
.end method

.method static synthetic d(Lbix;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lbix;->r()V

    return-void
.end method

.method static synthetic e(Lbix;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lbix;->f()V

    return-void
.end method

.method static synthetic f(Lbix;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lbix;->q()V

    return-void
.end method

.method static synthetic g(Lbix;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lbix;->h()V

    return-void
.end method

.method static synthetic h(Lbix;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lbix;->h()V

    return-void
.end method

.method static synthetic i(Lbix;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lbix;->o()V

    return-void
.end method

.method static synthetic j(Lbix;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lbix;->h()V

    return-void
.end method

.method private o()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    const-string v1, "multi_client_play"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 186
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v2, "replay_same_kugou"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 188
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v2, "replay_same_netease"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p()V
    .locals 3

    .line 193
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    const-string v1, "multi_client_play"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 194
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v2, "replay_other_kugou"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 196
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v2, "replay_other_netease"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    const-string v1, "multi_client_play"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 202
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v2, "replay_no_kugou"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 204
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    const-string v2, "replay_no_netease"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportFeatureUse(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private r()V
    .locals 2

    const-string v0, "SP_CHANGE_SOURCE_COUNT"

    const/4 v1, 0x0

    .line 324
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private s()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "SP_CHANGE_SOURCE_COUNT"

    .line 328
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private t()V
    .locals 2

    .line 344
    iget-boolean v0, p0, Lbix;->a:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playNextSource: cancel====== "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lbix;->g()Lbdf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lbix;->g()Lbdf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbdf;->a(Z)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {p0}, Lbix;->h()V

    :goto_0
    return-void
.end method

.method private u()Ljava/lang/String;
    .locals 4

    .line 421
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    invoke-static {v0}, Lbde;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .locals 4

    .line 427
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    invoke-static {v0}, Lbde;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlayingKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private w()Ljava/lang/String;
    .locals 4

    .line 433
    invoke-virtual {p0}, Lbix;->d()I

    move-result v0

    invoke-static {v0}, Lbde;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUpSessionKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .line 213
    invoke-direct {p0}, Lbix;->u()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveReplaySession:key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 62
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {p0}, Lbix;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replayDown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lbix;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lbix;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lbix;->b:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lbix;->b:Lcom/lzy/okgo/adapter/Call;

    .line 69
    :cond_0
    invoke-static {}, Lbdc;->a()Lbdc;

    move-result-object v0

    invoke-virtual {p0}, Lbix;->d()I

    move-result v1

    invoke-virtual {p0}, Lbix;->i()I

    move-result v2

    new-instance v3, Lbix$1;

    invoke-direct {v3, p0, p1}, Lbix$1;-><init>(Lbix;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lbdc;->a(IILbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lbix;->b:Lcom/lzy/okgo/adapter/Call;

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lbix;->t()V

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 453
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ar;->a(I)Z

    move-result p1

    .line 454
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replayOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 209
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4

    .line 219
    invoke-direct {p0}, Lbix;->v()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lbix;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveReplayPlaying:key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " songId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)Z
    .locals 1

    .line 333
    invoke-super {p0, p1}, Lbdf;->b(Z)Z

    move-result p1

    .line 335
    iget-object v0, p0, Lbix;->b:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Lbix;->b:Lcom/lzy/okgo/adapter/Call;

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected abstract k()Ljava/lang/String;
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 408
    invoke-direct {p0}, Lbix;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 412
    invoke-direct {p0}, Lbix;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 416
    invoke-direct {p0}, Lbix;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
