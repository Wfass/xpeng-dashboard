.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$1;
.super Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;
.source "ArsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->access$002(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;Z)Z

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsInitState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check ars init timeout task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ars"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    if-eq v0, v1, :cond_0

    const-string v0, "mCheckInitTask error showToast"

    .line 46
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_init_error_tips:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    return-void
.end method
