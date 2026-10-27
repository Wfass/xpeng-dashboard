.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$dzoOMTSWY3InSmU4hGxD7w5vxgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$dzoOMTSWY3InSmU4hGxD7w5vxgk;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;

    iput p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$dzoOMTSWY3InSmU4hGxD7w5vxgk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$dzoOMTSWY3InSmU4hGxD7w5vxgk;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatDrvFragment$1$dzoOMTSWY3InSmU4hGxD7w5vxgk;->f$1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatDrvFragment$1;->lambda$onLumbarVerTouched$0$SeatDrvFragment$1(I)V

    return-void
.end method
