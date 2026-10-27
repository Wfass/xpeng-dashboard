.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$1;
.super Ljava/lang/Object;
.source "QsPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 182
    const-string v0, "QsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 184
    const v1, 0x7f0e00b5

    goto :goto_0

    :cond_0
    const v1, 0x7f0e00b4

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    .line 185
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;)I

    move-result v3

    .line 183
    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/ToastUtil;->showToast(Landroid/content/Context;III)V

    .line 186
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->setWSControlStatus(Z)V

    .line 187
    return-void
.end method
