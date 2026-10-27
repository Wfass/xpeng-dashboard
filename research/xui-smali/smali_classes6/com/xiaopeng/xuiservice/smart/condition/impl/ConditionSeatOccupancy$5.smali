.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$5;
.super Landroid/util/Singleton;
.source "ConditionSeatOccupancy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$5$1;

    const-string v1, "RearRightSeat"

    const v2, 0x21401cca

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$5$1;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$5;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSeatOccupancy$5;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/SrsManagerValue;

    move-result-object v0

    return-object v0
.end method
