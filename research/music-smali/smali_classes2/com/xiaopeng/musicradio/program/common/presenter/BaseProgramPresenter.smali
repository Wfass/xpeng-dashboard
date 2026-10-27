.class public abstract Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "BaseProgramPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method private c()Z
    .locals 4

    .line 41
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 42
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    .line 43
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Ljava/util/List;ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playHeadSpeech, channelId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", relativeId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", total:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseProgramPresenter"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v1, 0x0

    .line 105
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "playHeadSpeech total:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance p1, Lbms$a;

    invoke-direct {p1}, Lbms$a;-><init>()V

    int-to-long p2, p2

    .line 107
    invoke-static {p2, p3}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Lbms$a;->b(Z)Lbms$a;

    move-result-object p1

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1, v3}, Lbms$a;->c(I)Lbms$a;

    move-result-object p1

    const/16 v3, 0xa

    .line 110
    invoke-virtual {p1, v3}, Lbms$a;->b(I)Lbms$a;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p2, p3}, Lbms$a;->a(J)Lbms$a;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v1, v2}, Lbms$a;->b(J)Lbms$a;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v0}, Lbms$a;->a(I)Lbms$a;

    move-result-object p1

    const-string p2, "timeDesc"

    .line 114
    invoke-virtual {p1, p2}, Lbms$a;->b(Ljava/lang/String;)Lbms$a;

    move-result-object p1

    div-int/2addr p4, v3

    .line 115
    invoke-virtual {p1, p4}, Lbms$a;->d(I)Lbms$a;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lbms$a;->a()Lbms;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    return-void
.end method

.method public a(J)Z
    .locals 6

    .line 50
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOriginalAlbumId()J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 57
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v4

    cmp-long p1, v4, p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->pause()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :goto_0
    return-void
.end method

.method public c(I)Z
    .locals 3

    .line 70
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/presenter/BaseProgramPresenter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChannelPlaying: channelId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isChannelPlaying = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", listSign = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", playState = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->getPlayState()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", playingProgram = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseProgramPresenter"

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public g()V
    .locals 3

    .line 78
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openPlayer screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseProgramPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/PageNav;->navPlayer(I)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 37
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method
