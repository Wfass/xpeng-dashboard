.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$1;
.super Ljava/lang/Object;
.source "SeatViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 511
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->mIsDrvRestoreSafeChairBack:Z

    return-void
.end method
