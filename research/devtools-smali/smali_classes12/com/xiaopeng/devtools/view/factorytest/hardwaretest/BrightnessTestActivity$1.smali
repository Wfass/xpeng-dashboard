.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;
.super Ljava/lang/Object;
.source "BrightnessTestActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->lJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->r(II)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgressScale(I)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setMax(I)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgress(I)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;->GC:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    return-void
.end method
