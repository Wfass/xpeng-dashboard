.class Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvmCallbackImpl;
.super Ljava/lang/Object;
.source "ServiceViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvmCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 5885
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$1;)V
    .locals 0

    .line 5885
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvmCallbackImpl;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)V

    return-void
.end method


# virtual methods
.method public onAvmWorkStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 5888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvmWorkStateChanged, state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5890
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5891
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel$AvmCallbackImpl;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISSDoorCallBack;->onAvmWorkStateChanged(I)V

    :cond_0
    return-void
.end method
