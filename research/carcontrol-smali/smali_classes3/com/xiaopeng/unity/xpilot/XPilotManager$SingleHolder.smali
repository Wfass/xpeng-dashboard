.class Lcom/xiaopeng/unity/xpilot/XPilotManager$SingleHolder;
.super Ljava/lang/Object;
.source "XPilotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/xpilot/XPilotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/unity/xpilot/XPilotManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2266
    new-instance v0, Lcom/xiaopeng/unity/xpilot/XPilotManager;

    invoke-direct {v0}, Lcom/xiaopeng/unity/xpilot/XPilotManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/unity/xpilot/XPilotManager$SingleHolder;->instance:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/xpilot/XPilotManager;
    .locals 1

    .line 2265
    sget-object v0, Lcom/xiaopeng/unity/xpilot/XPilotManager$SingleHolder;->instance:Lcom/xiaopeng/unity/xpilot/XPilotManager;

    return-object v0
.end method
