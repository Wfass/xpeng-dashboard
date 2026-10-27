.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBattery;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;
.source "ConditionBattery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_BATTERY:I = 0x64

.field private static final MIN_BATTERY:I = 0x0

.field private static final SINGLETON_BatteryValue:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/VcuManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "battery"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBattery$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBattery$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBattery;->SINGLETON_BatteryValue:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Integer;
    .param p2, "compareOpName"    # Ljava/lang/String;

    .line 18
    const-string v0, "battery"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;-><init>(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 22
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid battery percent value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionBattery;->SINGLETON_BatteryValue:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method
