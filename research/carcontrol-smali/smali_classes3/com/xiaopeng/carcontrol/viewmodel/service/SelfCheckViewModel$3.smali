.class Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$3;
.super Ljava/lang/Object;
.source "SelfCheckViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;


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

    .line 287
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public oAutoSelfCheckStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
