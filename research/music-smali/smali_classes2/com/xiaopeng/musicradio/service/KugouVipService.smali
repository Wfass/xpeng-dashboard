.class public Lcom/xiaopeng/musicradio/service/KugouVipService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "KugouVipService.java"

# interfaces
.implements Lbsf;


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
    invoke-interface {v0, p1}, Lbsk;->c(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public fetchUserInfo()V
    .locals 2

    .line 56
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbss;->b(I)V

    return-void
.end method

.method public getBuyUrl()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0}, Lbss;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 24
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0}, Lbss;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLogo()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0}, Lbss;->l()Ljava/lang/String;

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
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0}, Lbss;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVipEndTime()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0}, Lbss;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipSwitchFlag()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGreenVip()Z
    .locals 1

    .line 46
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0}, Lbss;->n()Z

    move-result v0

    return v0
.end method

.method public isVip()Z
    .locals 1

    .line 36
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0}, Lbss;->h()Z

    move-result v0

    return v0
.end method

.method public loadUserInfo()V
    .locals 1

    .line 51
    invoke-static {}, Lbss;->b()Lbss;

    move-result-object v0

    invoke-virtual {v0}, Lbss;->q()V

    return-void
.end method
