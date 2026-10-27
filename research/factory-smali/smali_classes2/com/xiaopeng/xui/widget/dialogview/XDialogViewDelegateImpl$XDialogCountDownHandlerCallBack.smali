.class Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;
.super Ljava/lang/Object;
.source "XDialogViewDelegateImpl.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XDialogCountDownHandlerCallBack"
.end annotation


# instance fields
.field private mBtnId:I

.field private mButton:Landroid/widget/TextView;

.field private mString:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Landroid/widget/TextView;I)V
    .locals 1
    .param p2, "button"    # Landroid/widget/TextView;
    .param p3, "btnId"    # I

    .line 510
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    .line 512
    iput p3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mBtnId:I

    .line 513
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1100(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$string;->x_countdown_tips:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mString:Ljava/lang/String;

    .line 514
    return-void
.end method


# virtual methods
.method public onCountDown(Ljava/lang/String;II)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "index"    # I

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mString:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    return-void
.end method

.method public onCountDownOver(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1200(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1200(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-object v1, v1, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mBtnId:I

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;->onCountDown(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v1, "onCountDown intercept onClick "

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    .line 527
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1300(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 531
    return-void
.end method

.method public onCountDownStop(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    return-void
.end method
