.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$u8k-FSnrieFy6nofvcZP7RKhfi8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$u8k-FSnrieFy6nofvcZP7RKhfi8;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$u8k-FSnrieFy6nofvcZP7RKhfi8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$u8k-FSnrieFy6nofvcZP7RKhfi8;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatBaseViewModel$u8k-FSnrieFy6nofvcZP7RKhfi8;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->lambda$setEsbMode$2$SeatBaseViewModel(Z)V

    return-void
.end method
