.class Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$Holder;
.super Ljava/lang/Object;
.source "SeatMassageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 336
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;
    .locals 1

    .line 335
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    return-object v0
.end method
