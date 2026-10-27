.class public final synthetic Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$1$ncqeQTzdmqYTo4di6zmGli1j81s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;

.field private final synthetic f$1:Landroid/car/hardware/property/CarPropertyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$1$ncqeQTzdmqYTo4di6zmGli1j81s;->f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;

    iput-object p2, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$1$ncqeQTzdmqYTo4di6zmGli1j81s;->f$1:Landroid/car/hardware/property/CarPropertyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$1$ncqeQTzdmqYTo4di6zmGli1j81s;->f$0:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/wake/-$$Lambda$CarAutoWakeService$1$ncqeQTzdmqYTo4di6zmGli1j81s;->f$1:Landroid/car/hardware/property/CarPropertyEvent;

    invoke-static {v0, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;->lambda$onEvent$0(Lcom/android/car/xpeng/ai/wake/CarAutoWakeService$1;Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method
