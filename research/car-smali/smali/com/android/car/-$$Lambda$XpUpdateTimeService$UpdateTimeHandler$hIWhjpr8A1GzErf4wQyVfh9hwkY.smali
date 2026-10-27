.class public final synthetic Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$hIWhjpr8A1GzErf4wQyVfh9hwkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/XpUpdateTimeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/XpUpdateTimeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$hIWhjpr8A1GzErf4wQyVfh9hwkY;->f$0:Lcom/android/car/XpUpdateTimeService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$XpUpdateTimeService$UpdateTimeHandler$hIWhjpr8A1GzErf4wQyVfh9hwkY;->f$0:Lcom/android/car/XpUpdateTimeService;

    check-cast p1, Landroid/car/hardware/CarPropertyValue;

    invoke-static {v0, p1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->lambda$handleVhalEvents$2(Lcom/android/car/XpUpdateTimeService;Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method
