.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarCloseButton;
.super Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;
.source "NavigationBarCloseButton.java"


# static fields
.field private static final KEEP_ALIVE_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "com.xiaopeng.accessin"

    const-string v1, "com.xiaopeng.deviceshare"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarCloseButton;->KEEP_ALIVE_WHITE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenId"    # I
    .param p3, "areaType"    # Ljava/lang/String;
    .param p4, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarFunctionButton;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 16
    return-void
.end method

.method private static isInWhiteList(Lcom/xiaopeng/app/xpPackageInfo;)Z
    .locals 1
    .param p0, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 29
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getIconResId()I
    .locals 1

    .line 20
    const v0, 0x7f0801ea

    return v0
.end method

.method protected onClick(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 4
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 37
    invoke-static {p3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarCloseButton;->isInWhiteList(Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->goHome(I)V

    .line 39
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarCloseButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 43
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 45
    :try_start_0
    iget-object v1, p3, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NavigationBar2"

    const-string v3, "activityManager.forceStopPackage"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
