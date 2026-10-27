.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$G83SEFF-nHVHxzXXMZW7Jn7DcZk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$G83SEFF-nHVHxzXXMZW7Jn7DcZk;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;

    iput p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$G83SEFF-nHVHxzXXMZW7Jn7DcZk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$G83SEFF-nHVHxzXXMZW7Jn7DcZk;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/seat/-$$Lambda$SeatRRFragment$1$G83SEFF-nHVHxzXXMZW7Jn7DcZk;->f$1:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/view/fragment/seat/SeatRRFragment$1;->lambda$onLumbarHorTouched$2$SeatRRFragment$1(I)V

    return-void
.end method
