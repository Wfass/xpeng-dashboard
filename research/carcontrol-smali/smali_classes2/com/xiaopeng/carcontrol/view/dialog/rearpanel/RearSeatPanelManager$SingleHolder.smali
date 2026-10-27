.class Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager$SingleHolder;
.super Ljava/lang/Object;
.source "RearSeatPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/rearpanel/RearSeatPanelManager;

    return-object v0
.end method
