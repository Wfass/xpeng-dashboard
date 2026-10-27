.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue;
.source "ConditionTirePressure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propertyId"    # I

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected fetch0(Landroid/car/hardware/tpms/CarTpmsManager;)Ljava/lang/Float;
    .locals 1
    .param p1, "carTpmsManager"    # Landroid/car/hardware/tpms/CarTpmsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch0(Landroid/car/hardware/tpms/CarTpmsManager;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4$1;->fetch0(Landroid/car/hardware/tpms/CarTpmsManager;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
