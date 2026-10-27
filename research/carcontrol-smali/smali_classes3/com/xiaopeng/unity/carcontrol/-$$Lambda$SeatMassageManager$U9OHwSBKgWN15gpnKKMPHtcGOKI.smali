.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$U9OHwSBKgWN15gpnKKMPHtcGOKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$U9OHwSBKgWN15gpnKKMPHtcGOKI;->f$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$U9OHwSBKgWN15gpnKKMPHtcGOKI;->f$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;

    invoke-static {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->lambda$U9OHwSBKgWN15gpnKKMPHtcGOKI(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatRhythm;)V

    return-void
.end method
