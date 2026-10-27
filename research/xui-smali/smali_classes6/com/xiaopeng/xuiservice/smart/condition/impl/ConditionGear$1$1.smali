.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase;
.source "ConditionGear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propertyId"    # I

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1;

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1$1;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected convert(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear;->access$000(I)Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear$1$1;->fetch0(Landroid/car/hardware/vcu/CarVcuManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected fetch0(Landroid/car/hardware/vcu/CarVcuManager;)Ljava/lang/String;
    .locals 1
    .param p1, "carVcuManager"    # Landroid/car/hardware/vcu/CarVcuManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionGear;->access$000(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
