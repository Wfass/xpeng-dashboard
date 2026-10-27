.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatBaseScene$v3p5fq02UE_krKEIFS75h05-C4Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatBaseScene$v3p5fq02UE_krKEIFS75h05-C4Q;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatBaseScene$v3p5fq02UE_krKEIFS75h05-C4Q;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;->lambda$v3p5fq02UE_krKEIFS75h05-C4Q(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatBaseScene;Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V

    return-void
.end method
