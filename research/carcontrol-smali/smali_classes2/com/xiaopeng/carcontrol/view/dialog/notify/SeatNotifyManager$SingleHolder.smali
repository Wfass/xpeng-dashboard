.class Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager$SingleHolder;
.super Ljava/lang/Object;
.source "SeatNotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyManager;

    return-object v0
.end method
