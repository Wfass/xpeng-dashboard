.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;
.super Landroid/util/Singleton;
.source "ConditionSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase<",
        "Ljava/lang/Double;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase<",
            "Ljava/lang/Double;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1$1;

    const-string v1, "CarSpeed"

    const v2, 0x21601225

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1$1;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase;

    move-result-object v0

    return-object v0
.end method
