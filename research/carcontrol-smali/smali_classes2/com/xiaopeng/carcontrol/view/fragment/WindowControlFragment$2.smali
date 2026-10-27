.class Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;
.super Ljava/lang/Object;
.source "WindowControlFragment.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/view/fragment/WindowControlView$OnWinControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrontLeftChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRLWinPos(F)V

    :cond_0
    return-void
.end method

.method public onFrontRightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setFRWinPos(F)V

    :cond_0
    return-void
.end method

.method public onInterceptControl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRearLeftChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRLWinPos(F)V

    :cond_0
    return-void
.end method

.method public onRearRightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment$2;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;->access$200(Lcom/xiaopeng/carcontrol/view/fragment/WindowControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->setRRWinPos(F)V

    :cond_0
    return-void
.end method
