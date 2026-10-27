.class Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$4;
.super Ljava/lang/Object;
.source "SelfCheckViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->lambda$getAllFaultList$0$SelfCheckViewModel()V
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

    .line 296
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$4;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
