.class Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$2;
.super Ljava/lang/Object;
.source "AbstractPanel.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->initPanelListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->access$300(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->access$400(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLocalFocus(ZZ)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->access$502(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;Z)Z

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel$2;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;->access$300(Lcom/xiaopeng/carcontrol/view/dialog/AbstractPanel;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
