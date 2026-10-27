.class public final synthetic Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$1$M8tq6lAUrBDGnv_s54cEW7ABkQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$1$M8tq6lAUrBDGnv_s54cEW7ABkQA;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$1$M8tq6lAUrBDGnv_s54cEW7ABkQA;->f$1:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$1$M8tq6lAUrBDGnv_s54cEW7ABkQA;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$1$M8tq6lAUrBDGnv_s54cEW7ABkQA;->f$1:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;->lambda$onDownloadFinish$0(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService$1;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V

    return-void
.end method
