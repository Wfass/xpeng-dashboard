.class public Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "MsConcentrationFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/main/view/a;
.implements Lcom/xiaopeng/musicradio/music/main/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/concentration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/music/concentration/main/view/a;",
        "Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/concentration/main/view/a;",
        "Lcom/xiaopeng/musicradio/music/main/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsConcentrationFragment"


# instance fields
.field protected mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field protected mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

.field protected mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

.field protected final mIdleViewInitRunnable:Ljava/lang/Runnable;

.field private mLastCheckTime:J

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field protected mRadioStartPosition:I

.field protected mRmMaxCount:I

.field protected mZoneMaxCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mZoneMaxCount:I

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$bHWMJmnDZcN-a_igX-ziBAGJzLg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$bHWMJmnDZcN-a_igX-ziBAGJzLg;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mIdleViewInitRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 180
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mLastCheckTime:J

    return-void
.end method

.method private isHotRadioResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 263
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    .line 266
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isRadioListSame(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    .line 267
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isHotRadioResultSame: isSameData = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MsConcentrationFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isHotSingerResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 291
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v0

    .line 294
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isSingerListSame(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isHotSingerResultSame: isSameData = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MsConcentrationFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isMusicRadioListSame(Ljava/util/List;Ljava/util/List;)Z
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

    .line 353
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 354
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 355
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

.method private isRadioListSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 320
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 321
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->equals(Ljava/lang/Object;)Z

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

.method private isRankResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 235
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    .line 238
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isMusicRadioListSame(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    .line 239
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRankResultSame: isSameData = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MsConcentrationFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isRmResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 221
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    .line 224
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isMusicRadioListSame(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRmResultSame: isSameData = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MsConcentrationFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isSameData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRmResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRmResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isRmResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 204
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRankResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRankResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isRankResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 205
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getZoneListResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getZoneListResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isZoneResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 206
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isXpResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 207
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getSingerResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getSingerResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isHotSingerResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 208
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isHotRadioResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 211
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSameData: isSameData = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MsConcentrationFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method private isSingerListSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 336
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 337
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 338
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;->equals(Ljava/lang/Object;)Z

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

.method private isXpResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 249
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v0

    .line 252
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isMusicRadioListSame(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isXpResultSame: isSameData = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MsConcentrationFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private isZoneListSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v2, v1

    .line 303
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 304
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult$DataBean;->equals(Ljava/lang/Object;)Z

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

.method private isZoneResultSame(Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;->getData()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 277
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/ZoneListResult;->getData()Ljava/util/List;

    move-result-object v0

    .line 280
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isZoneListSame(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isZoneResultSame: isSameData = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MsConcentrationFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private notifyParentInitIdleView(Z)V
    .locals 4

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mLastCheckTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v2, 0x32

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xa

    .line 188
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mIdleViewInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mIdleViewInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tryCheckIdleViewInit()V
    .locals 2

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mLastCheckTime:J

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->checkIdleViewInit()V

    return-void
.end method


# virtual methods
.method protected addTop()V
    .locals 2

    .line 127
    new-instance v0, Lbfq;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getAccountType()I

    move-result v1

    invoke-direct {v0, v1}, Lbfq;-><init>(I)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbfq;->a(Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    return-void
.end method

.method protected addZone()V
    .locals 0

    return-void
.end method

.method protected checkIdleViewInit()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mIdleViewInitRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mIdleViewInitRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;
    .locals 1

    .line 144
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 74
    sget v0, Lbez$d;->music_con_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    .line 75
    sget v0, Lbez$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 76
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getAccountType()I
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->c()I

    move-result v0

    return v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 69
    sget v0, Lbez$f;->music_fragment_concentration:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 149
    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 154
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleRadioData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->handleRadioData(Ljava/util/List;)V

    return-void
.end method

.method public handleRmData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->handleRmData(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$new$0$MsConcentrationFragment()V
    .locals 0

    .line 109
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public synthetic lambda$showData$1$MsConcentrationFragment(Z)V
    .locals 1

    const-string v0, "MsConcentrationFragment.visible"

    .line 173
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->end()V

    .line 175
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->notifyParentInitIdleView(Z)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/presenter/QQConPresenter;->e()V

    return-void
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onColdStartEnd()V
    .locals 1

    .line 100
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->k()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 434
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MsConcentrationFragment.onCreate"

    .line 64
    invoke-static {p1}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "MsConcentrationFragment"

    const-string v1, "onCreateView: ============"

    .line 392
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 454
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroy()V

    return-void
.end method

.method public onIdleViewInit()V
    .locals 0

    return-void
.end method

.method public onMusicAuthCheck(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 406
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 407
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_CONCENTRATION"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    const-string v0, "MsConcentrationFragment"

    const-string v1, "onPause: ================"

    .line 408
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 398
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    const-string v0, "MsConcentrationFragment"

    const-string v1, "onResume: ==============="

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_CONCENTRATION"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->loadPerformClick()V

    return-void
.end method

.method protected preLoadContent()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->a()Lcom/xiaopeng/musicradio/music/concentration/main/view/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/c;->a(I)V

    :cond_0
    return-void
.end method

.method public reSetData()V
    .locals 1

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    return-void
.end method

.method protected registerTop()V
    .locals 3

    .line 117
    new-instance v0, Lbfl;

    invoke-direct {v0}, Lbfl;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbfq;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbfq;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method protected registerZone()V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    const-string v0, "MsConcentrationFragment"

    const-string v1, "setView: ========"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MsConcentrationFragment.setView"

    .line 85
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->setConFragment(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->setView()V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mList:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getAdapter()Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getListView()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->setAccountType(I)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->initBinder()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->loadData()V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->preLoadContent()V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->checkIdleViewInit()V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->onColdStartEnd()V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;Z)V

    return-void
.end method

.method public showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;Z)V
    .locals 2

    const-string v0, "MsConcentrationFragment.showData"

    .line 165
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showLoadingTip(I)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showListView()V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->isSameData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->tryCheckIdleViewInit()V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$ER4dTJiCEfqKSnNh_voeReEASfk;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/musicradio/music/concentration/main/view/-$$Lambda$MsConcentrationFragment$ER4dTJiCEfqKSnNh_voeReEASfk;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;Z)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public showErrorView()V
    .locals 2

    const-string v0, "MsConcentrationFragment"

    const-string v1, "showErrorView: ============"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showErrorView()V

    .line 371
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->b(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showLoadingView()V

    return-void
.end method

.method public updateVuiScene()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mConLayout:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->updateVuiScene()V

    return-void
.end method
