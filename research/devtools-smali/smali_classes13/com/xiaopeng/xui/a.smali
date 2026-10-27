.class public Lcom/xiaopeng/xui/a;
.super Ljava/lang/Object;
.source "Xui.java"


# static fields
.field private static ZG:Landroid/app/Application;

.field private static ZH:Z

.field private static ZI:Z

.field private static ZJ:Z


# direct methods
.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 22
    sput-object p0, Lcom/xiaopeng/xui/a;->ZG:Landroid/app/Application;

    .line 23
    const-string p0, "xpui"

    const-string v0, "0.7.10_HEAD_bb7632f_2021/07/23 03:21:41"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 p0, 0x0

    sput-boolean p0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->msGlobalEnable:Z

    .line 25
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 28
    sget-object v0, Lcom/xiaopeng/xui/a;->ZG:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/xiaopeng/xui/a;->ZG:Landroid/app/Application;

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Xui must be call Xui#init()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ql()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/xiaopeng/xui/a;->ZH:Z

    return v0
.end method

.method public static qm()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/xiaopeng/xui/a;->ZI:Z

    return v0
.end method

.method public static qn()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/xiaopeng/xui/a;->ZJ:Z

    return v0
.end method
