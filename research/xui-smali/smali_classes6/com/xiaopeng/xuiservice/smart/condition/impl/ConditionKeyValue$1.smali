.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$1;
.super Landroid/util/Singleton;
.source "ConditionKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;
    .locals 1

    .line 89
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;

    move-result-object v0

    return-object v0
.end method
