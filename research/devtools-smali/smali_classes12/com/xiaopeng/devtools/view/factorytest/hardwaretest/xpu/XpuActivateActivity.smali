.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "XpuActivateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;


# instance fields
.field private DT:Lcom/xiaopeng/xui/app/c;

.field private OE:Landroid/widget/TextView;

.field private OF:Landroid/widget/Button;

.field private OG:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$d809lz9DeqMN2MAZXelUb19NRj8(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->r(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$lfkXwy-4A0DRqFb73qM01vb0cuQ(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->s(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$qOrIht6dYZwqo_XQFKD14BWpKcg(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->s(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method private nv()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v1, 0x7f100351

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 64
    const v1, 0x7f1000d1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 65
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/-$$Lambda$XpuActivateActivity$qOrIht6dYZwqo_XQFKD14BWpKcg;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/-$$Lambda$XpuActivateActivity$qOrIht6dYZwqo_XQFKD14BWpKcg;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 70
    const v1, 0x7f10009c

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/-$$Lambda$XpuActivateActivity$d809lz9DeqMN2MAZXelUb19NRj8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/-$$Lambda$XpuActivateActivity$d809lz9DeqMN2MAZXelUb19NRj8;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 72
    return-void
.end method

.method private synthetic r(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic s(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OF:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OE:Landroid/widget/TextView;

    const p2, 0x7f1004d5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OG:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->ju()V

    .line 69
    return-void
.end method

.method private synthetic s(Ljava/lang/String;I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OE:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const p1, 0x106000b

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 103
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OE:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060019

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OF:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OE:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1060017

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OF:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    goto :goto_0

    .line 94
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OE:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060015

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OF:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    goto :goto_0

    .line 90
    :pswitch_3
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OE:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OF:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    goto :goto_0

    .line 86
    :pswitch_4
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OE:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OF:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 88
    nop

    .line 107
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public d(ILjava/lang/String;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/-$$Lambda$XpuActivateActivity$lfkXwy-4A0DRqFb73qM01vb0cuQ;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/-$$Lambda$XpuActivateActivity$lfkXwy-4A0DRqFb73qM01vb0cuQ;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method public fd()V
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 23
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->setContentView(I)V

    .line 24
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OG:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    .line 25
    return-void
.end method

.method public fe()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 30
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->DT:Lcom/xiaopeng/xui/app/c;

    .line 32
    const v0, 0x7f090439

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OE:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OF:Landroid/widget/Button;

    .line 34
    return-void
.end method

.method public ff()V
    .locals 1

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090099

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->nv()V

    .line 60
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OG:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->onDestroy()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuActivateActivity;->OG:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->iD()V

    .line 51
    return-void
.end method
