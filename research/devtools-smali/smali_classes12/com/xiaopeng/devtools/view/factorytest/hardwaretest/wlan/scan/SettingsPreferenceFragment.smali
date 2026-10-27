.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

.field private Nw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method


# virtual methods
.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/a;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected hasNextButton()Z
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/a;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected mY()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final mZ()V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 108
    return-void
.end method

.method public na()V
    .locals 0

    .line 197
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nw:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 74
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->mY()I

    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nw:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 0

    .line 160
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 96
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nw:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 97
    const/16 p2, 0x65

    const v0, 0x7f100194

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nw:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/c;->a(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 100
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 146
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 147
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->nb()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 170
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 171
    return-void
.end method

.method protected showDialog(I)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/b;I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->Nv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    return-void
.end method
