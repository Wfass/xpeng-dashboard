.class public Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "AppListActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/systeminfo/b;


# instance fields
.field private TC:Landroid/widget/ListView;

.field private TD:Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

.field private uP:Lcom/xiaopeng/devtools/presenter/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private synthetic B(Ljava/util/List;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->TD:Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->setPackageInfos(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$xuIFnpJw_NxBgi5OUmS-u_EJAnY(Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->B(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public dw(Ljava/lang/String;)V
    .locals 0

    .line 70
    return-void
.end method

.method public fd()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 35
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/xiaopeng/devtools/presenter/g/d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/g/d;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    .line 37
    new-instance v0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->TD:Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

    .line 38
    return-void
.end method

.method public fe()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 43
    const v0, 0x7f090269

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->TC:Landroid/widget/ListView;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->TC:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->TD:Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    return-void
.end method

.method public ff()V
    .locals 0

    .line 59
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 60
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 50
    iget v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/g/c;->kc()V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->uP:Lcom/xiaopeng/devtools/presenter/g/c;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/g/c;->hJ()V

    .line 55
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
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

    .line 64
    new-instance v0, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$AppListActivity$xuIFnpJw_NxBgi5OUmS-u_EJAnY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/-$$Lambda$AppListActivity$xuIFnpJw_NxBgi5OUmS-u_EJAnY;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/AppListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
