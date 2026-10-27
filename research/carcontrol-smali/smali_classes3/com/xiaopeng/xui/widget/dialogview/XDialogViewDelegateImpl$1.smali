.class Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$1;
.super Ljava/lang/Object;
.source "XDialogViewDelegateImpl.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$1;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$1;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$000(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$1;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$100(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$1;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$100(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Lcom/xiaopeng/xui/widget/dialogview/XCountDown;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->stop()V

    :cond_0
    return-void
.end method
