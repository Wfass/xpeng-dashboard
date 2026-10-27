.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mScuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getScuRearMirrorControlState()I

    move-result v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScuMirrorTask: lastMirrorCtrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentMirrorCtrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceViewModel"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1200(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iget-object v1, v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlMirror(Z)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1202(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;I)I

    return-void
.end method
