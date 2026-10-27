.class public Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "ProgramChoicePresenter.java"

# interfaces
.implements Laxy$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/program/choice/view/b;",
        ">;",
        "Laxy$a;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->b:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "daily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "guesslike"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hotrank"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d:I

    .line 61
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->e:I

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->f:I

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->f:I

    return p1
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V
    .locals 4

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->h:Z

    .line 150
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->f:I

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;->getRankList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;->getRankList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    move v1, v0

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;->getRankList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 163
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRank: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgramChoicePresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;->getRankList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean;->getRankList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/b;->updateHotRanks(Ljava/util/List;)V

    const-string p1, " initData ==> response"

    .line 168
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V

    return-void
.end method

.method private a(J)Z
    .locals 4

    .line 227
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 231
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->h:Z

    return p1
.end method

.method private e()V
    .locals 3

    .line 194
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0}, Lbmm;->d()I

    move-result v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDailyLoadingState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgramChoicePresenter"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iput v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 199
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d:I

    .line 203
    :goto_0
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0}, Lbmm;->g()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->e:I

    return-void
.end method

.method private f()Z
    .locals 3

    .line 235
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 236
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 2

    .line 213
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->pause()V

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 253
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c()V

    return-void
.end method

.method public c()V
    .locals 4

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Hotrank initData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramChoicePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/choice/view/b;->onLoading()V

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->h:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->h:Z

    .line 102
    iput v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->f:I

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d()V

    .line 105
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v2

    invoke-virtual {v2}, Lbmm;->h()Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "initData: loadCache ======="

    .line 108
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$1;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean;)V

    const-wide/16 v2, 0xa

    invoke-static {v1, v2, v3}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 116
    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->e:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d:I

    if-eq v1, v2, :cond_2

    return-void

    .line 122
    :cond_2
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbmm;->b(I)V

    .line 123
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lbmm;->a(ZZ)V

    .line 125
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter$2;-><init>(Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;)V

    invoke-virtual {v0, v1}, Lbmv;->a(Lbkv;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->e()V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLoadingTipsState daily:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", guessLike state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hotRank state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramChoicePresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->e:I

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/choice/view/b;->onDone()V

    goto :goto_2

    .line 183
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/choice/view/b;->onFail()V

    goto :goto_2

    .line 179
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/choice/view/b;->onLoading()V

    :cond_4
    :goto_2
    return-void
.end method

.method public dealDataLoadingEvent(Lash$d;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "ProgramChoicePresenter"

    const-string v1, "dealDataLoadingEvent: ======== "

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p1}, Lash$d;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d()V

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p1}, Lash$d;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update guess like state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lash$d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "liangyc"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Lash$d;->a()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->e:I

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dealNetValid(Lash$e;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 258
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c()V

    :cond_1
    return-void
.end method

.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/b;->onLoading()V

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 70
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->a(Laxy$a;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    .line 78
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 290
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/b;->updatePlayState()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    const-string p1, "ProgramChoicePresenter"

    const-string v0, " onResume initData"

    .line 85
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->g:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c:J

    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1}, Laxy;->b()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d()V

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c()V

    .line 92
    :goto_1
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1}, Laxy;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c:J

    return-void
.end method

.method public onSwitchElement(Lcom/xiaopeng/musicradio/event/common/b$a;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return-void

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 283
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 284
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/b;->selectElement(I)V

    :cond_2
    return-void
.end method
