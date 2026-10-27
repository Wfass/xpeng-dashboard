.class Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$6;
.super Ljava/lang/Object;
.source "XAppManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->loadAndSyncAllXpPackageInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 883
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 887
    :try_start_0
    const-string v0, "XAppManagerService"

    const-string v1, "begin loadAndSyncAllXpPackageInfo"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getAllXpPackageInfos()Ljava/util/List;

    move-result-object v0

    .line 889
    .local v0, "packageInfos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpPackageInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 890
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/app/xpPackageInfo;

    .line 891
    .local v2, "info":Lcom/xiaopeng/app/xpPackageInfo;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->access$1300(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    new-instance v5, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$6;->this$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    iget v7, v2, Lcom/xiaopeng/app/xpPackageInfo;->appType:I

    invoke-direct {v5, v6, v7}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$BasePackageInfo;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    .end local v2    # "info":Lcom/xiaopeng/app/xpPackageInfo;
    goto :goto_0

    .line 894
    :cond_0
    const-string v1, "XAppManagerService"

    const-string v2, "end loadAndSyncAllXpPackageInfo"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    .end local v0    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpPackageInfo;>;"
    goto :goto_1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 898
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
