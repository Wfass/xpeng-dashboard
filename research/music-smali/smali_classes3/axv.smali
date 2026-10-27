.class public Laxv;
.super Ljava/lang/Object;
.source "NetRadioUtils.java"


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
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 23
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 24
    invoke-interface {v0, p0}, Lbjr;->getCollectedNetRadioList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static a()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 2

    .line 40
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 41
    invoke-interface {v0}, Lbjr;->getPlayingInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    .line 34
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 35
    invoke-interface {v0, p0}, Lbjr;->play(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V
    .locals 2

    .line 73
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 74
    invoke-interface {v0, p0, p1}, Lbjr;->setCollectedNetRadio(Ljava/lang/Object;Z)Ljava/lang/Object;

    return-void
.end method

.method public static b()I
    .locals 2

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 50
    invoke-interface {v0}, Lbjr;->getPlayState()I

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
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 29
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 30
    invoke-interface {v0, p0}, Lbjr;->getHistoryNetRadioList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public static b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z
    .locals 3

    .line 60
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz p0, :cond_0

    .line 62
    invoke-static {}, Laxv;->a()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    .line 78
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 79
    invoke-interface {v0, p0}, Lbjr;->removeHistoryNetRadio(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c()Z
    .locals 3

    .line 54
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    .line 55
    invoke-static {}, Laxv;->a()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    .line 84
    invoke-interface {v0}, Lbjr;->checkoutDataCollect()V

    return-void
.end method
