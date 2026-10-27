.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "PhyTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;


# instance fields
.field private KE:Landroid/widget/TextView;

.field private KJ:Landroid/widget/TextView;

.field private KK:Landroid/widget/TextView;

.field private KL:Landroid/widget/TextView;

.field private KM:Landroid/widget/EditText;

.field private KN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;

.field private Ky:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic az(Z)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->Ky:Landroid/widget/Button;

    const v1, 0x7f100317

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KE:Landroid/widget/TextView;

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KE:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KE:Landroid/widget/TextView;

    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KE:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    :goto_0
    return-void
.end method

.method private synthetic dc(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KL:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic dd(I)V
    .locals 1

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KK:Landroid/widget/TextView;

    const v0, 0x7f10024c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KK:Landroid/widget/TextView;

    const v0, 0x7f100246

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 124
    goto :goto_0

    .line 126
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KK:Landroid/widget/TextView;

    const v0, 0x7f100249

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 127
    nop

    .line 132
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic de(I)V
    .locals 1

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KJ:Landroid/widget/TextView;

    const v0, 0x7f10024b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 109
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KJ:Landroid/widget/TextView;

    const v0, 0x7f100245

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 110
    goto :goto_0

    .line 106
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KJ:Landroid/widget/TextView;

    const v0, 0x7f10024d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 107
    nop

    .line 115
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$U82LO0xuAIhiesUNQrQxncfMJBg(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->az(Z)V

    return-void
.end method

.method public static synthetic lambda$XnDttHNslP_gHseZtDI9RhO9its(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->de(I)V

    return-void
.end method

.method public static synthetic lambda$_kt_OlCe3TnPHYskJAjhr-ZcS-Q(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->dd(I)V

    return-void
.end method

.method public static synthetic lambda$yX_P11HHNl8v5eiXQzrmPmkceFk(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->dc(I)V

    return-void
.end method


# virtual methods
.method public ay(Z)V
    .locals 1

    .line 142
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/-$$Lambda$PhyTestActivity$U82LO0xuAIhiesUNQrQxncfMJBg;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/-$$Lambda$PhyTestActivity$U82LO0xuAIhiesUNQrQxncfMJBg;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method public cZ(I)V
    .locals 1

    .line 103
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/-$$Lambda$PhyTestActivity$XnDttHNslP_gHseZtDI9RhO9its;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/-$$Lambda$PhyTestActivity$XnDttHNslP_gHseZtDI9RhO9its;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public da(I)V
    .locals 1

    .line 120
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/-$$Lambda$PhyTestActivity$_kt_OlCe3TnPHYskJAjhr-ZcS-Q;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/-$$Lambda$PhyTestActivity$_kt_OlCe3TnPHYskJAjhr-ZcS-Q;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public db(I)V
    .locals 1

    .line 137
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/-$$Lambda$PhyTestActivity$yX_P11HHNl8v5eiXQzrmPmkceFk;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/-$$Lambda$PhyTestActivity$yX_P11HHNl8v5eiXQzrmPmkceFk;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public fd()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 30
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f10033c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->setTarget(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;

    .line 33
    return-void
.end method

.method public fe()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 38
    const v0, 0x7f09025a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KJ:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f090273

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KK:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f09035d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KL:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0902f1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KE:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0901c6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KM:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f0902b4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->Ky:Landroid/widget/Button;

    .line 44
    return-void
.end method

.method public ff()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->Ky:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 49
    return-void
.end method

.method public mt()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 89
    return-void
.end method

.method public mu()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 94
    return-void
.end method

.method public mv()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 99
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902b4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->Ky:Landroid/widget/Button;

    const v0, 0x7f100352

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KM:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->cb(Ljava/lang/String;)V

    .line 80
    nop

    .line 84
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->jc()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->jd()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->KN:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f/a;->jb()V

    .line 63
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    const-string v0, "ethernet diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/phy/PhyTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method
