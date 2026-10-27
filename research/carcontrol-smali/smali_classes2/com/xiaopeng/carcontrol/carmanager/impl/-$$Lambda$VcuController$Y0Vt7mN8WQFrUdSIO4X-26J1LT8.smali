.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$Y0Vt7mN8WQFrUdSIO4X-26J1LT8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$Y0Vt7mN8WQFrUdSIO4X-26J1LT8;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    iput p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$Y0Vt7mN8WQFrUdSIO4X-26J1LT8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$Y0Vt7mN8WQFrUdSIO4X-26J1LT8;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    iget v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$Y0Vt7mN8WQFrUdSIO4X-26J1LT8;->f$1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->lambda$setDriveModeSp$3$VcuController(I)V

    return-void
.end method
