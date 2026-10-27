.class Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper$1;
.super Ljava/lang/Object;
.source "AppTipsDialogWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->changeMsgTextLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getLineCount()I

    move-result v0

    .line 88
    .local v0, "lineCount":I
    const-string v1, "AppTipsDialogWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgText getLineCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setGravity(I)V

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 95
    const/4 v1, 0x0

    return v1
.end method
