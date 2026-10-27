.class public final synthetic Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$zTfkas8FJPpEWQ06Ep8JG7xg7Pk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/remote/StoreProviderManagerWarpper$AppGroupCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$zTfkas8FJPpEWQ06Ep8JG7xg7Pk;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iput p2, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$zTfkas8FJPpEWQ06Ep8JG7xg7Pk;->f$1:I

    return-void
.end method


# virtual methods
.method public final onCallback(Landroid/util/SparseArray;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$zTfkas8FJPpEWQ06Ep8JG7xg7Pk;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iget v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$zTfkas8FJPpEWQ06Ep8JG7xg7Pk;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->lambda$fetchAppOperation$1(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;ILandroid/util/SparseArray;)V

    return-void
.end method
