.class public Lcom/xiaopeng/musicradio/model/dui/j;
.super Ljava/lang/Object;
.source "DuiUtils.java"


# direct methods
.method public static a(Ljava/lang/Runnable;Ljava/lang/String;)Z
    .locals 2

    .line 13
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    :try_start_0
    invoke-static {}, Lbeb;->a()Lbeb;

    move-result-object v0

    invoke-virtual {v0}, Lbeb;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->a()V

    :cond_0
    if-nez p0, :cond_1

    .line 21
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbdm;->b(Lbdm$b;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/j$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/dui/j$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lbdm;->b(Lbdm$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DuiUtils"

    .line 37
    invoke-static {v0, p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
