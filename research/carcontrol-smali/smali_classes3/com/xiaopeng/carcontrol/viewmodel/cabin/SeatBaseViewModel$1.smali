.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$1;
.super Ljava/lang/Object;
.source "SeatBaseViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatBaseViewModel;->mRlZeroFunctionActive:Z

    return-void
.end method
