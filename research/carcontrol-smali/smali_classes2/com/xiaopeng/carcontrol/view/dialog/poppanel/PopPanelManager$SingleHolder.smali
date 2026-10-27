.class Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager$SingleHolder;
.super Ljava/lang/Object;
.source "PopPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static sInstance:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager$SingleHolder;->sInstance:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    return-object v0
.end method
