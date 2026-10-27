.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRearTrunk;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;
.source "ConditionRearTrunk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON_TrunkOpennerStatus:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/impl/ecu/BcmManagerValue<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TRUNK_STATUS_MAX:I = 0xa

.field private static final TRUNK_STATUS_MIN:I = 0x0

.field public static final TYPE:Ljava/lang/String; = "rearTrunk"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRearTrunk$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRearTrunk$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRearTrunk;->SINGLETON_TrunkOpennerStatus:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "targetValue"    # Ljava/lang/Integer;

    .line 34
    const-string v0, "rearTrunk"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionEq;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 38
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rear trunk status: "

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

    .line 54
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionRearTrunk;->SINGLETON_TrunkOpennerStatus:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method
