.class Lcom/xiaopeng/unity/carcontrol/SeatControlManager$Holder;
.super Ljava/lang/Object;
.source "SeatControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SeatControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2365
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/SeatControlManager;-><init>(Lcom/xiaopeng/unity/carcontrol/SeatControlManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/SeatControlManager;
    .locals 1

    .line 2364
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SeatControlManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/SeatControlManager;

    return-object v0
.end method
