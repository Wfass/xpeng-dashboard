.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$uOmaAaPBJRGHmAasa0O0Vm_sPXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$uOmaAaPBJRGHmAasa0O0Vm_sPXM;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$uOmaAaPBJRGHmAasa0O0Vm_sPXM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$uOmaAaPBJRGHmAasa0O0Vm_sPXM;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$uOmaAaPBJRGHmAasa0O0Vm_sPXM;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->lambda$showLowBeamOffConfirmDialog$7$LampViewModel(Z)V

    return-void
.end method
