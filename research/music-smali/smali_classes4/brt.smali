.class public Lbrt;
.super Ljava/lang/Object;
.source "VipNavigationUitl.java"


# direct methods
.method public static a(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 17
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbsf;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbsf;

    if-eqz v1, :cond_0

    .line 19
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v1

    const-class v2, Lbtg;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtg;

    .line 20
    invoke-interface {v1, p0, v0, p1}, Lbtg;->startVipBuy(Landroid/content/Context;II)V

    :cond_0
    return-void

    .line 24
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbtg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtg;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    .line 29
    :cond_2
    invoke-interface {v0, p0, v1, p1}, Lbtg;->startVipBuy(Landroid/content/Context;II)V

    return-void
.end method
