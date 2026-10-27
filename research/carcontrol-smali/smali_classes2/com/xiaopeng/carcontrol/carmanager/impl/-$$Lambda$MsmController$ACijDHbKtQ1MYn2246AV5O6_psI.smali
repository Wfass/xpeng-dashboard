.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$ACijDHbKtQ1MYn2246AV5O6_psI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

.field public final synthetic f$1:Landroid/car/hardware/CarPropertyValue;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$ACijDHbKtQ1MYn2246AV5O6_psI;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$ACijDHbKtQ1MYn2246AV5O6_psI;->f$1:Landroid/car/hardware/CarPropertyValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$ACijDHbKtQ1MYn2246AV5O6_psI;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MsmController$ACijDHbKtQ1MYn2246AV5O6_psI;->f$1:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/MsmController;->lambda$handleCarEventsUpdate$1$MsmController(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method
