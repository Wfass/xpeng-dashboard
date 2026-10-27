.class public Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;
.super Lcom/xiaopeng/devtools/view/AppBaseActivity;
.source "VehicleFactoryTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Cr:Lcom/xiaopeng/devtools/view/ActionBar;

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

.field private He:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$WzvG6nQPWMknuCKx8MDbgOmkgWw(Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->g(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 3

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->fd()V

    .line 44
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->setContentView(I)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->DD:Ljava/util/HashMap;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->DD:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f100412

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public fe()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->fe()V

    .line 52
    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->mContainer:Landroid/view/ViewGroup;

    .line 53
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/ActionBar;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    .line 54
    return-void
.end method

.method public ff()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->ff()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$VehicleFactoryTestActivity$WzvG6nQPWMknuCKx8MDbgOmkgWw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/-$$Lambda$VehicleFactoryTestActivity$WzvG6nQPWMknuCKx8MDbgOmkgWw;-><init>(Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setOnBackListener(Lcom/xiaopeng/devtools/view/ActionBar$a;)V

    .line 67
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->lJ()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->DD:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v0, p0, p0, v1, v2}, Lcom/xiaopeng/devtools/utils/u;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/view/View$OnClickListener;Ljava/util/HashMap;I)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->He:Landroid/util/SparseArray;

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    const-string p1, "VehicleFactoryTestActivity"

    const-string v0, "GO TO UploadDevicesIdActivity.class"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/vehicle/UploadDevicesIdActivity;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->e(Ljava/lang/Class;)V

    .line 81
    nop

    .line 85
    :goto_0
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->He:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/vehicle/VehicleFactoryTestActivity;->He:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 35
    if-eqz p1, :cond_0

    .line 36
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 39
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 71
    const-string v0, "VehicleFactoryTestActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onResume()V

    .line 73
    return-void
.end method
