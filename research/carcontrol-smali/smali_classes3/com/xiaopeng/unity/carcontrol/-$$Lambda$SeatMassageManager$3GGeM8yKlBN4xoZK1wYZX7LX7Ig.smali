.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;
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

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;->f$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$SeatMassageManager$3GGeM8yKlBN4xoZK1wYZX7LX7Ig;->f$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;

    invoke-static {v0, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->lambda$3GGeM8yKlBN4xoZK1wYZX7LX7Ig(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V

    return-void
.end method
