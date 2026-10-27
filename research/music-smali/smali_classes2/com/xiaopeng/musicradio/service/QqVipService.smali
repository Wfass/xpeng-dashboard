.class public Lcom/xiaopeng/musicradio/service/QqVipService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "QqVipService.java"

# interfaces
.implements Lbsh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public createVipBuyingDlg(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    .line 59
    new-instance v0, Lbsl;

    invoke-direct {v0}, Lbsl;-><init>()V

    .line 60
    invoke-interface {v0, p1}, Lbsk;->a(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public fetchUserInfo()V
    .locals 2

    .line 54
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbsy;->b(I)V

    return-void
.end method

.method public getBuyUrl()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLogo()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipDetial()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVipEndTime()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipSwitchFlag()I
    .locals 1

    .line 76
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->k()I

    move-result v0

    return v0
.end method

.method public isGreenVip()Z
    .locals 1

    .line 44
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->n()Z

    move-result v0

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 34
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->h()Z

    move-result v0

    return v0
.end method

.method public loadUserInfo()V
    .locals 1

    .line 49
    invoke-static {}, Lbsy;->b()Lbsy;

    move-result-object v0

    invoke-virtual {v0}, Lbsy;->q()V

    return-void
.end method
