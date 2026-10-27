.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "USBTestActivity.java"


# instance fields
.field private AH:Ljava/lang/String;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

.field private HA:Landroid/widget/TextView;

.field private HB:Landroid/widget/TextView;

.field private HC:Landroid/widget/TextView;

.field private HD:Landroid/widget/TextView;

.field private HE:Landroid/widget/TextView;

.field private HF:Landroid/widget/TextView;

.field private HG:Landroid/widget/TextView;

.field private HH:Landroid/widget/TextView;

.field private HI:Landroid/widget/TextView;

.field private HJ:Landroid/widget/TextView;

.field private HK:Landroid/widget/TextView;

.field private HL:Landroid/widget/TextView;

.field private HM:Landroid/widget/TextView;

.field private HN:Landroid/widget/TextView;

.field private HO:Landroid/widget/Button;

.field private HP:Landroid/widget/Button;

.field private HQ:I

.field private HR:Z

.field private HS:I

.field private HT:I

.field private Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

.field private Hx:Landroid/widget/TextView;

.field private Hy:Landroid/widget/TextView;

.field private Hz:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 40
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    .line 52
    const/4 v0, -0x3

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HQ:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HR:Z

    .line 54
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HS:I

    .line 55
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HT:I

    .line 64
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HP:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->AH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 295
    invoke-static {p4, p5}, Lcom/xiaopeng/devtools/utils/g;->L(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;

    move-result-object v2

    .line 296
    new-instance p4, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;

    move-object v0, p4

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    invoke-static {p4}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method private a(ZLjava/lang/String;Landroid/widget/TextView;)V
    .locals 1

    .line 337
    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1060012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 339
    const p1, 0x7f100349

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const/4 p1, 0x1

    const-string p3, ""

    invoke-virtual {p0, p2, p1, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1060016

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    const p1, 0x7f100333

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const/4 p1, 0x0

    const-string p3, ""

    invoke-virtual {p0, p2, p1, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 347
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->my()V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->AH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Lcom/xiaopeng/devtools/system/a/b;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HG:Landroid/widget/TextView;

    return-object p0
.end method

.method private e(IZ)V
    .locals 1

    .line 317
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    const p1, 0x7f1001d1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HA:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(ZLjava/lang/String;Landroid/widget/TextView;)V

    goto :goto_0

    .line 327
    :pswitch_1
    const p1, 0x7f1000fd

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hz:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(ZLjava/lang/String;Landroid/widget/TextView;)V

    .line 328
    goto :goto_0

    .line 323
    :pswitch_2
    const p1, 0x7f10012c

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hy:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(ZLjava/lang/String;Landroid/widget/TextView;)V

    .line 324
    goto :goto_0

    .line 319
    :pswitch_3
    const p1, 0x7f100143

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hx:Landroid/widget/TextView;

    invoke-direct {p0, p2, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(ZLjava/lang/String;Landroid/widget/TextView;)V

    .line 320
    nop

    .line 334
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HH:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HI:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HJ:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    return-object p0
.end method

.method private my()V
    .locals 6

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HR:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->gd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->fX()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->e(IZ)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->ge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->fY()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->e(IZ)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->gf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->fZ()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->e(IZ)V

    .line 109
    :cond_2
    const-string v0, "USBTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaHasCheck()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->gg()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->gg()Z

    move-result v0

    if-nez v0, :cond_5

    .line 111
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->ga()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->e(IZ)V

    goto :goto_1

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->gb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HS:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HS:I

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HD:Landroid/widget/TextView;

    const v3, 0x7f10043a

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HS:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_4
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HT:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HT:I

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HE:Landroid/widget/TextView;

    const v3, 0x7f100438

    new-array v4, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HF:Landroid/widget/TextView;

    const v3, 0x7f10043c

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HT:I

    iget v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HS:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 135
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->setContentView(I)V

    .line 136
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    .line 137
    const v0, 0x7f10034e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->setTarget(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public fe()V
    .locals 1

    .line 142
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 143
    const v0, 0x7f0902ec

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hx:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0902eb

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hy:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0902ea

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Hz:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0902ed

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HA:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0900b9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HO:Landroid/widget/Button;

    .line 148
    const v0, 0x7f090423

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HD:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f090422

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HE:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f090424

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HF:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0901cf

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HB:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0901ae

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HC:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0900ba

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HP:Landroid/widget/Button;

    .line 154
    const v0, 0x7f090425

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HG:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f090426

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HH:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f090429

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HI:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f09042a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HJ:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f090428

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HK:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f090427

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HL:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f09042c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HM:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f09042b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HN:Landroid/widget/TextView;

    .line 162
    return-void
.end method

.method public ff()V
    .locals 2

    .line 199
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 203
    new-instance v0, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "USBTestActivity"

    const-string v1, "setViewListener register StorageEventListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 166
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->Eq:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d;->iL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HB:Landroid/widget/TextView;

    const v1, 0x7f10012c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HC:Landroid/widget/TextView;

    const v1, 0x7f100268

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HK:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HG:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HL:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HH:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HM:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HI:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HN:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HJ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    const-string v0, "SUPPORT_USB_DVR"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const v0, 0x7f09023d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_1
    const-string v0, "SUPPORT_USB_ICM"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    const v0, 0x7f09023c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HP:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->AH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->my()V

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 192
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method

.method public mt()V
    .locals 2

    .line 279
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09013a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 280
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 281
    return-void
.end method

.method public mu()V
    .locals 2

    .line 285
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09013a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 286
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 287
    return-void
.end method

.method public mv()V
    .locals 0

    .line 291
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 292
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 221
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 230
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/devtools/utils/u;->lD()Z

    move-result p1

    if-nez p1, :cond_0

    .line 231
    return-void

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HK:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HG:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HL:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HH:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HM:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HI:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HN:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HJ:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HG:Landroid/widget/TextView;

    const v1, 0x7f10034c

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HG:Landroid/widget/TextView;

    const v2, -0xbbbbbc

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HH:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HH:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HI:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HI:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HJ:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HJ:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HP:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    new-instance p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$3;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 265
    goto :goto_0

    .line 224
    :pswitch_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HR:Z

    .line 225
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HD:Landroid/widget/TextView;

    const v2, 0x7f10043a

    new-array v3, p1, [Ljava/lang/Object;

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HE:Landroid/widget/TextView;

    const v2, 0x7f100438

    new-array v3, p1, [Ljava/lang/Object;

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HF:Landroid/widget/TextView;

    const v2, 0x7f10043c

    new-array p1, p1, [Ljava/lang/Object;

    iget v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HT:I

    iget v4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->HS:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v0

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    nop

    .line 269
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900b9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 127
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->AH:Ljava/lang/String;

    .line 128
    const-string v0, "USBTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate mStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->AH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 351
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 356
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 212
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 213
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 214
    const-string v0, "usb diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 273
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onStop()V

    .line 274
    return-void
.end method
