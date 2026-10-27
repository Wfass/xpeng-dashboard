.class public Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "RepairModeActivity.java"


# instance fields
.field private By:Lcom/xiaopeng/aftersales/RepairModeListener;

.field private Uy:Landroid/widget/CheckBox;

.field private Uz:Landroid/view/View;

.field private vl:Lcom/xiaopeng/aftersales/AfterSalesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 27
    new-instance v0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity$1;-><init>(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->By:Lcom/xiaopeng/aftersales/RepairModeListener;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->Uy:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->Uz:Landroid/view/View;

    return-object p0
.end method

.method private synthetic g(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 73
    const-string p1, "RepairModeActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->Uz:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    invoke-virtual {p1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->getRepairMode()Z

    move-result p1

    if-ne p2, p1, :cond_0

    .line 76
    const-string p1, "RepairModeActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RepairMode is already "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    return-void

    .line 79
    :cond_0
    if-eqz p2, :cond_1

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    invoke-virtual {p1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->enableRepairMode()V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    invoke-virtual {p1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->disableRepairMode()V

    .line 84
    :goto_0
    return-void
.end method

.method public static synthetic lambda$htlZ-9Dw_1F6ey1n13JwSVOLHTA(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->g(Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 48
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->setContentView(I)V

    .line 49
    return-void
.end method

.method public fe()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 54
    const v0, 0x7f0902dc

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->Uy:Landroid/widget/CheckBox;

    .line 55
    const v0, 0x7f090266

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->Uz:Landroid/view/View;

    .line 56
    const-string v0, "xiaopeng_aftersales"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 57
    return-void
.end method

.method public ff()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->By:Lcom/xiaopeng/aftersales/RepairModeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->registerRepairModeListener(Lcom/xiaopeng/aftersales/RepairModeListener;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->Uy:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$RepairModeActivity$htlZ-9Dw_1F6ey1n13JwSVOLHTA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$RepairModeActivity$htlZ-9Dw_1F6ey1n13JwSVOLHTA;-><init>(Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->Uy:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    invoke-virtual {v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->getRepairMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->Uz:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 89
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/usersettings/RepairModeActivity;->By:Lcom/xiaopeng/aftersales/RepairModeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->unregisterRepairModeListener(Lcom/xiaopeng/aftersales/RepairModeListener;)V

    .line 91
    return-void
.end method
