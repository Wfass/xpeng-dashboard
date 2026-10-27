.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;
.source "ConditionSpeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field static final SINGLETON_RawCarSpeed:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValueBase<",
            "Ljava/lang/Double;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "speed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed;->SINGLETON_RawCarSpeed:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1
    .param p1, "targetValue"    # Ljava/lang/Double;
    .param p2, "compareOpName"    # Ljava/lang/String;

    .line 15
    const-string v0, "speed"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;-><init>(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/String;)V

    .line 16
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

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSpeed;->SINGLETON_RawCarSpeed:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method
