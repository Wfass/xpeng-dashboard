.class public Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "UploadDevicesIdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;


# instance fields
.field private DT:Lcom/xiaopeng/xui/app/c;

.field private PA:Lcom/xiaopeng/devtools/presenter/factorytest/c/a;

.field private Px:Landroid/widget/TextView;

.field private Py:Landroid/widget/TextView;

.field private Pz:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic aD(Z)V
    .locals 2

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Py:Landroid/widget/TextView;

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Py:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v0, 0x7f10022f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f1003e9

    .line 114
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f10011d

    .line 115
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$n2B5BpKHKDgGZUuS-vqscNkhXyo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$n2B5BpKHKDgGZUuS-vqscNkhXyo;-><init>(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 116
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Py:Landroid/widget/TextView;

    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Py:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Pz:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 123
    return-void
.end method

.method private synthetic b(ILcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 61
    const p2, 0x7f0900be

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Pz:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Py:Landroid/widget/TextView;

    const p2, 0x7f10034d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Py:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1060019

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->PA:Lcom/xiaopeng/devtools/presenter/factorytest/c/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/c/a;->jE()V

    .line 69
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    .line 70
    return-void
.end method

.method private cO(I)Ljava/lang/String;
    .locals 3

    .line 76
    const-string v0, ""

    .line 77
    const v1, 0x7f0900be

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    const p1, 0x7f1000d4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const v2, 0x7f1001ca

    .line 80
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->PA:Lcom/xiaopeng/devtools/presenter/factorytest/c/a;

    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/c/a;->ix()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0
.end method

.method private synthetic dq(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Px:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Pz:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    return-void
.end method

.method private dr(I)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v1, 0x7f100412

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->cO(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 60
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$Y9sYKTsw48JIurUx9LN-eTLRomE;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$Y9sYKTsw48JIurUx9LN-eTLRomE;-><init>(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 71
    const v0, 0x7f10009c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$-r5JZYjvm3l7pZlNU6pWW_O6bCU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$-r5JZYjvm3l7pZlNU6pWW_O6bCU;-><init>(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 73
    return-void
.end method

.method public static synthetic lambda$-r5JZYjvm3l7pZlNU6pWW_O6bCU(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->u(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$FBiO3fVHptRamH8a-oM6YwJSi_4(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$Y9sYKTsw48JIurUx9LN-eTLRomE(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;ILcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->b(ILcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$n2B5BpKHKDgGZUuS-vqscNkhXyo(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->t(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$ztmMVhOjHLfx1fnLEHOc0fVftUg(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->aD(Z)V

    return-void
.end method

.method private synthetic t(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic u(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method


# virtual methods
.method public aC(Z)V
    .locals 1

    .line 109
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$ztmMVhOjHLfx1fnLEHOc0fVftUg;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$ztmMVhOjHLfx1fnLEHOc0fVftUg;-><init>(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public cZ(Ljava/lang/String;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$FBiO3fVHptRamH8a-oM6YwJSi_4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$UploadDevicesIdActivity$FBiO3fVHptRamH8a-oM6YwJSi_4;-><init>(Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public fd()V
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 27
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->setContentView(I)V

    .line 28
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;-><init>(Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->PA:Lcom/xiaopeng/devtools/presenter/factorytest/c/a;

    .line 29
    return-void
.end method

.method public fe()V
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 34
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    .line 35
    const v0, 0x7f09026f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Px:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f090449

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Py:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Pz:Landroid/widget/Button;

    .line 38
    return-void
.end method

.method public ff()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->Pz:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->PA:Lcom/xiaopeng/devtools/presenter/factorytest/c/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/c/a;->it()V

    .line 50
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 43
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->dr(I)V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->PA:Lcom/xiaopeng/devtools/presenter/factorytest/c/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/c/a;->onDestroy()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 88
    const-string v0, "UploadDevicesIdActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;->PA:Lcom/xiaopeng/devtools/presenter/factorytest/c/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/c/a;->iv()V

    .line 91
    return-void
.end method
