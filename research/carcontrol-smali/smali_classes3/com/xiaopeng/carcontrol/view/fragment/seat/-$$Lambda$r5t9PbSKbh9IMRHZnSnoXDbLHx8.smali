.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$r5t9PbSKbh9IMRHZnSnoXDbLHx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$r5t9PbSKbh9IMRHZnSnoXDbLHx8;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$r5t9PbSKbh9IMRHZnSnoXDbLHx8;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatTrdRightFragment;->handleStowSuccessProcess(I)V

    return-void
.end method
