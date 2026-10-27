.class public Lcom/xiaopeng/musicradio/service/NeteaseVipService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "NeteaseVipService.java"

# interfaces
.implements Lbsg;


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

    .line 61
    new-instance v0, Lbsl;

    invoke-direct {v0}, Lbsl;-><init>()V

    .line 62
    invoke-interface {v0, p1}, Lbsk;->b(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public fetchUserInfo()V
    .locals 2

    .line 56
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbsu;->b(I)V

    return-void
.end method

.method public getBuyUrl()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDolbyPrivilege()V
    .locals 1

    .line 87
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->o()V

    return-void
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLogo()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->l()Ljava/lang/String;

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

    .line 67
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVipEndTime()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipSwitchFlag()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasDolbyPrivilege()Z
    .locals 1

    .line 82
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->p()Z

    move-result v0

    return v0
.end method

.method public isGreenVip()Z
    .locals 1

    .line 46
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->n()Z

    move-result v0

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 36
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->h()Z

    move-result v0

    return v0
.end method

.method public loadUserInfo()V
    .locals 1

    .line 51
    invoke-static {}, Lbsu;->b()Lbsu;

    move-result-object v0

    invoke-virtual {v0}, Lbsu;->q()V

    return-void
.end method
