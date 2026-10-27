.class Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$3;
.super Ljava/lang/Object;
.source "XDialogViewDelegateImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->setCloseVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Z)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$3;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$3;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$3;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$900(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$3;->this$0:Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl$3;->val$show:Z

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;->access$1000(Lcom/xiaopeng/xui/widget/dialogview/XDialogViewDelegateImpl;Z)V

    const/4 v0, 0x1

    return v0
.end method
