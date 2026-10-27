.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;
.super Lcom/xiaopeng/devtools/view/ToolBarActivity;
.source "RadioActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;


# instance fields
.field private KY:Landroid/widget/TextView;

.field private KZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

.field private La:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

.field private Lb:Landroid/widget/TextView;

.field private Lc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

.field private Ld:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

.field private Le:Landroid/widget/TextView;

.field private Lf:Landroid/widget/TextView;

.field private Lg:Landroid/widget/Button;

.field private Lh:Landroid/widget/Button;

.field private Li:Landroid/widget/Button;

.field private Lj:Landroid/widget/Button;

.field private Lk:Landroid/widget/Button;

.field private Ll:Landroid/widget/Button;

.field private Lm:Landroid/widget/Button;

.field private Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

.field public Lo:I

.field private Lp:I

.field mHandler:Landroid/os/Handler;

.field xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KY:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->La:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 28
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lb:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 30
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ld:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 34
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lf:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lg:Landroid/widget/Button;

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lh:Landroid/widget/Button;

    .line 37
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Li:Landroid/widget/Button;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    .line 53
    const v0, 0x155cc

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    .line 54
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    .line 196
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->mHandler:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$3;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lf:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KY:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lb:Landroid/widget/TextView;

    return-object p0
.end method

.method private dI()V
    .locals 3

    .line 74
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->xc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;-><init>(Landroid/content/Context;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jj()V

    .line 76
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Le:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public di(I)V
    .locals 3

    .line 318
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lg:Landroid/widget/Button;

    const v2, 0x7f10026d

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 320
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setEnabled(Z)V

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->La:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setEnabled(Z)V

    .line 322
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setEnabled(Z)V

    .line 323
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ld:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setEnabled(Z)V

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lg:Landroid/widget/Button;

    const v2, 0x7f100271

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 326
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setEnabled(Z)V

    .line 327
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->La:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setEnabled(Z)V

    .line 328
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setEnabled(Z)V

    .line 329
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ld:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setEnabled(Z)V

    .line 331
    :goto_0
    return-void
.end method

.method public dj(I)Z
    .locals 2

    .line 334
    const/4 v0, 0x0

    const v1, 0x1a5e0

    if-le p1, v1, :cond_0

    .line 335
    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    .line 336
    return v0

    .line 337
    :cond_0
    const v1, 0x155cc

    if-ge p1, v1, :cond_1

    .line 338
    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    .line 339
    return v0

    .line 341
    :cond_1
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    .line 342
    const/4 p1, 0x1

    return p1
.end method

.method public dk(I)Z
    .locals 2

    .line 346
    const/4 v0, 0x0

    const/16 v1, 0x6ae

    if-le p1, v1, :cond_0

    .line 347
    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    .line 348
    return v0

    .line 349
    :cond_0
    const/16 v1, 0x20a

    if-ge p1, v1, :cond_1

    .line 350
    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    .line 351
    return v0

    .line 353
    :cond_1
    iput p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    .line 354
    const/4 p1, 0x1

    return p1
.end method

.method public fd()V
    .locals 1

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fd()V

    .line 68
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->setContentView(I)V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dI()V

    .line 70
    const v0, 0x7f10033f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->setTarget(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public fe()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fe()V

    .line 81
    const v0, 0x7f09043e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KY:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 83
    const v0, 0x7f0900dd

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->La:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 85
    const v0, 0x7f0903f8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Le:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f09043b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lb:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0900c3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 89
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ld:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    .line 91
    const v0, 0x7f090146

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lj:Landroid/widget/Button;

    .line 92
    const v0, 0x7f090147

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lk:Landroid/widget/Button;

    .line 93
    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lm:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0900e5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ll:Landroid/widget/Button;

    .line 96
    const v0, 0x7f090441

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lf:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lh:Landroid/widget/Button;

    .line 98
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Li:Landroid/widget/Button;

    .line 99
    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lg:Landroid/widget/Button;

    .line 100
    return-void
.end method

.method public ff()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->ff()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KZ:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setLongClickRepeatListener(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->La:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->La:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setLongClickRepeatListener(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lc:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setLongClickRepeatListener(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ld:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ld:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->setLongClickRepeatListener(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$a;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lh:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Li:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method public lJ()V
    .locals 6

    .line 104
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->lJ()V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->KY:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lb:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 114
    return-void
.end method

.method public mt()V
    .locals 2

    .line 267
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mt()V

    .line 268
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090129

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public mu()V
    .locals 2

    .line 273
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mu()V

    .line 274
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090129

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 275
    return-void
.end method

.method public mv()V
    .locals 0

    .line 279
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->mv()V

    .line 280
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onClick(Landroid/view/View;)V

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 180
    :sswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jo()V

    .line 182
    goto/16 :goto_0

    .line 176
    :sswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jp()V

    .line 177
    goto :goto_0

    .line 169
    :sswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->stopScan()V

    .line 170
    goto :goto_0

    .line 165
    :sswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->gL()V

    .line 166
    goto :goto_0

    .line 188
    :sswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->searchStationUp()Z

    .line 189
    goto :goto_0

    .line 184
    :sswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->searchStationDown()Z

    .line 185
    goto :goto_0

    .line 147
    :sswitch_6
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    add-int/lit8 p1, p1, 0x64

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dj(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    goto :goto_0

    .line 141
    :sswitch_7
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    add-int/lit8 p1, p1, -0x64

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dj(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    goto :goto_0

    .line 172
    :sswitch_8
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jn()V

    .line 173
    goto :goto_0

    .line 159
    :sswitch_9
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    goto :goto_0

    .line 153
    :sswitch_a
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    add-int/lit8 p1, p1, -0x9

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    .line 194
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900c3 -> :sswitch_a
        0x7f0900c4 -> :sswitch_9
        0x7f0900d0 -> :sswitch_8
        0x7f0900dc -> :sswitch_7
        0x7f0900dd -> :sswitch_6
        0x7f0900e1 -> :sswitch_5
        0x7f0900e5 -> :sswitch_4
        0x7f0900ea -> :sswitch_3
        0x7f0900eb -> :sswitch_2
        0x7f090146 -> :sswitch_1
        0x7f090147 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onDestroy()V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->jm()V

    .line 286
    return-void
.end method

.method public repeatAction(Landroid/view/View;)V
    .locals 2

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 298
    :sswitch_0
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    add-int/lit8 p1, p1, 0x64

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dj(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    goto :goto_0

    .line 292
    :sswitch_1
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    add-int/lit8 p1, p1, -0x64

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dj(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lo:I

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    goto :goto_0

    .line 310
    :sswitch_2
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    goto :goto_0

    .line 304
    :sswitch_3
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    add-int/lit8 p1, p1, -0x9

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->dk(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Ln:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->Lp:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h/a;->q(II)V

    .line 315
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900c3 -> :sswitch_3
        0x7f0900c4 -> :sswitch_2
        0x7f0900dc -> :sswitch_1
        0x7f0900dd -> :sswitch_0
    .end sparse-switch
.end method
