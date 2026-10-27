.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$2nh4X7s5YUqxeSz43yNWpo4XFSI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$2nh4X7s5YUqxeSz43yNWpo4XFSI;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/space/-$$Lambda$2nh4X7s5YUqxeSz43yNWpo4XFSI;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/space/VipSeatControl;->onRearSeatOccupied(Z)V

    return-void
.end method
