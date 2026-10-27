.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<",
        "Landroid/location/Location;",
        "Landroid/location/Location;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# static fields
.field private static final SINGLETON_LOCATION:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Landroid/location/Location;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "location"

.field private static final minDistanceM:F = 100.0f

.field private static final minTimeMs:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->SINGLETON_LOCATION:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 1
    .param p1, "targetValue"    # Landroid/location/Location;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 31
    const-string v0, "location"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->setOnlyNotifyWhenMatchChanged(Z)V

    .line 33
    return-void
.end method

.method static synthetic lambda$operator$0(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 1
    .param p0, "t"    # Landroid/location/Location;
    .param p1, "c"    # Landroid/location/Location;

    .line 107
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected convert(Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p1, "value"    # Landroid/location/Location;

    .line 112
    return-object p1
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->convert(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 102
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->SINGLETON_LOCATION:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method

.method public operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "Landroid/location/Location;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$UCeTa5IF1CnR-56LFLKa7E6QRmE;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$UCeTa5IF1CnR-56LFLKa7E6QRmE;

    return-object v0
.end method
