.class Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;
.super Ljava/lang/Object;
.source "OperationHalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/OperationHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncParam"
.end annotation


# instance fields
.field doAdd:Z

.field doDelete:Z

.field doUpdate:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0
    .param p1, "doAdd"    # Z
    .param p2, "doUpdate"    # Z
    .param p3, "doDelete"    # Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doAdd:Z

    .line 84
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doUpdate:Z

    .line 85
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/operation/OperationHalService$SyncParam;->doDelete:Z

    .line 86
    return-void
.end method
