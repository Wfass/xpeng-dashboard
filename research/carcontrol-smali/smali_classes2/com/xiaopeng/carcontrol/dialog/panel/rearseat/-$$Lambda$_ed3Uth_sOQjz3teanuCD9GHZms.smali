.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$_ed3Uth_sOQjz3teanuCD9GHZms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$_ed3Uth_sOQjz3teanuCD9GHZms;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$_ed3Uth_sOQjz3teanuCD9GHZms;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatControlTlScene;->handleTrdRowStowStatusChange(I)V

    return-void
.end method
