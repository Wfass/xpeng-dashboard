.class public Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;
.super Lcom/xiaopeng/devtools/view/AppBaseActivity;
.source "CanTestActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/smartdrive/a;


# instance fields
.field private SN:Landroid/widget/TableLayout;

.field private SO:Landroid/widget/Button;

.field private SQ:Landroid/widget/TextView;

.field private SR:Landroid/widget/Button;

.field private SS:Landroid/widget/Spinner;

.field private ST:Landroid/widget/Spinner;

.field private SU:[I

.field private SV:Landroid/widget/EditText;

.field SW:I

.field private SX:I

.field private SY:Ljava/lang/String;

.field period:I

.field private uE:Lcom/xiaopeng/devtools/presenter/f/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;-><init>()V

    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SU:[I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SW:I

    .line 40
    iput v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SX:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SY:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SX:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)[I
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SU:[I

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SX:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SY:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Lcom/xiaopeng/devtools/presenter/f/c;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->uE:Lcom/xiaopeng/devtools/presenter/f/c;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Landroid/widget/Button;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SR:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SQ:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->nM()V

    return-void
.end method

.method static synthetic h(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->nN()V

    return-void
.end method

.method private init()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SN:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 70
    nop

    .line 71
    add-int/lit8 v0, v0, -0x4

    const/16 v1, 0x3f

    :goto_0
    if-ltz v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SN:Landroid/widget/TableLayout;

    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 73
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/widget/TableRow;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 74
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v5, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;

    invoke-direct {v5, p0, v4}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;Landroid/widget/Button;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    add-int/lit8 v1, v1, -0x1

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SO:Landroid/widget/Button;

    new-instance v1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$2;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SR:Landroid/widget/Button;

    new-instance v1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$3;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f030008

    const v1, 0x1090009

    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 124
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SS:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SS:Landroid/widget/Spinner;

    new-instance v2, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$4;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 145
    const v0, 0x7f030001

    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->ST:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->ST:Landroid/widget/Spinner;

    new-instance v1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$5;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SV:Landroid/widget/EditText;

    new-instance v1, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity$6;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 184
    return-void
.end method

.method private nL()V
    .locals 1

    .line 58
    const v0, 0x7f090380

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SN:Landroid/widget/TableLayout;

    .line 59
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SO:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0903b5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SQ:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0902b2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SR:Landroid/widget/Button;

    .line 62
    const v0, 0x7f090356

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SS:Landroid/widget/Spinner;

    .line 63
    const v0, 0x7f090353

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->ST:Landroid/widget/Spinner;

    .line 64
    const v0, 0x7f0901b2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SV:Landroid/widget/EditText;

    .line 65
    return-void
.end method

.method private nM()V
    .locals 3

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SU:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SU:[I

    aput v0, v2, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method private nN()V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SN:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 195
    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-ltz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->SN:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 197
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Landroid/widget/TableRow;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 198
    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 199
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const p1, 0x7f0c002d

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->setContentView(I)V

    .line 50
    new-instance p1, Lcom/xiaopeng/devtools/presenter/f/a;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/presenter/f/a;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/a;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->uE:Lcom/xiaopeng/devtools/presenter/f/c;

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->nL()V

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->init()V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onDestroy()V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;->uE:Lcom/xiaopeng/devtools/presenter/f/c;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/f/c;->onDestroy()V

    .line 208
    return-void
.end method
