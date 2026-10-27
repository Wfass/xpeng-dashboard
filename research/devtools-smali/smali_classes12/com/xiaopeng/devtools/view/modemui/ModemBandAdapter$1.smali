.class Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;
.super Ljava/lang/Object;
.source "ModemBandAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    iput p2, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->a(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/view/modemui/c;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/view/modemui/c;->setChecked(Z)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->b(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->c(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->a(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/modemui/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/modemui/c;->getBandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;->setBandValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->b(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->d(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->a(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/modemui/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/modemui/c;->getBandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;->setBandValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->b(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->e(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Lcom/xiaopeng/devtools/bean/car/TboxLteBand;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->Ql:Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->a(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/modemui/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/modemui/c;->getBandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/bean/car/TboxLteBand;->setBandValue(Ljava/lang/String;I)V

    .line 106
    :cond_2
    :goto_0
    return-void
.end method
