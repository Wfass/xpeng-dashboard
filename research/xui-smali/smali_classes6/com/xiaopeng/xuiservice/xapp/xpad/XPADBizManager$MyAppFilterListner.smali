.class Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;
.super Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;
.source "XPADBizManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAppFilterListner"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager$FilteredListener;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;->targetEvents:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager$MyAppFilterListner;->targetPackages:Ljava/util/List;

    const-string v1, "com.xp.xpad"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method static synthetic lambda$onFilterEvent$0(Lcom/xiaopeng/xuimanager/applist/data/AppInfo;)V
    .locals 4
    .param p0, "appInfo"    # Lcom/xiaopeng/xuimanager/applist/data/AppInfo;

    .line 79
    const-string v0, "XPADBizManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstall xpad app, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->access$000()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 81
    return-void
.end method

.method static synthetic lambda$onFilterEvent$1()V
    .locals 2

    .line 76
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->getAppInfoListWithCategory(I)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "xpadApps":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/applist/data/AppInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$MYIo8VGjSHd22QI8RtGeKNQZbDQ;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$MYIo8VGjSHd22QI8RtGeKNQZbDQ;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic lambda$onFilterEvent$2(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 89
    const-string v0, "XPADBizManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel downloading xpad app, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->getInstance()Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/applist/impl/DownloadingAppManager;->cancelDownloading(Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method static synthetic lambda$onFilterEvent$3()V
    .locals 2

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "downloadingXpadApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$Z5GT2OOkp2cf8NQ_N8WOwRGHRtY;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$Z5GT2OOkp2cf8NQ_N8WOwRGHRtY;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public onFilterEvent(I[Lcom/xiaopeng/xuimanager/applist/data/AppInfo;[Ljava/lang/String;)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "infos"    # [Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    .param p3, "params"    # [Ljava/lang/String;

    .line 66
    const-string v0, "XPADBizManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterEvent, eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", infos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x4

    if-ne v0, p1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_2

    .line 70
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 71
    .local v2, "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    const-string v3, "com.xp.xpad"

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/applist/data/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    const-string v0, "XPADBizManager"

    const-string v1, "clear xpad apps..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$RYWvJgmI0QZ4PfqY5N2JaKbVtYg;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$RYWvJgmI0QZ4PfqY5N2JaKbVtYg;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 84
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$qNoNAkGPnb3DAOOy7_4wkM9-epQ;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/xpad/-$$Lambda$XPADBizManager$MyAppFilterListner$qNoNAkGPnb3DAOOy7_4wkM9-epQ;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 94
    goto :goto_1

    .line 70
    .end local v2    # "info":Lcom/xiaopeng/xuimanager/applist/data/AppInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_2
    :goto_1
    return-void

    .line 68
    :cond_3
    :goto_2
    return-void
.end method
