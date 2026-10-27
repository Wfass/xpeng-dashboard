.class public Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "KugouZoneCommonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/kugouzone/view/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->b:I

    return-void
.end method

.method private a(ILbkv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbkv<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean;",
            ">;)V"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnRequestKugouZoneResult zoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouZoneCommonPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lasp;->f(ILbkv;)V

    return-void
.end method

.method private b(I)I
    .locals 1

    .line 47
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->c()Lbqn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v0

    invoke-virtual {v0}, Lbqp;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 48
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->c()Lbqn;

    move-result-object p1

    invoke-interface {p1}, Lbqn;->q()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private c(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 62
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 63
    invoke-interface {v0}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object p1

    invoke-virtual {p1}, Lbqp;->b()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->b(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public a(I)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;->resetData()V

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;->showLoading(ZII)V

    .line 168
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;)V

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a(ILbkv;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;ILcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 7
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

    .line 219
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 220
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 222
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 223
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 228
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    const/4 v1, 0x4

    const/4 v3, 0x1

    .line 233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p2

    move v2, p5

    move v5, p3

    invoke-static/range {v0 .. v6}, Laso;->a(Ljava/lang/String;IIZLjava/util/List;II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_singer_single_music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->b(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_recommend_music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->b(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .line 99
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 100
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_zone_song"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"collectId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->b(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;->refreshData()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->c(I)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->c(I)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 43
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/presenter/KugouZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/c;->refreshData()V

    :cond_0
    return-void
.end method
