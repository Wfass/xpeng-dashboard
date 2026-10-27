.class public Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;
.super Ljava/lang/Object;
.source "MobileAppController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileAppController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private getAppInfoByName(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->getInstance()Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    move-result-object v0

    .line 64
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->getAppInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "mobileAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 67
    .local v2, "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    return-object v2

    .line 70
    .end local v2    # "appInfo":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private startMobileAppMainPage(II)V
    .locals 3
    .param p1, "appType"    # I
    .param p2, "screenId"    # I

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "screenId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->getInstance()Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    move-result-object v1

    const-string v2, "applist_carlink"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;)I

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->getInstance()Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    move-result-object v1

    const-string v2, "applist_hicar"

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 83
    :goto_0
    return-void
.end method


# virtual methods
.method public startMobileApp(ILjava/lang/String;I)I
    .locals 4
    .param p1, "appType"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "screenId"    # I

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;->startMobileAppMainPage(II)V

    .line 39
    const/4 v0, 0x1

    .local v0, "result":I
    goto :goto_0

    .line 41
    .end local v0    # "result":I
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;->startMobileApp(Ljava/lang/String;I)I

    move-result v0

    .line 43
    .restart local v0    # "result":I
    :goto_0
    const-string v1, "MobileAppController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMobileApp appName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " &result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " appType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v0
.end method

.method public startMobileApp(Ljava/lang/String;I)I
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 23
    const/4 v0, 0x4

    .line 24
    .local v0, "result":I
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;->getAppInfoByName(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v1

    .line 25
    .local v1, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-eqz v1, :cond_0

    .line 26
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "screenId"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->getInstance()Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 29
    const/4 v0, 0x1

    .line 31
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v2, "MobileAppController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startMobileApp appName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return v0
.end method

.method public stopMobileApp(Ljava/lang/String;I)I
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 49
    const/4 v0, 0x2

    .line 50
    .local v0, "result":I
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;->getAppInfoByName(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    move-result-object v1

    .line 51
    .local v1, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->getInstance()Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->stopApp(Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "ret":I
    const-string v3, "MobileAppController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App list Manager stop App:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez v2, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 58
    .end local v2    # "ret":I
    :cond_0
    const-string v2, "MobileAppController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startMobileApp appName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return v0
.end method
