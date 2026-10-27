.class public final synthetic Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/util/List;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;->f$2:I

    iput-boolean p4, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;->f$2:I

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$bVbJ8wZRJDbbdxPyqx48a-LDkmo;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->lambda$handleGroup$3(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Ljava/util/List;IZ)V

    return-void
.end method
