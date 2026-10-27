.class public Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "TboxNetworkInfoActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/modemui/b;


# instance fields
.field private QA:Landroid/widget/TextView;

.field private QB:Landroid/widget/TextView;

.field private QC:Landroid/widget/ListView;

.field private QD:Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;

.field private QE:Lcom/xiaopeng/devtools/presenter/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QA:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxApn;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QD:Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;->setNeighbourNetwork(Ljava/util/ArrayList;)V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QD:Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public cj(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public fd()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 35
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QD:Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;

    .line 37
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/c/b;-><init>(Lcom/xiaopeng/devtools/view/modemui/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QE:Lcom/xiaopeng/devtools/presenter/c/b;

    .line 38
    return-void
.end method

.method public fe()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 49
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QA:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f090190

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QB:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f09026c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QC:Landroid/widget/ListView;

    .line 52
    return-void
.end method

.method public ff()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QE:Lcom/xiaopeng/devtools/presenter/c/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/c/b;->it()V

    .line 64
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QC:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QD:Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QE:Lcom/xiaopeng/devtools/presenter/c/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/c/b;->onDestroy()V

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 44
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/TboxNetworkInfoActivity;->QE:Lcom/xiaopeng/devtools/presenter/c/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/c/b;->requestTBoxModemStatus()V

    .line 70
    return-void
.end method
