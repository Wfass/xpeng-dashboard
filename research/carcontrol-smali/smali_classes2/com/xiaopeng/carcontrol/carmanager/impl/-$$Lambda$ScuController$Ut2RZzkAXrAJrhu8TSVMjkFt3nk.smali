.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ut2RZzkAXrAJrhu8TSVMjkFt3nk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

.field public final synthetic f$1:Landroid/car/hardware/CarPropertyValue;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ut2RZzkAXrAJrhu8TSVMjkFt3nk;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ut2RZzkAXrAJrhu8TSVMjkFt3nk;->f$1:Landroid/car/hardware/CarPropertyValue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ut2RZzkAXrAJrhu8TSVMjkFt3nk;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Ut2RZzkAXrAJrhu8TSVMjkFt3nk;->f$1:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->lambda$handleCarEventsUpdate$1$ScuController(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method
