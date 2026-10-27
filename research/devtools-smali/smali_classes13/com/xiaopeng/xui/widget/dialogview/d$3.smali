.class Lcom/xiaopeng/xui/widget/dialogview/d$3;
.super Ljava/lang/Object;
.source "XDialogViewDelegateImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/dialogview/d;->bn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

.field final synthetic aiQ:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/d;Z)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$3;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/dialogview/d$3;->aiQ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$3;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/d;->i(Lcom/xiaopeng/xui/widget/dialogview/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/d$3;->aiP:Lcom/xiaopeng/xui/widget/dialogview/d;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/dialogview/d$3;->aiQ:Z

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/d;->a(Lcom/xiaopeng/xui/widget/dialogview/d;Z)V

    .line 252
    const/4 v0, 0x1

    return v0
.end method
