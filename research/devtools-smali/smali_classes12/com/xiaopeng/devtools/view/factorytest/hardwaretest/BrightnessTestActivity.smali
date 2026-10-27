.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "BrightnessTestActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

.field private GA:Landroid/widget/Button;

.field private GB:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;

.field private Gu:Landroid/widget/SeekBar;

.field Gv:I

.field Gw:I

.field Gx:I

.field private Gy:Z

.field private Gz:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gy:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gy:Z

    return p0
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 42
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f10031c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->setTarget(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GB:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->fM()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GB:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->fL()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gw:I

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GB:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->fN()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gx:I

    .line 47
    return-void
.end method

.method public fe()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 52
    const v0, 0x7f090097

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    .line 53
    const v0, 0x7f090098

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    .line 54
    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gz:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0900c8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GA:Landroid/widget/Button;

    .line 56
    return-void
.end method

.method public ff()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gz:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GA:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gw:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gx:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    return-void
.end method

.method public mt()V
    .locals 2

    .line 198
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 199
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public mu()V
    .locals 2

    .line 204
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 205
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public mv()V
    .locals 0

    .line 222
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 223
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    add-int/2addr p1, v0

    .line 182
    add-int/lit8 p1, p1, 0x1

    .line 183
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gw:I

    if-gt p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    add-int/2addr p1, v0

    .line 174
    add-int/lit8 p1, p1, -0x1

    .line 175
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    if-lt p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gu:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 188
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900c7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GB:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GB:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gx:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->bZ(I)V

    .line 193
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 194
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 139
    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 140
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gy:Z

    .line 142
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GB:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a;->bZ(I)V

    .line 144
    const/4 p3, 0x0

    if-gtz p2, :cond_1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gz:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GA:Landroid/widget/Button;

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 147
    :cond_1
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gw:I

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GA:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gz:Landroid/widget/Button;

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gz:Landroid/widget/Button;

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->GA:Landroid/widget/Button;

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    iget p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->Gv:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgress(I)V

    .line 156
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 87
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    const-string v0, "back light diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/BrightnessTestActivity;)V

    const-string v2, "AdjustVolumeThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 135
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 161
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 166
    return-void
.end method
