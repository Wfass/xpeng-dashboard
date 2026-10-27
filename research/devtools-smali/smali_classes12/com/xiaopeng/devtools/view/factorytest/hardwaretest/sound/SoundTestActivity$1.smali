.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;
.super Ljava/lang/Object;
.source "SoundTestActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->lJ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->r(II)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgressScale(I)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setMax(I)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgress(I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;->LR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    return-void
.end method
