.class final Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable$SingleHolder;
.super Ljava/lang/Object;
.source "HvacConsumptionTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable$SingleHolder;->createInstance()Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;
    .locals 1

    .line 7
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;

    return-object v0
.end method

.method private static createInstance()Lcom/xiaopeng/carcontrol/viewmodel/endurance/HvacConsumptionTable;
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/endurance/D55HvacConsumptionTable;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/endurance/D55HvacConsumptionTable;-><init>()V

    return-object v0
.end method
