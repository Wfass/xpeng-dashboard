.class Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl$SingleHolder;
.super Ljava/lang/Object;
.source "VipSleepSecSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSleepSecSeatControl;

    return-object v0
.end method
