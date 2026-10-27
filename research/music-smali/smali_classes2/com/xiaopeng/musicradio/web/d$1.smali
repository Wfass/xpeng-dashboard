.class Lcom/xiaopeng/musicradio/web/d$1;
.super Ljava/lang/Object;
.source "WebViewBaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/web/d;->a(Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnDismissListener;

.field final synthetic b:Lcom/xiaopeng/musicradio/web/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/web/d;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/d$1;->b:Lcom/xiaopeng/musicradio/web/d;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/web/d$1;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d$1;->b:Lcom/xiaopeng/musicradio/web/d;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/web/d;->a:Lcom/xiaopeng/musicradio/widget/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/g;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v3, "mOnWindowDismissedCallback"

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v3, "mOnWindowSwipeDismissedCallback"

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d$1;->b:Lcom/xiaopeng/musicradio/web/d;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/d;->a(Lcom/xiaopeng/musicradio/web/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d$1;->b:Lcom/xiaopeng/musicradio/web/d;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/d;->a(Lcom/xiaopeng/musicradio/web/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d$1;->b:Lcom/xiaopeng/musicradio/web/d;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/web/d;->a(Lcom/xiaopeng/musicradio/web/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/d$1;->a:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_2
    return-void
.end method
