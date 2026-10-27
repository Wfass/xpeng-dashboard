.class public final synthetic Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

.field private final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;->f$1:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;->f$1:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$2$ztlQAGxCZRNFstsKm7Kgs9eDQuw;->f$2:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;->lambda$onDownloadFinish$0(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$2;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;Ljava/io/File;)V

    return-void
.end method
