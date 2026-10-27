.class Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$SingleHold;
.super Ljava/lang/Object;
.source "SeatRLFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHold"
.end annotation


# static fields
.field private static seatRLFragment:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$SingleHold;->seatRLFragment:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;
    .locals 1

    .line 54
    sget-object v0, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment$SingleHold;->seatRLFragment:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRLFragment;

    return-object v0
.end method
