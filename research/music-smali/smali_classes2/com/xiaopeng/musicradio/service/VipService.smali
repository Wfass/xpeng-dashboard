.class public Lcom/xiaopeng/musicradio/service/VipService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "VipService.java"

# interfaces
.implements Lbsi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public clearUserData(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 110
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object p1

    invoke-virtual {p1}, Lbsy;->g()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 112
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object p1

    invoke-virtual {p1}, Lbsu;->g()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 114
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object p1

    invoke-virtual {p1}, Lbss;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public clearVipStatus()V
    .locals 0

    return-void
.end method

.method public createVipBuyingDlg(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDolbyExchangeUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 175
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->l()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v0

    return-object v0
.end method

.method public getKugouInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKugouMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKugouUserMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeteaseBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 165
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->j()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNeteaseInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeteaseMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNeteaseUserMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 26
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQqBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 160
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->i()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v0

    return-object v0
.end method

.method public getQqInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQqMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQqUserMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 195
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRadioMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 235
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRadioUserMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReadingBuyUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;
    .locals 1

    .line 170
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->k()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object v0

    return-object v0
.end method

.method public getReadingInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReadingMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReadingUserMain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfoV2;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSongMaxCollectCount()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public getSongQuality()I
    .locals 1

    .line 66
    invoke-static {}, Lbsx;->a()Lbsx;

    move-result-object v0

    invoke-virtual {v0}, Lbsx;->b()Lbsw;

    move-result-object v0

    invoke-virtual {v0}, Lbsw;->e()I

    move-result v0

    return v0
.end method

.method public getSongQuality(I)I
    .locals 1

    .line 71
    invoke-static {}, Lbsx;->a()Lbsx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsx;->a(I)Lbsw;

    move-result-object p1

    invoke-virtual {p1}, Lbsw;->e()I

    move-result p1

    return p1
.end method

.method public getUserInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipSaleInfo;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserLogo()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXpVipValidity()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public initAdapterPreLoader(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isMusicVip()Z
    .locals 1

    .line 36
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->h()Z

    move-result v0

    return v0
.end method

.method public isSVip(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsy;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isXpVip()Z
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/service/VipService;->isXpVip(I)Z

    move-result v0

    return v0
.end method

.method public isXpVip(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 42
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object p1

    invoke-virtual {p1}, Lbsu;->h()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 44
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object p1

    invoke-virtual {p1}, Lbsy;->h()Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 46
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object p1

    invoke-virtual {p1}, Lbss;->h()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public loadSaleData()V
    .locals 1

    .line 155
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->b()V

    return-void
.end method

.method public loadSaleDataV2()V
    .locals 1

    .line 190
    invoke-static {}, Lbtb;->a()Lbtb;

    move-result-object v0

    invoke-virtual {v0}, Lbtb;->b()V

    return-void
.end method

.method public onReceiveMqttMsg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSongQuality(II)V
    .locals 1

    .line 100
    invoke-static {}, Lbsx;->a()Lbsx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsx;->a(I)Lbsw;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lbsw;->a(IZ)V

    return-void
.end method

.method public sycUserInfoWithServer()V
    .locals 2

    .line 80
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lbsy;->b(I)V

    return-void
.end method

.method public userBuyUrl(I)V
    .locals 1

    .line 185
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbta;->a(I)V

    return-void
.end method

.method public vipUrlList()V
    .locals 1

    .line 180
    invoke-static {}, Lbta;->a()Lbta;

    move-result-object v0

    invoke-virtual {v0}, Lbta;->c()V

    return-void
.end method
