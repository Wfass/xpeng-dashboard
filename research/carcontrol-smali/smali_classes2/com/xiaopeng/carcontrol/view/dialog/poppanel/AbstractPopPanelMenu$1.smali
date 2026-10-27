.class Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu$1;
.super Landroid/os/CountDownTimer;
.source "AbstractPopPanelMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->startAutoCloseTask(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "x0",
            "x1"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTick$0$AbstractPopPanelMenu$1(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->access$100(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;J)V

    return-void
.end method

.method public onFinish()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->dismiss()V

    return-void
.end method

.method public onTick(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->access$000(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$AbstractPopPanelMenu$1$gbKlNOrs7eVbJvf-anHqlq0Slqg;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/-$$Lambda$AbstractPopPanelMenu$1$gbKlNOrs7eVbJvf-anHqlq0Slqg;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu$1;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
