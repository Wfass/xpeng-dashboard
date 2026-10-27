.class public Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "DiagnosisRecordActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/aftersales/cdu/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;
    }
.end annotation


# instance fields
.field private EW:Landroid/support/design/widget/TabLayout;

.field private EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

.field private EY:Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;

.field private EZ:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;)Lcom/xiaopeng/devtools/presenter/aftersales/c;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

    return-object p0
.end method

.method private synthetic b(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EY:Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->setDataList(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EY:Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;->notifyDataSetChanged()V

    .line 91
    return-void
.end method

.method private df(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 108
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$1;)V

    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c00f3

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    const v2, 0x7f0903bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;->Et:Landroid/widget/TextView;

    .line 111
    const v2, 0x7f090202

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;->mIconView:Landroid/widget/ImageView;

    .line 112
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v2, v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;->Et:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0800a2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    return-object v1
.end method

.method public static synthetic lambda$-Nu-C8V_38nnQJuVf_6cbEEUDI8(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->w(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$a5uikKh9H0Y83v6nPzfYBUxY7s8(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->b(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V

    return-void
.end method

.method public static synthetic lambda$t-3Hb-ihrDabPmgoATbI_FACrYw(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->mg()V

    return-void
.end method

.method private synthetic mg()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/c;->dI()V

    return-void
.end method

.method private synthetic w(Ljava/util/List;)V
    .locals 5

    .line 97
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EW:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;

    .line 99
    iget-object v2, v1, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;->Et:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

    invoke-virtual {v4}, Lcom/xiaopeng/devtools/presenter/aftersales/c;->dH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->getDiagnosisDataSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, v1, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$a;->mIconView:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;

    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;->getDiagnosisDataSize()I

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const v2, 0x7f08009f

    goto :goto_1

    :cond_0
    const v2, 0x7f0800a1

    .line 101
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V
    .locals 1

    .line 88
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$DiagnosisRecordActivity$a5uikKh9H0Y83v6nPzfYBUxY7s8;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$DiagnosisRecordActivity$a5uikKh9H0Y83v6nPzfYBUxY7s8;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public fd()V
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 31
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "diagnosis_module"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EZ:I

    .line 33
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/c;

    iget v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EZ:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/presenter/aftersales/c;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/a;I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

    .line 34
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EY:Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;

    .line 35
    return-void
.end method

.method public fe()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 40
    const v0, 0x7f0901a4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->mListView:Landroid/widget/ListView;

    .line 41
    const v0, 0x7f090382

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EW:Landroid/support/design/widget/TabLayout;

    .line 42
    return-void
.end method

.method public ff()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EW:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity$1;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 78
    return-void
.end method

.method public lJ()V
    .locals 5

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EY:Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/aftersales/c;->dH()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EW:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EW:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

    .line 50
    invoke-virtual {v4}, Lcom/xiaopeng/devtools/presenter/aftersales/c;->dH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->df(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    iget v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EZ:I

    if-lez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EW:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v2, 0x7f100105

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

    .line 55
    invoke-virtual {v4}, Lcom/xiaopeng/devtools/presenter/aftersales/c;->ic()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 54
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 57
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EW:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 121
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->EX:Lcom/xiaopeng/devtools/presenter/aftersales/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/c;->onDestroy()V

    .line 123
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 83
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$DiagnosisRecordActivity$t-3Hb-ihrDabPmgoATbI_FACrYw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$DiagnosisRecordActivity$t-3Hb-ihrDabPmgoATbI_FACrYw;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisErrorList;",
            ">;)V"
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$DiagnosisRecordActivity$-Nu-C8V_38nnQJuVf_6cbEEUDI8;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$DiagnosisRecordActivity$-Nu-C8V_38nnQJuVf_6cbEEUDI8;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/DiagnosisRecordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
