.class Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage$1;
.super Ljava/lang/Object;
.source "XDialogMessage.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->rM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aiv:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage$1;->aiv:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage$1;->aiv:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->a(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage$1;->aiv:Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;->b(Lcom/xiaopeng/xui/widget/dialogview/XDialogMessage;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method
