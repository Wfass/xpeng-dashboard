.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase;
.source "ConditionSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase<",
        "Ljava/lang/Double;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propertyId"    # I

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected convert(Ljava/lang/Float;)Ljava/lang/Double;
    .locals 3
    .param p1, "value"    # Ljava/lang/Float;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 30
    .local v0, "f":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1$1;->convert(Ljava/lang/Float;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method protected fetch0(Landroid/car/hardware/vcu/CarVcuManager;)Ljava/lang/Double;
    .locals 2
    .param p1, "carVcuManager"    # Landroid/car/hardware/vcu/CarVcuManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch0(Landroid/car/hardware/vcu/CarVcuManager;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1$1;->fetch0(Landroid/car/hardware/vcu/CarVcuManager;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
