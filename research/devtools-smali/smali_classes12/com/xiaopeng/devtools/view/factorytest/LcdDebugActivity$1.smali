.class Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;
.super Ljava/lang/Object;
.source "LcdDebugActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->lJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ga:Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;->Ga:Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;->Ga:Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;->Ga:Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;->Ga:Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->r(II)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;->Ga:Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgressScale(I)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;->Ga:Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setMax(I)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;->Ga:Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 56
    return-void
.end method
