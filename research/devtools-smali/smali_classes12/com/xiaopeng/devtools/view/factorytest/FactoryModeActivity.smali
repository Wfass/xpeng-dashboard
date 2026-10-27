.class public Lcom/xiaopeng/devtools/view/factorytest/FactoryModeActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "FactoryModeActivity.java"


# instance fields
.field private FR:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private static synthetic g(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 48
    const-string p0, "FactoryModeActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/r;->Y(Z)V

    .line 50
    return-void
.end method

.method public static synthetic lambda$MSJqovAImaPVoaNuROB8fnNU_-8(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/FactoryModeActivity;->g(Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 29
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryModeActivity;->setContentView(I)V

    .line 30
    return-void
.end method

.method public fe()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 35
    const v0, 0x7f0901d0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryModeActivity;->FR:Landroid/widget/CheckBox;

    .line 36
    return-void
.end method

.method public ff()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryModeActivity;->FR:Landroid/widget/CheckBox;

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/-$$Lambda$FactoryModeActivity$MSJqovAImaPVoaNuROB8fnNU_-8;->INSTANCE:Lcom/xiaopeng/devtools/view/factorytest/-$$Lambda$FactoryModeActivity$MSJqovAImaPVoaNuROB8fnNU_-8;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/FactoryModeActivity;->FR:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->isFactoryMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 56
    return-void
.end method
