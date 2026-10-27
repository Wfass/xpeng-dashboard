.class Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl$SingleHolder;
.super Ljava/lang/Object;
.source "VipCapsuleSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;
    .locals 1

    .line 12
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipCapsuleSeatControl;

    return-object v0
.end method
