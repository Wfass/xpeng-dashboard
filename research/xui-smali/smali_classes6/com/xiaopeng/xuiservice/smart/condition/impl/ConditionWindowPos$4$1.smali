.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue;
.source "ConditionWindowPos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propertyId"    # I

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4;

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected fetch0(Landroid/car/hardware/bcm/CarBcmManager;)Ljava/lang/Float;
    .locals 1
    .param p1, "carBcmManager"    # Landroid/car/hardware/bcm/CarBcmManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isProductSeriesD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/car/hardware/bcm/CarBcmManager;->getRrdmWinPstState()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/car/hardware/bcm/CarBcmManager;->getWindowMovePosition(I)F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch0(Landroid/car/hardware/bcm/CarBcmManager;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionWindowPos$4$1;->fetch0(Landroid/car/hardware/bcm/CarBcmManager;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
