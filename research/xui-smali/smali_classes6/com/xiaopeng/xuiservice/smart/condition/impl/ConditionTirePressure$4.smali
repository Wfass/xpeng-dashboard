.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;
.super Landroid/util/Singleton;
.source "ConditionTirePressure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue<",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4$1;

    const-string v1, "TirePressure-RR"

    const v2, 0x21601e05

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4$1;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue;

    move-result-object v0

    return-object v0
.end method
