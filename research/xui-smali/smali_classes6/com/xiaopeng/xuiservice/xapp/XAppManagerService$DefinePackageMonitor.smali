.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "XAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefinePackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$1;

    .line 615
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 618
    const-string v0, "XAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefinePackageMonitor onPackageAdded packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$600(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 620
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 621
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;>;"
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$700(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/util/List;Ljava/util/List;)V

    .line 622
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$800(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 623
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$900(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;Ljava/lang/String;Ljava/util/List;)V

    .line 624
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

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

    .line 626
    .local v3, "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;
    invoke-interface {v3, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;->onPackageAdded(Ljava/lang/String;)V

    .line 627
    .end local v3    # "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;
    goto :goto_0

    .line 629
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 633
    const-string v0, "XAppManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefinePackageMonitor onPackageRemoved packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$800(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 635
    .local v0, "infoIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    .line 637
    .local v1, "applicationInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 640
    .end local v1    # "applicationInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    :cond_0
    goto :goto_0

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1100(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1000(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 643
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$DefinePackageMonitor;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

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

    .line 644
    .local v2, "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;
    invoke-interface {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;->onPackageRemoved(Ljava/lang/String;)V

    .line 645
    .end local v2    # "listener":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$PackageStatusListener;
    goto :goto_1

    .line 647
    :cond_2
    return-void
.end method
