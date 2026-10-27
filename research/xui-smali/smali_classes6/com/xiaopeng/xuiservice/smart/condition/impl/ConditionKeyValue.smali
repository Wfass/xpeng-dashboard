.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionKeyValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "key_value"


# instance fields
.field private final key:Ljava/lang/String;

.field private final useUid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "targetValue"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "useUid"    # Z

    .line 25
    const-string v0, "key_value"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->key:Ljava/lang/String;

    .line 27
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->useUid:Z

    .line 29
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$convert$0(Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;)V
    .locals 2
    .param p0, "realKey"    # Ljava/lang/String;
    .param p1, "changeableValue"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;

    .line 71
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationKeyValueService;->syncGetSingle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "kv":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 73
    const-string v0, ""

    .line 75
    :cond_0
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;->singleCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;->update()V

    .line 77
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected convert(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/Long;

    .line 52
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->useUid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/AccountUtil;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "uid":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    return-object v1

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "realKey":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v0    # "realKey":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->key:Ljava/lang/String;

    .line 63
    .restart local v0    # "realKey":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v2}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;

    .line 64
    .local v2, "changeableValue":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;
    iget-object v3, v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;->singleCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 67
    return-object v3

    .line 70
    :cond_2
    new-instance v4, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionKeyValue$jGMiCVYCycYX6D4PYw4ahmC_-Ec;

    invoke-direct {v4, v0, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionKeyValue$jGMiCVYCycYX6D4PYw4ahmC_-Ec;-><init>(Ljava/lang/String;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue$OperationKeyValueChangeableValue;)V

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 78
    return-object v1
.end method

.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public isUseUid()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionKeyValue;->useUid:Z

    return v0
.end method

.method public operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Equal;-><init>()V

    return-object v0
.end method
