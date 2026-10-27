.class public final synthetic Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SpgO1lyyyCxDvWFgWBPNWniwyE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarConditionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarConditionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SpgO1lyyyCxDvWFgWBPNWniwyE4;->f$0:Lcom/android/car/CarConditionService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarConditionService$CarConditionHandler$SpgO1lyyyCxDvWFgWBPNWniwyE4;->f$0:Lcom/android/car/CarConditionService;

    check-cast p1, Landroid/car/hardware/CarPropertyValue;

    invoke-static {v0, p1}, Lcom/android/car/CarConditionService$CarConditionHandler;->lambda$handleHalEvents$2(Lcom/android/car/CarConditionService;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method
