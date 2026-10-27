.class public Lcom/xiaopeng/musicradio/service/XmlyVipService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "XmlyVipService.java"

# interfaces
.implements Lbsj;


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlyVipService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public clearUserData()V
    .locals 1

    .line 58
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v0

    invoke-virtual {v0}, Lbtd;->c()V

    return-void
.end method

.method public createVipBuyingDlg(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    new-instance v0, Lbsl;

    invoke-direct {v0}, Lbsl;-><init>()V

    .line 67
    invoke-interface {v0, p1}, Lbsk;->d(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public fetchUserInfo()V
    .locals 2

    .line 53
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbtd;->a(I)V

    return-void
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v0

    invoke-virtual {v0}, Lbtd;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLogo()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v0

    invoke-virtual {v0}, Lbtd;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipEndTime()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v0

    invoke-virtual {v0}, Lbtd;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVip()Z
    .locals 1

    .line 38
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v0

    invoke-virtual {v0}, Lbtd;->d()Z

    move-result v0

    return v0
.end method

.method public loadUserInfo()V
    .locals 1

    .line 48
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v0

    invoke-virtual {v0}, Lbtd;->h()V

    return-void
.end method

.method public onServerPush(Ljava/lang/String;)V
    .locals 6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServerPush="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyVipService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 75
    const-class v0, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;

    if-eqz p1, :cond_0

    .line 76
    iget-boolean v0, p1, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->test:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->getScene()I

    move-result v2

    const/16 v3, 0x65b1

    if-ne v2, v3, :cond_1

    .line 78
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->getOpenId()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lbtd;->a(Ljava/lang/String;ZLjava/lang/Long;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 79
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->getScene()I

    move-result v1

    const/16 v2, 0x65b0

    if-ne v1, v2, :cond_3

    .line 80
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->getOpenId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/push/PushUserBean;->getExpireTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lbtd;->a(Ljava/lang/String;ZLjava/lang/Long;)V

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 84
    invoke-static {}, Lbtd;->b()Lbtd;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lbtd;->a(I)V

    :cond_4
    return-void
.end method
