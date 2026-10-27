.class Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XDialogPure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/XDialogPure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XDialogContentView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XDialogPure;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/app/XDialogPure;Landroid/content/Context;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    .line 286
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->access$500(Lcom/xiaopeng/xui/app/XDialogPure;)Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XDialogPure;->access$500(Lcom/xiaopeng/xui/app/XDialogPure;)Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/app/XDialogPure$OnTouchedListener;->onTouched()V

    .line 309
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 291
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onWindowFocusChanged(Z)V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onWindowFocusChanged(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 296
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/XDialogPure;->access$000(Lcom/xiaopeng/xui/app/XDialogPure;)I

    move-result p1

    const/16 v0, 0xbc0

    if-ne p1, v0, :cond_2

    .line 297
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iget v0, p1, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeMillion:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setOutTimeDismiss(I)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->this$0:Lcom/xiaopeng/xui/app/XDialogPure;

    iget-object p1, p1, Lcom/xiaopeng/xui/app/XDialogPure;->outTimeDismissHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setThemeCallback(Lapr$a;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDialogPure$XDialogContentView;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lapr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lapr;->a(Lapr$a;)V

    :cond_0
    return-void
.end method
