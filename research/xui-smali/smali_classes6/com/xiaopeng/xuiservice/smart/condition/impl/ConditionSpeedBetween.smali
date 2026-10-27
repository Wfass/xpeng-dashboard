.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeedBetween;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionBetween;
.source "ConditionSpeedBetween.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionBetween<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 11
    .local p1, "targetValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    const-string v0, "speed"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionBetween;-><init>(Ljava/lang/String;Landroid/util/Pair;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed;->SINGLETON_RawCarSpeed:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method
