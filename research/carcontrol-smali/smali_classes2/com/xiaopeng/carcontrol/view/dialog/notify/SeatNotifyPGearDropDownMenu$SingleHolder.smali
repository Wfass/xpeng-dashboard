.class Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu$SingleHolder;
.super Ljava/lang/Object;
.source "SeatNotifyPGearDropDownMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;

    return-object v0
.end method
