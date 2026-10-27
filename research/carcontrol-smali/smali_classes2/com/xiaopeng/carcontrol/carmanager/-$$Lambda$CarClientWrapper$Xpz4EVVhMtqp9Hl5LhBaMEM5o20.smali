.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$Xpz4EVVhMtqp9Hl5LhBaMEM5o20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

.field public final synthetic f$1:Landroid/car/Car;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;Landroid/car/Car;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$Xpz4EVVhMtqp9Hl5LhBaMEM5o20;->f$0:Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$Xpz4EVVhMtqp9Hl5LhBaMEM5o20;->f$1:Landroid/car/Car;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$Xpz4EVVhMtqp9Hl5LhBaMEM5o20;->f$0:Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$Xpz4EVVhMtqp9Hl5LhBaMEM5o20;->f$1:Landroid/car/Car;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->lambda$createCarController$2(Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;Landroid/car/Car;)V

    return-void
.end method
