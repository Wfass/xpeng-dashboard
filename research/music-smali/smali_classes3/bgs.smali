.class public Lbgs;
.super Ljava/lang/Object;
.source "DolbyPlayUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 21
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsg;

    if-eqz v0, :cond_1

    .line 23
    invoke-interface {v0}, Lbsg;->isVip()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lbsg;->isVip()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lbsg;->getVipDetial()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 27
    :cond_1
    invoke-static {p0}, Lbgs;->b(Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .line 32
    instance-of v0, p0, Lcom/xiaopeng/musicradio/a;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object p0

    .line 36
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsg;

    .line 37
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbtg;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtg;

    .line 38
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbsi;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsi;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 40
    invoke-interface {v0}, Lbsg;->hasDolbyPrivilege()Z

    move-result v0

    const-string v3, "DolbyPlayUtil"

    if-eqz v0, :cond_1

    const-string p0, "showDolbyDialog: \u5f39\u51fa\u5151\u6362"

    .line 41
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-interface {v2}, Lbsi;->getDolbyExchangeUrl()Lcom/xiaopeng/musicradio/bean/VipUrlInfo;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/VipUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lbtg;->startVipSale(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "showDolbyDialog: \u5f39\u51fa\u8d2d\u4e70VIP\u5f39\u7a97"

    .line 45
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x2

    .line 46
    invoke-interface {v1, p0, v0, v2}, Lbtg;->startVipBuy(Landroid/content/Context;II)V

    :cond_2
    :goto_0
    return-void
.end method
