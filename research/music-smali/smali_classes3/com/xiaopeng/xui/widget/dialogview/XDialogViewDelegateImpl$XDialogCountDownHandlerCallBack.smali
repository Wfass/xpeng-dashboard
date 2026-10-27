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
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    .line 556
    iput p3, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mBtnId:I

    .line 557
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1200(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lbyg$l;->x_countdown_tips:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCountDown(Ljava/lang/String;II)V
    .locals 3

    .line 562
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mString:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    instance-of p3, p2, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz p3, :cond_0

    .line 564
    check-cast p2, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {p2, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCountDownOver(Ljava/lang/String;)V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1300(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 572
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1300(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->mXDelegator:Lcom/xiaopeng/xui/widget/dialogview/XDialogView;

    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mBtnId:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewInterface$OnCountDownListener;->onCountDown(Lcom/xiaopeng/xui/widget/dialogview/XDialogView;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 573
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    const-string v0, "onCountDown intercept onClick "

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$500(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Ljava/lang/String;)V

    return-void

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1400(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCountDownStop(Ljava/lang/String;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$XDialogCountDownHandlerCallBack;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
