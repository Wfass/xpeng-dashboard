.class Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$1;
.super Ljava/lang/Object;
.source "VcuBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

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

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;I)V

    return-void
.end method
