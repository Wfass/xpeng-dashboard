.class Lcom/xiaopeng/xui/widget/dialogview/d$1;
.super Ljava/lang/Object;
.source "XDialogViewDelegateImpl.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/dialogview/d;->p(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiP:Lcom/xiaopeng/xui/widget/dialogview/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/d;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$1;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$1;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;)V

    .line 99
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$1;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->b(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$1;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/dialogview/d;->b(Lcom/xiaopeng/xui/widget/dialogview/d;)Lcom/xiaopeng/xui/widget/dialogview/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/dialogview/a;->stop()V

    .line 106
    :cond_0
    return-void
.end method
