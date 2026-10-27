.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;
.source "ConditionTirePressure.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON_TIRE_LEFT_FRONT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_TIRE_LEFT_REAR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_TIRE_RIGHT_FRONT:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SINGLETON_TIRE_RIGHT_REAR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/TpmsManagerValue<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TIRE_LEFT_FRONT:I = 0x1

.field public static final TIRE_LEFT_REAR:I = 0x3

.field public static final TIRE_RIGHT_FRONT:I = 0x2

.field public static final TIRE_RIGHT_REAR:I = 0x4

.field public static final TYPE:Ljava/lang/String; = "tirePressure"


# instance fields
.field private final tire:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->SINGLETON_TIRE_LEFT_FRONT:Landroid/util/Singleton;

    .line 60
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$2;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->SINGLETON_TIRE_RIGHT_FRONT:Landroid/util/Singleton;

    .line 72
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$3;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$3;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->SINGLETON_TIRE_LEFT_REAR:Landroid/util/Singleton;

    .line 84
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure$4;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->SINGLETON_TIRE_RIGHT_REAR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Float;Ljava/lang/String;I)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Float;
    .param p2, "compareOpName"    # Ljava/lang/String;
    .param p3, "tire"    # I

    .line 22
    const-string v0, "tirePressure"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionCompareBase;-><init>(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/String;)V

    .line 23
    iput p3, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->tire:I

    .line 24
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    const/4 v0, 0x4

    if-gt p3, v0, :cond_0

    .line 27
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tire = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 35
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->tire:I

    packed-switch v0, :pswitch_data_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 43
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->SINGLETON_TIRE_RIGHT_REAR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 41
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->SINGLETON_TIRE_LEFT_REAR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 39
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->SINGLETON_TIRE_RIGHT_FRONT:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    .line 37
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->SINGLETON_TIRE_LEFT_FRONT:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTire()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTirePressure;->tire:I

    return v0
.end method
