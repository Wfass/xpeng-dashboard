.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "SoundTestActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;


# instance fields
.field private FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

.field private Gy:Z

.field private LH:Landroid/widget/TextView;

.field private LI:Landroid/widget/TextView;

.field private LJ:Landroid/widget/TextView;

.field private LK:Landroid/widget/Button;

.field private LL:Landroid/widget/Button;

.field private LM:Landroid/widget/SeekBar;

.field private LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

.field private LO:I

.field private LP:I

.field private LQ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->Gy:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LM:Landroid/widget/SeekBar;

    return-object p0
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 1

    .line 190
    if-eqz p2, :cond_0

    .line 191
    const p2, 0x7f100349

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060012

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 194
    :cond_0
    const p2, 0x7f100333

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060016

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LO:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->Gy:Z

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LP:I

    return p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LJ:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public dm(Ljava/lang/String;)V
    .locals 1

    .line 242
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$3;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method public fd()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 45
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->setContentView(I)V

    .line 46
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;->getCurrentMediaVolume()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LO:I

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;->getMediaMaxVolume()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LP:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LQ:I

    .line 50
    const v0, 0x7f100347

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->setTarget(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public fe()V
    .locals 1

    .line 55
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 56
    const v0, 0x7f090276

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LM:Landroid/widget/SeekBar;

    .line 57
    const v0, 0x7f0902fa

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LH:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0902f9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LI:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f090416

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LJ:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f09034c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LK:Landroid/widget/Button;

    .line 61
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LL:Landroid/widget/Button;

    .line 62
    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    .line 63
    return-void
.end method

.method public ff()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LM:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LL:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 68
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    const v0, 0x7f090349

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    const v0, 0x7f090347

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    const v0, 0x7f09034b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v0, 0x7f09034a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LM:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LP:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LQ:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LM:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LO:I

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LQ:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LM:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;->js()V

    .line 89
    return-void
.end method

.method public mt()V
    .locals 2

    .line 201
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 202
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 203
    return-void
.end method

.method public mu()V
    .locals 2

    .line 207
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 208
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 209
    return-void
.end method

.method public mv()V
    .locals 0

    .line 213
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 214
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900bf

    if-eq p1, v0, :cond_1

    const v0, 0x7f09034c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

    const v0, 0x7f0f0004

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;->cg(I)V

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LJ:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;->js()V

    .line 163
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LO:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;->destroy(I)V

    .line 237
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 238
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 218
    const-string p1, "SoundTest"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    if-eqz p3, :cond_0

    .line 220
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->Gy:Z

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;

    iget p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LQ:I

    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;->onVolumeChanged(II)V

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->FZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/AdjustIndicator;->setProgress(I)V

    .line 224
    return-void
.end method

.method public onResult(Landroid/view/View;)V
    .locals 4

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f1002c5

    const v1, 0x7f1002c7

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 178
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LH:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v3, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 180
    goto :goto_0

    .line 183
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LH:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LI:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v3, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 170
    goto :goto_0

    .line 173
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->LI:Landroid/widget/TextView;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 175
    nop

    .line 187
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090347
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 102
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    const-string v0, "sound diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/SoundTestActivity;)V

    const-string v2, "AdjustVolumeThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 228
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 232
    return-void
.end method
