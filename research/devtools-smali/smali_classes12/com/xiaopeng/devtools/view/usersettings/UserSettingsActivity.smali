.class public Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "UserSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/usersettings/a;


# instance fields
.field private Qb:Lcom/xiaopeng/devtools/presenter/i/a;

.field private UD:Landroid/widget/CheckBox;

.field private UE:Landroid/widget/CheckBox;

.field private UF:Landroid/widget/CheckBox;

.field private UG:Landroid/widget/CheckBox;

.field private UH:Landroid/widget/Button;

.field private pd:Lcom/xiaopeng/xui/app/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;)Lcom/xiaopeng/xui/app/e;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    return-object p0
.end method

.method private synthetic dB(Ljava/lang/String;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UF:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f100464

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method private dN(I)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$2;-><init>(Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;)V

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/xui/app/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/e;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->pd:Lcom/xiaopeng/xui/app/e;

    .line 135
    return-void
.end method

.method public static synthetic lambda$w6IRgCfJgX5x6CEwY3GPVBhKHSE(Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->dB(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dA(Ljava/lang/String;)V
    .locals 1

    .line 118
    new-instance v0, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$UserSettingsActivity$w6IRgCfJgX5x6CEwY3GPVBhKHSE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/-$$Lambda$UserSettingsActivity$w6IRgCfJgX5x6CEwY3GPVBhKHSE;-><init>(Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public fd()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 59
    const v0, 0x7f0c00f5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->setContentView(I)V

    .line 60
    return-void
.end method

.method public nY()V
    .locals 1

    .line 106
    new-instance v0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$1;-><init>(Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 83
    :sswitch_0
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Landroid/widget/CheckBox;

    .line 85
    const v0, 0x7f1002f1

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->dN(I)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/presenter/i/a;->N(Z)V

    goto :goto_0

    .line 91
    :sswitch_1
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Landroid/widget/CheckBox;

    .line 93
    const v0, 0x7f1002f0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->dN(I)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/presenter/i/a;->F(Z)V

    goto :goto_0

    .line 68
    :sswitch_2
    check-cast p1, Landroid/widget/CheckBox;

    .line 69
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/presenter/i/a;->H(Z)V

    .line 71
    goto :goto_0

    .line 74
    :sswitch_3
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Landroid/widget/CheckBox;

    .line 76
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 77
    const v0, 0x7f1002ef

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->dN(I)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/presenter/i/a;->setDebugStatus(Z)V

    goto :goto_0

    .line 99
    :sswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    const-string v0, "10"

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/presenter/i/a;->bJ(Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0900ad -> :sswitch_4
        0x7f09019a -> :sswitch_3
        0x7f090336 -> :sswitch_2
        0x7f090443 -> :sswitch_1
        0x7f090462 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance p1, Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/presenter/i/b;-><init>(Lcom/xiaopeng/devtools/view/usersettings/a;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    .line 33
    const p1, 0x7f090336

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UD:Landroid/widget/CheckBox;

    .line 34
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->ls()Z

    move-result p1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UD:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UD:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const p1, 0x7f09019a

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UE:Landroid/widget/CheckBox;

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/i/a;->hL()Z

    move-result p1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UE:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UE:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const p1, 0x7f090462

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UF:Landroid/widget/CheckBox;

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UF:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/i/a;->kE()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/i/a;->kF()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->dA(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UF:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const p1, 0x7f090443

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UG:Landroid/widget/CheckBox;

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UG:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/i/a;->hK()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UG:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const p1, 0x7f0900ad

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UH:Landroid/widget/Button;

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->UH:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->Qb:Lcom/xiaopeng/devtools/presenter/i/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/i/a;->onDestroy()V

    .line 140
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 141
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 145
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onStart()V

    .line 146
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 150
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onStop()V

    .line 151
    return-void
.end method
