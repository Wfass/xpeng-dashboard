.class Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$5;
.super Ljava/lang/Object;
.source "MirrorControlPanel.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->onRegisterLiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrorFoldOutputState"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$5;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorFoldState()Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->access$400(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mirrorFoldOutputState"
        }
    .end annotation

    .line 547
    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$5;->onChanged(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldOutputState;)V

    return-void
.end method
