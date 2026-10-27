.class public Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "DIDInfoActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/aftersales/a;


# instance fields
.field private DW:Lcom/xiaopeng/devtools/presenter/aftersales/d;

.field private mContainer:Landroid/view/ViewGroup;

.field private pd:Lcom/xiaopeng/xui/app/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;)Lcom/xiaopeng/xui/app/e;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->pd:Lcom/xiaopeng/xui/app/e;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private lT()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->pd:Lcom/xiaopeng/xui/app/e;

    if-nez v0, :cond_0

    .line 65
    const v0, 0x7f100281

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$2;-><init>(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/xiaopeng/xui/app/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/e;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->pd:Lcom/xiaopeng/xui/app/e;

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->show()V

    .line 77
    :goto_0
    return-void
.end method


# virtual methods
.method public c(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity$1;-><init>(Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public fd()V
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 23
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->setContentView(I)V

    .line 24
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/d;-><init>(Lcom/xiaopeng/devtools/view/aftersales/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->DW:Lcom/xiaopeng/devtools/presenter/aftersales/d;

    .line 25
    return-void
.end method

.method public fe()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 30
    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->mContainer:Landroid/view/ViewGroup;

    .line 31
    return-void
.end method

.method public ff()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 41
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 81
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->lT()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/DIDInfoActivity;->DW:Lcom/xiaopeng/devtools/presenter/aftersales/d;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/d;->ie()V

    .line 48
    return-void
.end method
