.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$1;
.super Landroid/util/Singleton;
.source "ConditionDrivingDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue<",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$1$1;

    const-string v1, "DrivingDistance-Cltc"

    const v2, 0x2160127a

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$1$1;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$1;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionDrivingDistance$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue;

    move-result-object v0

    return-object v0
.end method
