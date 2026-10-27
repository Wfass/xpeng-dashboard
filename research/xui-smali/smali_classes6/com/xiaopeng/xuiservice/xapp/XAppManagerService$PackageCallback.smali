.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "XAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 673
    const-string v0, "XAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageAdded packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$600(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 675
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 676
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;>;"
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$700(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/util/List;Ljava/util/List;)V

    .line 677
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$800(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 678
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$900(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/lang/String;Ljava/util/List;)V

    .line 679
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;

    .line 681
    .local v3, "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;
    invoke-interface {v3, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;->onPackageAdded(Ljava/lang/String;)V

    .line 682
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;
    goto :goto_0

    .line 684
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 688
    const-string v0, "XAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageChanged packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 654
    const-string v0, "XAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageRemoved packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$800(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 656
    .local v0, "infoIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    .line 658
    .local v1, "applicationInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->user:Landroid/os/UserHandle;

    .line 659
    invoke-virtual {v2, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 662
    .end local v1    # "applicationInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    :cond_0
    goto :goto_0

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1100(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 665
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageCallback;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;

    .line 666
    .local v2, "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;->onPackageRemoved(Ljava/lang/String;)V

    .line 667
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;
    goto :goto_1

    .line 669
    :cond_2
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 694
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 699
    return-void
.end method
