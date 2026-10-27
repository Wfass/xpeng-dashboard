.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;
.super Ljava/lang/Object;
.source "ArsViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;-><init>()V
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

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArsAutoFoldStChange(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;Z)V

    return-void
.end method

.method public onArsFaultStateChange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsFaultStateChanged(I)V

    return-void
.end method

.method public onArsInitStChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsInitStateChanged(I)V

    return-void
.end method

.method public onArsPosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsPositionChanged(I)V

    return-void
.end method

.method public onArsWorkModeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsWorkModeChanged(I)V

    return-void
.end method

.method public onArsWorkStChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsViewModel;->handleArsWorkStateChanged(I)V

    return-void
.end method
