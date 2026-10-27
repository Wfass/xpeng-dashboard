.class public Laqn;
.super Ljava/lang/Object;
.source "XmlyLoginFlowManager.java"


# static fields
.field private static a:Laqk;

.field private static b:Z


# direct methods
.method public static a(I)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XmlyLoginFlowManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 95
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->net_error_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 51
    invoke-static {}, Laqn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "XmlyLoginFlowManager"

    if-nez p0, :cond_3

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p0, :cond_3

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    :cond_2
    sget-object p0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 64
    :cond_3
    new-instance v1, Laql;

    new-instance v2, Laqn$1;

    invoke-direct {v2}, Laqn$1;-><init>()V

    invoke-direct {v1, p0, v2}, Laql;-><init>(Landroid/content/Context;Laql$a;)V

    .line 79
    :try_start_0
    invoke-virtual {v1}, Laql;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "showQrCodeDialog"

    .line 81
    invoke-static {v0, v1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x2711

    .line 82
    invoke-static {p0}, Laqn;->a(I)V

    :goto_0
    return-void
.end method

.method public static a(Laqk;)V
    .locals 0

    .line 39
    invoke-static {}, Laqn;->b()V

    .line 40
    sput-object p0, Laqn;->a:Laqk;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XmlyLoginFlowManager"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object p2

    invoke-virtual {p2}, Lbdx;->b()Lbeh;

    move-result-object p2

    check-cast p2, Lbeq;

    .line 89
    invoke-interface {p2, p0, p1}, Lbeq;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 28
    sput-boolean p0, Laqn;->b:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 24
    sget-boolean v0, Laqn;->b:Z

    return v0
.end method

.method public static b()V
    .locals 3

    .line 32
    sget-object v0, Laqn;->a:Laqk;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "clearLastQrCodePresenter"

    .line 33
    invoke-virtual {v0, v1, v2}, Laqk;->a(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    sput-object v0, Laqn;->a:Laqk;

    :cond_0
    return-void
.end method

.method public static c()V
    .locals 1

    .line 44
    invoke-static {}, Laqn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 47
    invoke-static {v0}, Laqn;->a(Landroid/content/Context;)V

    return-void
.end method
