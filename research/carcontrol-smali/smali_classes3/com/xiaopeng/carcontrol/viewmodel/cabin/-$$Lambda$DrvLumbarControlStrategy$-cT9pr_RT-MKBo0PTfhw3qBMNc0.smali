.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$DrvLumbarControlStrategy$-cT9pr_RT-MKBo0PTfhw3qBMNc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$DrvLumbarControlStrategy$-cT9pr_RT-MKBo0PTfhw3qBMNc0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$DrvLumbarControlStrategy$-cT9pr_RT-MKBo0PTfhw3qBMNc0;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$DrvLumbarControlStrategy$-cT9pr_RT-MKBo0PTfhw3qBMNc0;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$DrvLumbarControlStrategy$-cT9pr_RT-MKBo0PTfhw3qBMNc0;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$DrvLumbarControlStrategy$-cT9pr_RT-MKBo0PTfhw3qBMNc0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    check-cast p2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy$ControlTask;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy;->lambda$cancelControl$0(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;Lcom/xiaopeng/carcontrol/viewmodel/cabin/DrvLumbarControlStrategy$ControlTask;)V

    return-void
.end method
