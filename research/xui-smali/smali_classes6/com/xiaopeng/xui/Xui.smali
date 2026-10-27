.class public Lcom/xiaopeng/xui/Xui;
.super Ljava/lang/Object;
.source "Xui.java"


# static fields
.field private static isV3CoverV5:Z

.field private static mApp:Landroid/app/Application;

.field private static mPackageName:Ljava/lang/String;

.field private static mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

.field private static sDialogFullScreen:Z

.field private static sFontScaleDynamicChangeEnable:Z

.field private static sLocaleDynamicChangeEnable:Z

.field private static sRightRudder:Z

.field private static sSharedDisplay:Z

.field private static sSingleToast:Z

.field private static sThemeRefreshByVisibilityChanged:Z

.field private static sUseViewLocationSmoothScroll:Z

.field private static sVuiEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xui/Xui;->isV3CoverV5:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 0

    .line 105
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 47
    sget-object v0, Lcom/xiaopeng/xui/Xui;->mApp:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/xiaopeng/xui/Xui;->mApp:Landroid/app/Application;

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Xui must be call Xui#init()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/xiaopeng/xui/Xui;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 57
    .local v1, "cls":Ljava/lang/Class;
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 58
    .local v2, "m":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 59
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;
    .locals 1

    .line 130
    sget-object v0, Lcom/xiaopeng/xui/Xui;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 4
    .param p0, "app"    # Landroid/app/Application;

    .line 35
    sput-object p0, Lcom/xiaopeng/xui/Xui;->mApp:Landroid/app/Application;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xui/drawable/shimmer/XShimmer;->msGlobalEnable:Z

    .line 38
    const-string v0, "persist.sys.xp.shared_display.enable"

    invoke-static {v0}, Lcom/xiaopeng/xui/Xui;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "enable":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/xui/Xui;->sSharedDisplay:Z

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xui/Xui;->mPackageName:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "xpui-init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/xiaopeng/xui/Xui;->sSharedDisplay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "5.2.16-merge-SNAPSHOT_xos5.2.0_e793d2a4_2024/05/29 09:35:48"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method

.method public static isDialogFullScreen()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sDialogFullScreen:Z

    return v0
.end method

.method public static isFontScaleDynamicChangeEnable()Z
    .locals 1

    .line 74
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sFontScaleDynamicChangeEnable:Z

    return v0
.end method

.method public static isIsV3CoverV5()Z
    .locals 1

    .line 138
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->isV3CoverV5:Z

    return v0
.end method

.method public static isLocaleDynamicChangeEnable()Z
    .locals 1

    .line 150
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sLocaleDynamicChangeEnable:Z

    return v0
.end method

.method public static isRightRudder()Z
    .locals 1

    .line 142
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sRightRudder:Z

    return v0
.end method

.method public static isSharedDisplay()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sSharedDisplay:Z

    return v0
.end method

.method public static isSingleToast()Z
    .locals 1

    .line 113
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sSingleToast:Z

    return v0
.end method

.method public static isThemeRefreshByVisibilityChanged()Z
    .locals 1

    .line 158
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sThemeRefreshByVisibilityChanged:Z

    return v0
.end method

.method public static isUseViewLocationSmoothScroll()Z
    .locals 1

    .line 122
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sUseViewLocationSmoothScroll:Z

    return v0
.end method

.method public static isVuiEnable()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/xiaopeng/xui/Xui;->sVuiEnable:Z

    return v0
.end method

.method public static release()V
    .locals 0

    .line 102
    return-void
.end method

.method public static setDialogFullScreen(Z)V
    .locals 0
    .param p0, "dialogFullScreen"    # Z

    .line 90
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sDialogFullScreen:Z

    .line 91
    return-void
.end method

.method public static setFontScaleDynamicChangeEnable(Z)V
    .locals 0
    .param p0, "fontScaleDynamicChangeEnable"    # Z

    .line 78
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sFontScaleDynamicChangeEnable:Z

    .line 79
    return-void
.end method

.method public static setIsV3CoverV5(Z)V
    .locals 0
    .param p0, "isV3CoverV5"    # Z

    .line 134
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->isV3CoverV5:Z

    .line 135
    return-void
.end method

.method public static setLocaleDynamicChangeEnable(Z)V
    .locals 0
    .param p0, "localeDynamicChangeEnable"    # Z

    .line 154
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sLocaleDynamicChangeEnable:Z

    .line 155
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "level"    # I

    .line 98
    invoke-static {p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->setLogLevel(I)V

    .line 99
    return-void
.end method

.method public static setRightRudder(Z)V
    .locals 0
    .param p0, "rightRudder"    # Z

    .line 146
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sRightRudder:Z

    .line 147
    return-void
.end method

.method public static setSingleToast(Z)V
    .locals 0
    .param p0, "singleToast"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    return-void
.end method

.method public static setThemeRefreshByVisibilityChanged(Z)V
    .locals 0
    .param p0, "themeRefreshByVisibilityChanged"    # Z

    .line 162
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sThemeRefreshByVisibilityChanged:Z

    .line 163
    return-void
.end method

.method public static setUseViewLocationSmoothScroll(Z)V
    .locals 0
    .param p0, "useViewLocationSmoothScroll"    # Z

    .line 126
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sUseViewLocationSmoothScroll:Z

    .line 127
    return-void
.end method

.method public static setVuiEnable(Z)V
    .locals 0
    .param p0, "vuiEnable"    # Z

    .line 70
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sVuiEnable:Z

    .line 71
    return-void
.end method

.method public static setVuiEnable(ZLcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 0
    .param p0, "vuiEnable"    # Z
    .param p1, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 108
    sput-boolean p0, Lcom/xiaopeng/xui/Xui;->sVuiEnable:Z

    .line 109
    sput-object p1, Lcom/xiaopeng/xui/Xui;->mVuiEngine:Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 110
    return-void
.end method
