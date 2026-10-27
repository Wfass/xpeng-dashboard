.class public Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "DolbyZoneCommonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->b:I

    const/16 v0, 0x3e8

    .line 42
    iput v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->c:I

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 51
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

    .line 52
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

.method private b(I)Z
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

    .line 66
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 67
    invoke-interface {v0}, Lbfe;->getPlayingInfo()Lcom/xiaopeng/musicradio/music/api/bean/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/api/bean/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
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

    .line 70
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
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

    .line 244
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 245
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0, p4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 247
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->q()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 248
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->p()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object p1

    invoke-virtual {p1}, Lbid;->o()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 253
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 258
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

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 77
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

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 86
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

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 104
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->c()Ljava/lang/String;

    move-result-object p2

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "listsign_netease_zone_recommend"

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

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public d()V
    .locals 4

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;->resetData()V

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;->showLoading(ZII)V

    .line 172
    :cond_0
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;)V

    iget v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->b:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lbgr;->a(Lbgr$a;II)V

    return-void
.end method

.method public dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;->refreshData()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->b(I)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->b(I)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 47
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeechStateChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/presenter/DolbyZoneCommonPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/f;->refreshData()V

    :cond_0
    return-void
.end method
