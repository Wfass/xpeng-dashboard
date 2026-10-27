.class public final synthetic Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$u63IPi8ktvctdZ1qrfhToXUdYhU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$u63IPi8ktvctdZ1qrfhToXUdYhU;->f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$u63IPi8ktvctdZ1qrfhToXUdYhU;->f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v0}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->lambda$handlePowerOffSourceChanged$0(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;)V

    return-void
.end method
