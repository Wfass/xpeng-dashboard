.class public Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "TboxBandModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/modemui/a;


# instance fields
.field private Qs:Landroid/widget/ListView;

.field private Qt:Landroid/widget/ListView;

.field private Qu:Landroid/widget/ListView;

.field private Qv:Landroid/widget/Button;

.field private Qw:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

.field private Qx:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

.field private Qy:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

.field private Qz:Lcom/xiaopeng/devtools/presenter/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qw:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->setGsmBand(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qw:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qy:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->setLteBand(Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qy:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->notifyDataSetChanged()V

    .line 105
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qx:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->setUmtsBand(Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qx:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method public fd()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 43
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->setContentView(I)V

    .line 44
    new-instance v0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qw:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    .line 45
    new-instance v0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qx:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    .line 46
    new-instance v0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qy:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    .line 47
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/c/a;-><init>(Lcom/xiaopeng/devtools/view/modemui/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qz:Lcom/xiaopeng/devtools/presenter/c/a;

    .line 48
    return-void
.end method

.method public fe()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 53
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qs:Landroid/widget/ListView;

    .line 54
    const v0, 0x7f09026d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qt:Landroid/widget/ListView;

    .line 55
    const v0, 0x7f09026b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qu:Landroid/widget/ListView;

    .line 56
    const v0, 0x7f0900fa

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qv:Landroid/widget/Button;

    .line 57
    return-void
.end method

.method public ff()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qz:Lcom/xiaopeng/devtools/presenter/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/c/a;->it()V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qv:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qs:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qw:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qt:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qx:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qu:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qy:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900fa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qz:Lcom/xiaopeng/devtools/presenter/c/a;

    new-instance v0, Lcom/xiaopeng/devtools/bean/car/TboxModemBand;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qw:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->getGsmBands()Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qx:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->getUmtsBands()Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qy:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->getLteBands()Lcom/xiaopeng/devtools/bean/car/TboxLteBand;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/devtools/bean/car/TboxModemBand;-><init>(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/presenter/c/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxModemBand;)V

    .line 87
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qz:Lcom/xiaopeng/devtools/presenter/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/c/a;->onDestroy()V

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxBandModeActivity;->Qz:Lcom/xiaopeng/devtools/presenter/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/c/a;->requestTBoxBandModemStatus()V

    .line 78
    return-void
.end method
