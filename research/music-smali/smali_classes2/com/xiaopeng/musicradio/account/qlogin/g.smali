.class public Lcom/xiaopeng/musicradio/account/qlogin/g;
.super Ljava/lang/Object;
.source "QLoginFlowManager.java"


# static fields
.field private static a:Lcom/xiaopeng/musicradio/account/qlogin/h;

.field private static b:Z


# direct methods
.method public static a(I)V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QLoginFlowManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 144
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->net_error_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/xiaopeng/musicradio/account/qlogin/h;)V
    .locals 0

    .line 42
    invoke-static {}, Lcom/xiaopeng/musicradio/account/qlogin/g;->b()V

    .line 43
    sput-object p0, Lcom/xiaopeng/musicradio/account/qlogin/g;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "wx"

    .line 62
    invoke-static {v0, p0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;ZLjava/lang/String;)V
    .locals 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QLoginFlowManager"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "netease"

    if-ne p0, p2, :cond_0

    .line 127
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p2

    invoke-virtual {p2}, Lbdm;->d()Lbel;

    move-result-object p2

    .line 128
    invoke-interface {p2, p0, p1, p3}, Lben;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p0

    const-class p1, Lbsg;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbsg;

    .line 130
    invoke-interface {p0}, Lbsg;->getDolbyPrivilege()V

    goto :goto_1

    :cond_0
    const-string p2, "kg"

    if-eq p0, p2, :cond_2

    const-string p2, "kgwx"

    if-ne p0, p2, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p2

    invoke-virtual {p2}, Lbdm;->b()Lbeg;

    move-result-object p2

    check-cast p2, Lben;

    .line 136
    invoke-interface {p2, p0, p1, p3}, Lben;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_2
    :goto_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p2

    invoke-virtual {p2}, Lbdm;->e()Lbej;

    move-result-object p2

    .line 133
    invoke-interface {p2, p0, p1, p3}, Lben;->a(Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/bean/AuthCodeBean$a;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    const-string v0, "QLoginFlowManager"

    if-nez p2, :cond_2

    .line 91
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    .line 96
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    :cond_1
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 101
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/xiaopeng/musicradio/account/qlogin/e;

    new-instance v2, Lcom/xiaopeng/musicradio/account/qlogin/g$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/musicradio/account/qlogin/g$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p2, p0, v2}, Lcom/xiaopeng/musicradio/account/qlogin/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/musicradio/account/qlogin/e$a;)V

    .line 117
    :try_start_0
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/account/qlogin/e;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "showQrCodeDialog"

    .line 119
    invoke-static {v0, p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x2711

    .line 120
    invoke-static {p0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(I)V

    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 31
    sput-boolean p0, Lcom/xiaopeng/musicradio/account/qlogin/g;->b:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/xiaopeng/musicradio/account/qlogin/g;->b:Z

    return v0
.end method

.method public static b()V
    .locals 3

    .line 35
    sget-object v0, Lcom/xiaopeng/musicradio/account/qlogin/g;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "clearLastQrCodePresenter"

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/account/qlogin/h;->a(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/xiaopeng/musicradio/account/qlogin/g;->a:Lcom/xiaopeng/musicradio/account/qlogin/h;

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "qq"

    .line 66
    invoke-static {v0, p0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "netease"

    .line 74
    invoke-static {v0, p0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lcom/xiaopeng/musicradio/account/qlogin/g;->b(Ljava/lang/String;)V

    return-void
.end method
