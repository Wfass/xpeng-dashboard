.class public Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;
.super Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;
.source "ChoiceBannerPresenter.java"

# interfaces
.implements Laxy$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter<",
        "Lcom/xiaopeng/musicradio/program/choice/view/banner/b;",
        ">;",
        "Laxy$a;"
    }
.end annotation


# instance fields
.field private b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d:Z

    return-void
.end method

.method private d(I)V
    .locals 5

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBannerState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChoiceBannerPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v2

    invoke-virtual {v2}, Lbmm;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {v2, p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(Ljava/util/List;Z)V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->setLoadingState(I)V

    goto/16 :goto_1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->setLoadingState(I)V

    goto/16 :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->setLoadingState(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 130
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {p1, v3}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->setLoadingState(I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_6

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v4

    invoke-virtual {v4}, Lbmm;->c()Ljava/util/List;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {v4, p1, v3}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(Ljava/util/List;Z)V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 137
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->setLoadingState(I)V

    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->setLoadingState(I)V

    .line 145
    :cond_5
    :goto_0
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p1

    invoke-virtual {p1, v2}, Lbmm;->a(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private h()V
    .locals 7

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    const/4 v1, 0x3

    const-string v2, "ChoiceBannerPresenter"

    if-eqz v0, :cond_3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHistory: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$g;->reading_percent:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 185
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPlayingPercent()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLogo()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v3

    .line 190
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v3

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->c:J

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a(J)Z

    move-result v5

    invoke-interface {v4, v0, v2, v3, v5}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->c:J

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(I)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(I)V

    goto :goto_0

    :cond_3
    const-string v0, "setHistory: null"

    .line 203
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->g()V

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(I)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 169
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0}, Lbmm;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    .line 170
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getRelativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTotal()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a(Ljava/util/List;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 262
    new-instance v0, Lash$b;

    invoke-direct {v0, p1}, Lash$b;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 165
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbmm;->a(ZZ)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 176
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    invoke-virtual {v0}, Lbmo;->f()Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 177
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->h()V

    return-void
.end method

.method public dealAudioTypeChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 152
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;->a()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d()V

    :cond_0
    return-void
.end method

.method public dealBannerDataEvent(Lash$d;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 103
    invoke-virtual {p1}, Lash$d;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p1}, Lash$d;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d(I)V

    :cond_0
    return-void
.end method

.method public dealProgramInfo(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 237
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->play()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 239
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->pause()V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "near"

    .line 244
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->setFromSource(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    goto :goto_0

    :cond_3
    const-string v0, "ChoiceBannerPresenter"

    const-string v1, "playControlHistory transferbean failed, null"

    .line 247
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->b:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbmx;->c(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v0

    invoke-virtual {v0}, Lbmm;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object v1

    invoke-virtual {v1}, Lbmm;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 54
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->a(Laxy$a;)V

    if-eqz p1, :cond_5

    .line 57
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p1

    invoke-virtual {p1}, Lbmm;->d()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->setLoadingState(I)V

    .line 61
    :cond_0
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lbmm;->a(ZZ)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p1

    invoke-virtual {p1}, Lbmm;->d()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 64
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d(I)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p1

    invoke-virtual {p1}, Lbmm;->d()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 67
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d(I)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p1

    invoke-virtual {p1}, Lbmm;->d()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 69
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d(I)V

    goto :goto_0

    .line 71
    :cond_4
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p1

    invoke-virtual {p1}, Lbmm;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 79
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method

.method public onHistoryChanged(Lasj$v;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d()V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(I)V

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 218
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(I)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->d()V

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/b;->h()V

    :cond_0
    return-void
.end method
