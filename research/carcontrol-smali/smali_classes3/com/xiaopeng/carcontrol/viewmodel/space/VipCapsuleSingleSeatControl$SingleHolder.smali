.class Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl$SingleHolder;
.super Ljava/lang/Object;
.source "VipCapsuleSingleSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;
    .locals 1

    .line 12
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSingleSeatControl;

    return-object v0
.end method
