.class public Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "LcdDebugActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/a;


# instance fields
.field private FY:Landroid/widget/SeekBar;

.field private FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

.field private sj:Lcom/xiaopeng/devtools/presenter/factorytest/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FY:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    return-object p0
.end method


# virtual methods
.method public cl(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FY:Landroid/widget/SeekBar;

    add-int/lit8 p1, p1, -0x28

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgress(I)V

    .line 99
    return-void
.end method

.method public fd()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 32
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/b;-><init>(Lcom/xiaopeng/devtools/view/factorytest/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->sj:Lcom/xiaopeng/devtools/presenter/factorytest/a;

    .line 33
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->setContentView(I)V

    .line 34
    return-void
.end method

.method public fe()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 39
    const v0, 0x7f09024d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FY:Landroid/widget/SeekBar;

    .line 40
    const v0, 0x7f09024c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    .line 41
    return-void
.end method

.method public ff()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FY:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 64
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->sj:Lcom/xiaopeng/devtools/presenter/factorytest/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/a;->fI()V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FY:Landroid/widget/SeekBar;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FY:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->sj:Lcom/xiaopeng/devtools/presenter/factorytest/a;

    add-int/lit8 p3, p2, 0x28

    invoke-interface {p1, p3}, Lcom/xiaopeng/devtools/presenter/factorytest/a;->bW(I)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/LcdDebugActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgress(I)V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 76
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 87
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 92
    return-void
.end method
