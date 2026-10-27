.class Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager$SingleHolder;
.super Ljava/lang/Object;
.source "ControlPanelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    return-object v0
.end method
