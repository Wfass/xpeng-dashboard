.class public Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "SystemInfoActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/systeminfo/b;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private Hj:Landroid/widget/TextView;

.field private Hk:Landroid/widget/TextView;

.field private Hp:Landroid/widget/TextView;

.field private TC:Landroid/widget/ListView;

.field private TD:Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

.field private TK:Landroid/widget/TextView;

.field private TL:Landroid/widget/TextView;

.field private TM:Landroid/widget/TextView;

.field private TN:Landroid/widget/TextView;

.field private uP:Lcom/xiaopeng/devtools/presenter/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private synthetic dy(Ljava/lang/String;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TN:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f100366

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$Om8OnRX_7gFAuFspg_7ThrKQwaQ(Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->dy(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dw(Ljava/lang/String;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$SystemInfoActivity$Om8OnRX_7gFAuFspg_7ThrKQwaQ;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$SystemInfoActivity$Om8OnRX_7gFAuFspg_7ThrKQwaQ;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public fd()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 40
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->setContentView(I)V

    .line 41
    new-instance v0, Lcom/xiaopeng/devtools/presenter/g/d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/g/d;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 42
    new-instance v0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TD:Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

    .line 43
    return-void
.end method

.method public fe()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 48
    const v0, 0x7f0903f9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->Hj:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f09042f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->Hp:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f090407

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TK:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f09041d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TL:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f09040f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TM:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f090269

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TC:Landroid/widget/ListView;

    .line 54
    const v0, 0x7f0903fa

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->Hk:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0903fb

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TN:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/g/c;->hJ()V

    .line 57
    return-void
.end method

.method public ff()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 82
    return-void
.end method

.method public lJ()V
    .locals 6

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->Hj:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 63
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->fQ()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 62
    const v3, 0x7f100364

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TK:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 65
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->hI()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 64
    const v3, 0x7f100378

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TL:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 67
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 66
    const v3, 0x7f1003be

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TM:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 69
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->getMcuVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 68
    const v3, 0x7f10037e

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->Hp:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 71
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/g/c;->getVehicleId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 70
    const v3, 0x7f1003d7

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->Hk:Landroid/widget/TextView;

    new-array v3, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v0, 0x7f100164

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    aput-object v0, v3, v4

    .line 73
    const v0, 0x7f100365

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TN:Landroid/widget/TextView;

    const v2, 0x7f100366

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "LOADING..."

    aput-object v3, v1, v4

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TC:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TD:Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 94
    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;->TD:Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->setPackageInfos(Ljava/util/List;)V

    .line 99
    return-void
.end method
