.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue;
.source "ConditionBeltStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propertyId"    # I

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1;

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected fetch0(Landroid/car/hardware/srs/CarSrsManager;)Ljava/lang/Integer;
    .locals 1
    .param p1, "carSrsManager"    # Landroid/car/hardware/srs/CarSrsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Landroid/car/hardware/srs/CarSrsManager;->getDriverBeltStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch0(Landroid/car/hardware/srs/CarSrsManager;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBeltStatus$1$1;->fetch0(Landroid/car/hardware/srs/CarSrsManager;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
