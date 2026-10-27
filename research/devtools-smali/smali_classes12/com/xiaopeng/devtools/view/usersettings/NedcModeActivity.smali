.class public Lcom/xiaopeng/devtools/view/usersettings/NedcModeActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "NedcModeActivity.java"


# instance fields
.field private Ux:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private static synthetic g(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 50
    const-string p0, "NedcModeActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/e;->fz()Lcom/xiaopeng/devtools/model/a/e;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/a/e;->setNedcSwitch(I)V

    .line 54
    :cond_0
    return-void
.end method

.method public static synthetic lambda$QjguzFZsHGh1A7Cx6A57rITWK70(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/NedcModeActivity;->g(Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 30
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/NedcModeActivity;->setContentView(I)V

    .line 31
    return-void
.end method

.method public fe()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 36
    const v0, 0x7f090288

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/NedcModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/NedcModeActivity;->Ux:Landroid/widget/CheckBox;

    .line 37
    return-void
.end method

.method public ff()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/NedcModeActivity;->Ux:Landroid/widget/CheckBox;

    sget-object v1, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$NedcModeActivity$QjguzFZsHGh1A7Cx6A57rITWK70;->INSTANCE:Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$NedcModeActivity$QjguzFZsHGh1A7Cx6A57rITWK70;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/NedcModeActivity;->Ux:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method
