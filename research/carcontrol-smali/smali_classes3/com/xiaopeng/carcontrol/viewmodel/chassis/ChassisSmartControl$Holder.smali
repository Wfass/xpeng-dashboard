.class Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl$Holder;
.super Ljava/lang/Object;
.source "ChassisSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl$Holder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;
    .locals 1

    .line 49
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl$Holder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    return-object v0
.end method
