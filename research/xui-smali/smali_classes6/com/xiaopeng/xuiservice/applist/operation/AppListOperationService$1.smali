.class Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;
.super Ljava/lang/Object;
.source "AppListOperationService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->downloadIcons(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

.field final synthetic val$appInfoEntity:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;->val$appInfoEntity:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDownloadFinish$0(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 3
    .param p1, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    iget v2, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->access$200(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onDownloadFinish(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "successItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;>;"
    .local p2, "failItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;>;"
    const-string v0, "AppListOperationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadIcons finish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;->val$appInfoEntity:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->access$100(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;->val$appInfoEntity:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$1$M8tq6lAUrBDGnv_s54cEW7ABkQA;

    invoke-direct {v2, p0, v1}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$1$M8tq6lAUrBDGnv_s54cEW7ABkQA;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 286
    :cond_0
    return-void
.end method
