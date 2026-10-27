.class public Laxw;
.super Ljava/lang/Object;
.source "ProgramUtils.java"


# direct methods
.method public static a(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/f;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;>;"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 27
    invoke-interface {v0, p0}, Lblo;->getCollectedProgramList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static a()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;
    .locals 2

    .line 41
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 42
    invoke-interface {v0}, Lblo;->getPlayingProgram()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/lang/String;)V
    .locals 1

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tag_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-static {p2}, Laxw;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p0, p2, p3}, Laxw;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/lang/String;)V
    .locals 2

    .line 89
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 90
    invoke-interface {v0, p0, p1, p2}, Lblo;->startDetail(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/lang/String;)V
    .locals 1

    .line 94
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tag_play:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Laxw;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Laxw;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 37
    invoke-interface {v0, p0}, Lblo;->play(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Z)V
    .locals 2

    .line 79
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 80
    invoke-interface {v0, p0, p1}, Lblo;->setCollectedProgram(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public static b()I
    .locals 2

    .line 47
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 48
    invoke-interface {v0}, Lblo;->getPlayState()I

    move-result v0

    return v0
.end method

.method public static b(Lcom/xiaopeng/musicradio/datalist/f;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/datalist/f;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/musicradio/datalist/g<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;>;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 32
    invoke-interface {v0, p0}, Lblo;->getHistoryProgramList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Z
    .locals 4

    .line 61
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz p0, :cond_0

    .line 63
    invoke-static {}, Laxw;->a()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 2

    .line 84
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 85
    invoke-interface {v0, p0}, Lblo;->removeHistoryProgram(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c()Z
    .locals 4

    .line 52
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 53
    invoke-static {}, Laxw;->d()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {}, Laxw;->a()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .line 74
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblp;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblp;

    .line 75
    invoke-interface {v0}, Lblp;->getListSign()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()V
    .locals 2

    .line 110
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lblo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblo;

    .line 111
    invoke-interface {v0}, Lblo;->checkoutDataCollect()V

    return-void
.end method
