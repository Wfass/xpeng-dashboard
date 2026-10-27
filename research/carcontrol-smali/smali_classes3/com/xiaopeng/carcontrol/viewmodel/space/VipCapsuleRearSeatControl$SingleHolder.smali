.class Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl$SingleHolder;
.super Ljava/lang/Object;
.source "VipCapsuleRearSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl$SingleHolder;->instance:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl$SingleHolder;->instance:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleRearSeatControl;

    return-object v0
.end method
