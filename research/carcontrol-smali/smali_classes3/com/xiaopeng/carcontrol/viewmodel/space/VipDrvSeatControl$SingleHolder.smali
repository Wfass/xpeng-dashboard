.class Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl$SingleHolder;
.super Ljava/lang/Object;
.source "VipDrvSeatControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/space/VipDrvSeatControl;

    return-object v0
.end method
