.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$Rccj5dluNTIwpOLLksegh8PzrL8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$Rccj5dluNTIwpOLLksegh8PzrL8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$Rccj5dluNTIwpOLLksegh8PzrL8;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$Rccj5dluNTIwpOLLksegh8PzrL8;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$Rccj5dluNTIwpOLLksegh8PzrL8;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/-$$Lambda$SteerControlStrategy$Rccj5dluNTIwpOLLksegh8PzrL8;

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

    check-cast p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy;->lambda$cancelControl$0(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;Lcom/xiaopeng/carcontrol/viewmodel/carsettings/SteerControlStrategy$ControlTask;)V

    return-void
.end method
