.class public Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;
.super Lcom/android/car/ui/preference/PreferenceDialogFragment;
.source "EditTextPreferenceDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"


# instance fields
.field private mAllowEnterToSubmit:Z

.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/car/ui/preference/PreferenceDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mAllowEnterToSubmit:Z

    return-void
.end method

.method private getEditTextPreference()Landroidx/preference/EditTextPreference;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;
    .locals 3

    .line 56
    new-instance v0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 59
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getAllowEnterToSubmit()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mAllowEnterToSubmit:Z

    return v0
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 84
    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 86
    iget-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 92
    iget-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 94
    iget-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 95
    iget-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 98
    iget-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-direct {p0}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 132
    iget-boolean p2, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mAllowEnterToSubmit:Z

    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 135
    invoke-direct {p0}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->b(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p0}, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    iget-object v0, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mText:Ljava/lang/CharSequence;

    const-string v1, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAllowEnterToSubmit(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/android/car/ui/preference/EditTextPreferenceDialogFragment;->mAllowEnterToSubmit:Z

    return-void
.end method
