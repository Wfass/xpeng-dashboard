.class public Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;
.source "ModuleDiagnosisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private DD:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 4

    .line 24
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->fd()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->theme:I

    .line 26
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    .line 27
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100119

    invoke-virtual {p0, v3}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100109

    invoke-virtual {p0, v3}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f100112

    invoke-virtual {p0, v3}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x7f100108

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f10010a

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100118

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100107

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100110

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "SUPPORT_ETH"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100113

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100117

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "SUPPORT_XPU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->ly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    const v1, 0x16eb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f10011a

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_1
    return-void
.end method

.method public fe()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->fe()V

    .line 47
    return-void
.end method

.method public ff()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->ff()V

    .line 59
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->lJ()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->a(Ljava/util/HashMap;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100386

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->DD:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaopeng/devtools/view/aftersales/cdu/EachModuleDiagnosisActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v1, "diagnosis_module"

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/ModuleDiagnosisActivity;->a(Landroid/content/Intent;)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onClick(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onDestroy()V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesMenuActivity;->onResume()V

    .line 64
    return-void
.end method
