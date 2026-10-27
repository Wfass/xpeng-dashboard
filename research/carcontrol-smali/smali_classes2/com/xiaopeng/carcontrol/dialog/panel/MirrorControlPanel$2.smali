.class Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;
.super Ljava/lang/Object;
.source "MirrorControlPanel.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->initFoldStatefulButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/View;",
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

    .line 328
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 331
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    if-nez p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    iget-object p1, p1, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->btn_fold_unfold:Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XStatefulToggleButtonSingle;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;->this$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->access$300(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->controlMirror(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 328
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel$2;->accept(Landroid/view/View;)V

    return-void
.end method
