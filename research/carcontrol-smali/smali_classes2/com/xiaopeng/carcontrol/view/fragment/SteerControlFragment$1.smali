.class Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment$1;
.super Ljava/lang/Object;
.source "SteerControlFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    .line 96
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;

    iget-object p3, p3, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRootContainer setOnKeyListener, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->onSteerControl(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/16 p1, 0x3f7

    if-eq p2, p1, :cond_1

    return p3

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/view/fragment/SteerControlFragment;->mPopPageListener:Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/fragment/IPopPageInterface;->onPopControlPageEnd()V

    :cond_2
    return v0

    :cond_3
    return p3
.end method
