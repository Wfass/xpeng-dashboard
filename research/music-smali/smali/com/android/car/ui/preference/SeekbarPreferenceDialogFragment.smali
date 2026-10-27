.class public Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;
.super Lcom/android/car/ui/preference/PreferenceDialogFragment;
.source "SeekbarPreferenceDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/car/ui/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;
    .locals 3

    .line 36
    new-instance v0, Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 38
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/a;

    .line 48
    invoke-interface {v0, p1}, Lcom/android/car/ui/preference/a;->b(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/a;

    .line 56
    invoke-interface {v0, p1, p2}, Lcom/android/car/ui/preference/a;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/a;

    .line 62
    invoke-interface {v0, p1}, Lcom/android/car/ui/preference/a;->k(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/android/car/ui/preference/SeekbarPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/preference/a;

    .line 68
    invoke-interface {v0, p1}, Lcom/android/car/ui/preference/a;->a(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
