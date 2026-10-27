.class public Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "ModemUiActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Qo:Landroid/widget/Button;

.field private Qp:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 1

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 26
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->setContentView(I)V

    .line 27
    return-void
.end method

.method public fe()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 32
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->Qo:Landroid/widget/Button;

    .line 33
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->Qp:Landroid/widget/Button;

    .line 34
    return-void
.end method

.method public ff()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->Qo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->Qp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 51
    const v0, 0x7f0900c5

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900e4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    const-class p1, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->d(Ljava/lang/Class;)V

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    const-class p1, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/modemui/ModemUiActivity;->d(Ljava/lang/Class;)V

    .line 58
    nop

    .line 62
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 46
    return-void
.end method
