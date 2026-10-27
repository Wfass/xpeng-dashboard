.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionKeyValue.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperationKeyValueChangeableValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;"
    }
.end annotation


# instance fields
.field final singleCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    const-string v0, "OperationKeyValue"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;->singleCache:Landroid/util/ArrayMap;

    .line 99
    return-void
.end method


# virtual methods
.method protected fetch()Ljava/lang/Long;
    .locals 2

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;->fetch()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public onSingleUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 118
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;->onSingleUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;->singleCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;->update()V

    .line 121
    return-void
.end method

.method protected onStartWatch()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->register(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;)V

    .line 109
    return-void
.end method

.method protected onStopWatch()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->unregister(Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService$OperationKeyValueListener;)V

    .line 114
    return-void
.end method
