.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$LmmlNruMav2ta4pFQhk0CHp7MH4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

.field public final synthetic f$1:Landroid/car/hardware/CarPropertyValue;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$LmmlNruMav2ta4pFQhk0CHp7MH4;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$LmmlNruMav2ta4pFQhk0CHp7MH4;->f$1:Landroid/car/hardware/CarPropertyValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$LmmlNruMav2ta4pFQhk0CHp7MH4;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$LmmlNruMav2ta4pFQhk0CHp7MH4;->f$1:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->lambda$handleCarEventsUpdate$1$BcmController(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method
