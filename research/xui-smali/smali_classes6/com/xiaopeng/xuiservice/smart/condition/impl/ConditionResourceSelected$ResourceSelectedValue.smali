.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionResourceSelected.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceSelectedValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;"
    }
.end annotation


# instance fields
.field final selectedMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    const-string v0, "ResourceSelected"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;->selectedMap:Landroid/util/SparseArray;

    .line 87
    return-void
.end method


# virtual methods
.method protected fetch()Ljava/lang/Long;
    .locals 2

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;->fetch()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 115
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 106
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;->selectedMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceSelected$ResourceSelectedValue;->update()V

    .line 110
    :cond_0
    return-void
.end method

.method protected onStartWatch()V
    .locals 1

    .line 96
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 97
    return-void
.end method

.method protected onStopWatch()V
    .locals 1

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 102
    return-void
.end method
