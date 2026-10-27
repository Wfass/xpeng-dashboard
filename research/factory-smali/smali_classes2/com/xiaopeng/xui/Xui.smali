.class public Lcom/xiaopeng/xui/Xui;
.super Ljava/lang/Object;
.source "Xui.java"


# static fields
.field private static mApp:Landroid/app/Application;

.field private static sDialogFullScreen:Z

.field private static sFontScaleDynamicChangeEnable:Z

.field private static sVuiEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 0

    .line 66
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 28
    sget-object v0, Lcom/xiaopeng/xui/Xui;->mApp:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/xiaopeng/xui/Xui;->mApp:Landroid/app/Application;

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Xui must be call Xui#init()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .param p0, "app"    # Landroid/app/Application;

    .line 22
    sput-object p0, Lcom/xiaopeng/xui/Xui;->mApp:Landroid/app/Application;

    .line 23
    const-string v0, "xpui"

    const-string v1, "0.7.10_HEAD_bb7632f_2021/07/23 03:21:41"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->msGlobalEnable:Z

    .line 25
    return-void
.end method

.method public static isDialogFullScreen()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sDialogFullScreen:Z

    return v0
.end method

.method public static isFontScaleDynamicChangeEnable()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sFontScaleDynamicChangeEnable:Z

    return v0
.end method

.method public static isVuiEnable()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sVuiEnable:Z

    return v0
.end method

.method public static release()V
    .locals 0

    .line 63
    return-void
.end method

.method public static setDialogFullScreen(Z)V
    .locals 0
    .param p0, "dialogFullScreen"    # Z

    .line 55
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sDialogFullScreen:Z

    .line 56
    return-void
.end method

.method public static setFontScaleDynamicChangeEnable(Z)V
    .locals 0
    .param p0, "fontScaleDynamicChangeEnable"    # Z

    .line 47
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sFontScaleDynamicChangeEnable:Z

    .line 48
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .line 59
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->setLogLevel(I)V

    .line 60
    return-void
.end method

.method public static setVuiEnable(Z)V
    .locals 0
    .param p0, "vuiEnable"    # Z

    .line 39
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sVuiEnable:Z

    .line 40
    return-void
.end method
