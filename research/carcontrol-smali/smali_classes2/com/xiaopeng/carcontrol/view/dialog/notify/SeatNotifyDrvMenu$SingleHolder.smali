.class Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu$SingleHolder;
.super Ljava/lang/Object;
.source "SeatNotifyDrvMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    return-object v0
.end method
