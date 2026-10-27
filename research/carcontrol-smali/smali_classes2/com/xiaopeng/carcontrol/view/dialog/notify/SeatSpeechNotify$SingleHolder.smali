.class Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify$SingleHolder;
.super Ljava/lang/Object;
.source "SeatSpeechNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static seatSpeechNotify:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify$SingleHolder;->seatSpeechNotify:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify$SingleHolder;->seatSpeechNotify:Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;

    return-object v0
.end method
