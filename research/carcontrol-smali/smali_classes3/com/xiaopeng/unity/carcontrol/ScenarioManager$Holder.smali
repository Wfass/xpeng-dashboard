.class Lcom/xiaopeng/unity/carcontrol/ScenarioManager$Holder;
.super Ljava/lang/Object;
.source "ScenarioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/ScenarioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 411
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;)V

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/unity/carcontrol/ScenarioManager;
    .locals 1

    .line 410
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$Holder;->INSTANCE:Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    return-object v0
.end method
