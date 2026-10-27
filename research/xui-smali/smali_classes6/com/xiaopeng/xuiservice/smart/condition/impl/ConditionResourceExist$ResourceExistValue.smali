.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionResourceExist.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceExistValue"
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
.field final existsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    const-string v0, "ResourceExist"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->existsMap:Landroid/util/ArrayMap;

    .line 75
    return-void
.end method


# virtual methods
.method protected fetch()Ljava/lang/Long;
    .locals 2

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->fetch()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 109
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/16 v2, 0xe

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_4

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->existsMap:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->update()V

    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    invoke-static {p4}, Lcom/xiaopeng/xuimanager/operation/utils/ResourceBuild;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/operation/OperationResource;

    move-result-object v2

    .line 96
    .local v2, "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    if-eqz v2, :cond_3

    .line 97
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->existsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    nop

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionResourceExist$ResourceExistValue;->update()V

    .line 100
    .end local v2    # "resource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    :cond_3
    nop

    .line 104
    :cond_4
    :goto_1
    return-void
.end method

.method protected onStartWatch()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 85
    return-void
.end method

.method protected onStopWatch()V
    .locals 1

    .line 89
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 90
    return-void
.end method
