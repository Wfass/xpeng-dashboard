.class Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$2;
.super Ljava/lang/Object;
.source "SelfCheckViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIgStatusChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 280
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isChecking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 281
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->stopSelfCheck()V

    :cond_0
    return-void
.end method
