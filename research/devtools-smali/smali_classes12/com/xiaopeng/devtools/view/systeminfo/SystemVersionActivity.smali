.class public Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "SystemVersionActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/systeminfo/b;


# instance fields
.field private Hj:Landroid/widget/TextView;

.field private Hm:Landroid/widget/ImageView;

.field private Hp:Landroid/widget/TextView;

.field private Rp:Lcom/xiaopeng/devtools/presenter/d/a;

.field private TK:Landroid/widget/TextView;

.field private TL:Landroid/widget/TextView;

.field private TM:Landroid/widget/TextView;

.field private TN:Landroid/widget/TextView;

.field private TO:Landroid/widget/TextView;

.field private TP:Landroid/widget/TextView;

.field private TQ:Landroid/widget/TextView;

.field private TT:Landroid/widget/TextView;

.field private TU:Landroid/widget/TextView;

.field private TV:Landroid/widget/TextView;

.field private uP:Lcom/xiaopeng/devtools/presenter/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private synthetic W(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TV:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f1003db

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TU:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const p2, 0x7f1003da

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method private synthetic dz(Ljava/lang/String;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TN:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f100366

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$U7lqtakY515N7Vql9qwTdnSBWE4(Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->dz(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$aLs0E6sMfub1ypSooxF82hK5qvA(Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$qmn8E9hePLyJGlPZbjDsQ2rReXo(Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->nU()V

    return-void
.end method

.method private nT()V
    .locals 1

    .line 88
    new-instance v0, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$SystemVersionActivity$qmn8E9hePLyJGlPZbjDsQ2rReXo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$SystemVersionActivity$qmn8E9hePLyJGlPZbjDsQ2rReXo;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method private synthetic nU()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Rp:Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/d/a;->jJ()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Rp:Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/d/a;->jK()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$SystemVersionActivity$aLs0E6sMfub1ypSooxF82hK5qvA;

    invoke-direct {v2, p0, v0, v1}, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$SystemVersionActivity$aLs0E6sMfub1ypSooxF82hK5qvA;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method


# virtual methods
.method public dw(Ljava/lang/String;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$SystemVersionActivity$U7lqtakY515N7Vql9qwTdnSBWE4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$SystemVersionActivity$U7lqtakY515N7Vql9qwTdnSBWE4;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public fd()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 43
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->setContentView(I)V

    .line 44
    new-instance v0, Lcom/xiaopeng/devtools/presenter/g/d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/g/d;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 45
    new-instance v0, Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/d/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Rp:Lcom/xiaopeng/devtools/presenter/d/a;

    .line 46
    return-void
.end method

.method public fe()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 51
    const v0, 0x7f0903f9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Hj:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f09042f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Hp:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f090215

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Hm:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f090430

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TO:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f090407

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TK:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TL:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f09040f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TM:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f090409

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TP:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f09041e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TQ:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f090421

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TT:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f090431

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TU:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f090432

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TV:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0903fb

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TN:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method public ff()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/g/c;->kb()V

    .line 102
    return-void
.end method

.method public lJ()V
    .locals 6

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Hj:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->fQ()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100364

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/g/c;->fQ()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Hm:Landroid/widget/ImageView;

    invoke-interface {v0, v2, v3}, Lcom/xiaopeng/devtools/presenter/g/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TK:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->hI()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f100378

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TL:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f1003be

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TM:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->getMcuVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f10037e

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TP:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->getIccid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f100379

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TQ:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f1003c1

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const-string v0, "SUPPORT_TMCU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TT:Landroid/widget/TextView;

    const v2, 0x7f1003d5

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lq()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TT:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->Hp:Landroid/widget/TextView;

    const v2, 0x7f1003d7

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/g/c;->getVehicleId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TO:Landroid/widget/TextView;

    const v2, 0x7f1003d9

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v5}, Lcom/xiaopeng/devtools/presenter/g/c;->eG()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->TN:Landroid/widget/TextView;

    const v2, 0x7f100366

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "LOADING..."

    aput-object v3, v1, v4

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->nT()V

    .line 85
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemVersionActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/g/c;->onDestroy()V

    .line 112
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 106
    return-void
.end method
