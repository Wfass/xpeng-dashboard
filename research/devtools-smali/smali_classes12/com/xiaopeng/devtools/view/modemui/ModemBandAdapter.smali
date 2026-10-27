.class public Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;
.super Landroid/widget/BaseAdapter;
.source "ModemBandAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;
    }
.end annotation


# instance fields
.field private Qg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/view/modemui/c;",
            ">;"
        }
    .end annotation
.end field

.field private Qh:Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;

.field private Qi:Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;

.field private Qj:Lcom/xiaopeng/devtools/bean/car/TboxLteBand;

.field private Qk:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qg:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qg:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qk:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qh:Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qi:Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;)Lcom/xiaopeng/devtools/bean/car/TboxLteBand;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qj:Lcom/xiaopeng/devtools/bean/car/TboxLteBand;

    return-object p0
.end method


# virtual methods
.method public du(I)Lcom/xiaopeng/devtools/view/modemui/c;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/view/modemui/c;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGsmBands()Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qh:Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->du(I)Lcom/xiaopeng/devtools/view/modemui/c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLteBands()Lcom/xiaopeng/devtools/bean/car/TboxLteBand;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qj:Lcom/xiaopeng/devtools/bean/car/TboxLteBand;

    return-object v0
.end method

.method public getUmtsBands()Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qi:Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 91
    if-nez p2, :cond_0

    .line 92
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance p3, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;-><init>(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;)V

    .line 94
    const v0, 0x7f090078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;->Qm:Landroid/widget/CheckBox;

    .line 95
    iget-object v0, p3, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;->Qm:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$1;-><init>(Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 108
    const v0, 0x7f090079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;->Qn:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/view/modemui/c;

    .line 115
    iget-object v0, p3, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;->Qm:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/modemui/c;->ischecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    iget-object p3, p3, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter$a;->Qn:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/modemui/c;->getBandName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 85
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public setGsmBand(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qh:Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qh:Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;->toBandList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qg:Ljava/util/List;

    .line 40
    const/4 p1, 0x1

    iput p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qk:I

    .line 41
    return-void
.end method

.method public setLteBand(Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qj:Lcom/xiaopeng/devtools/bean/car/TboxLteBand;

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qj:Lcom/xiaopeng/devtools/bean/car/TboxLteBand;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxLteBand;->toBandList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qg:Ljava/util/List;

    .line 61
    const/4 p1, 0x3

    iput p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qk:I

    .line 62
    return-void
.end method

.method public setUmtsBand(Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qi:Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qi:Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;->toBandList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qg:Ljava/util/List;

    .line 51
    const/4 p1, 0x2

    iput p1, p0, Lcom/xiaopeng/devtools/view/modemui/ModemBandAdapter;->Qk:I

    .line 52
    return-void
.end method
