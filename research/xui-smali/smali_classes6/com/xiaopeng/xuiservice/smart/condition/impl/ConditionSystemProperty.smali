.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionSystemProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;
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
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "property"


# instance fields
.field private final compareOpName:Ljava/lang/String;

.field private final property:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetValue"    # Ljava/lang/String;
    .param p2, "compareOpName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .line 24
    const-string v0, "property"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->compareOpName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->property:Ljava/lang/String;

    .line 29
    if-eqz p2, :cond_1

    .line 32
    if-eqz p3, :cond_0

    .line 35
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "property is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "opName is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$convert$0(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;)V
    .locals 3
    .param p1, "systemPropertiesValue"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->property:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "propValue1":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 65
    const-string v1, ""

    move-object v0, v1

    .line 67
    :cond_0
    iget-object v1, p1, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;->cache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->property:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "propValue1":Ljava/lang/String;
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get SystemProperties error: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->convert(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected convert(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/Long;

    .line 55
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;

    .line 56
    .local v0, "systemPropertiesValue":Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;->cache:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->property:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "propValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 58
    return-object v1

    .line 61
    :cond_0
    new-instance v2, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionSystemProperty$x8lsvT0SF-C-aKttLURsSL-c0os;

    invoke-direct {v2, p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionSystemProperty$x8lsvT0SF-C-aKttLURsSL-c0os;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;)V

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->post(Ljava/lang/Runnable;)V

    .line 74
    const/4 v2, 0x0

    return-object v2
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

    .line 50
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->property:Ljava/lang/String;

    return-object v0
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

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;->compareOpName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Operators;->getCompareOp(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;

    move-result-object v0

    return-object v0
.end method
