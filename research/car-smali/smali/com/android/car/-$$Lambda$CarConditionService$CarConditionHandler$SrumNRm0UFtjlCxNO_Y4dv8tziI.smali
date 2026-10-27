.class public final synthetic Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SrumNRm0UFtjlCxNO_Y4dv8tziI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SrumNRm0UFtjlCxNO_Y4dv8tziI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SrumNRm0UFtjlCxNO_Y4dv8tziI;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SrumNRm0UFtjlCxNO_Y4dv8tziI;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SrumNRm0UFtjlCxNO_Y4dv8tziI;->INSTANCE:Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SrumNRm0UFtjlCxNO_Y4dv8tziI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/car/hardware/CarPropertyValue;

    invoke-static {p1}, Lcom/android/car/CarConditionService$CarConditionHandler;->lambda$handleHalEvents$1(Landroid/car/hardware/CarPropertyValue;)Z

    move-result p1

    return p1
.end method
