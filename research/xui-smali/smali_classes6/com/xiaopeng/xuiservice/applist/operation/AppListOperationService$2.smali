.class Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;
.super Ljava/lang/Object;
.source "AppListOperationService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->downloadConfig(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
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

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;->val$appInfoEntity:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onDownloadFinish$0(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;Ljava/io/File;)V
    .locals 3
    .param p1, "appInfoEntity"    # Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    .param p2, "targetFile"    # Ljava/io/File;

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->access$300(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/lang/String;Ljava/io/File;)V

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iget-object v1, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    iget v2, p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->access$400(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/lang/String;I)V

    .line 304
    return-void
.end method


# virtual methods
.method public onDownloadFinish(ZLjava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "targetFile"    # Ljava/io/File;

    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;->this$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->access$100(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;->val$appInfoEntity:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    new-instance v2, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;

    invoke-direct {v2, p0, v1, p3}, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;Ljava/io/File;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 306
    :cond_0
    return-void
.end method
