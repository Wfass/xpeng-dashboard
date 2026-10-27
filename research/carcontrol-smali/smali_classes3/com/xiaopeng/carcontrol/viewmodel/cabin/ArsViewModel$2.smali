.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;
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

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected run()V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->access$302(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;Z)Z

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsFaultState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->getArsInitState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check ars reset timeout task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ars"

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;->NO_FAULT:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFaultState;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    if-eq v1, v0, :cond_1

    :cond_0
    const-string v0, "mCheckResetTask error showToast"

    .line 62
    invoke-static {v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->ars_control_reset_error_tips:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;)V

    return-void
.end method
