.class Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl$SingleHolder;
.super Ljava/lang/Object;
.source "ScenarioSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl$1;)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;
    .locals 1

    .line 29
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl$SingleHolder;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;

    return-object v0
.end method
