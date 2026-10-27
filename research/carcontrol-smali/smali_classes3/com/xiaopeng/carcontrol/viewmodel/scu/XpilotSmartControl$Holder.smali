.class Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl$Holder;
.super Ljava/lang/Object;
.source "XpilotSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl$Holder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl$Holder;->sInstance:Lcom/xiaopeng/carcontrol/viewmodel/scu/XpilotSmartControl;

    return-object v0
.end method
