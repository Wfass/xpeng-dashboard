.class public abstract Lcom/android/car/ui/preference/CarUiDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CarUiDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final SAVE_STATE_ICON:Ljava/lang/String; = "CarUiDialogFragment.icon"

.field private static final SAVE_STATE_LAYOUT:Ljava/lang/String; = "CarUiDialogFragment.layout"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "CarUiDialogFragment.message"

.field private static final SAVE_STATE_NEGATIVE_TEXT:Ljava/lang/String; = "CarUiDialogFragment.negativeText"

.field private static final SAVE_STATE_POSITIVE_TEXT:Ljava/lang/String; = "CarUiDialogFragment.positiveText"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "CarUiDialogFragment.title"


# instance fields
.field protected mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

.field protected mDialogLayoutRes:I

.field protected mDialogMessage:Ljava/lang/CharSequence;

.field protected mDialogTitle:Ljava/lang/CharSequence;

.field protected mNegativeButtonText:Ljava/lang/CharSequence;

.field protected mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 1

    .line 169
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$CarUiDialogFragment(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiDialogFragment;->requestInputMethod(Landroid/app/Dialog;)V

    return-void
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    const v0, 0x102000b

    .line 199
    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 206
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 207
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 213
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 214
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 221
    iput p2, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mWhichButtonClicked:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "CarUiDialogFragment.title"

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v0, "CarUiDialogFragment.positiveText"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    const-string v0, "CarUiDialogFragment.negativeText"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string v0, "CarUiDialogFragment.message"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "CarUiDialogFragment.layout"

    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogLayoutRes:I

    const-string v0, "CarUiDialogFragment.icon"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 91
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x2

    .line 114
    iput v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mWhichButtonClicked:I

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 119
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 120
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 133
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDialogFragment;->needInputMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Lcom/android/car/ui/preference/-$$Lambda$CarUiDialogFragment$SpCk5feImT4yEJooxbC98MBarQI;

    invoke-direct {v0, p0, p1}, Lcom/android/car/ui/preference/-$$Lambda$CarUiDialogFragment$SpCk5feImT4yEJooxbC98MBarQI;-><init>(Lcom/android/car/ui/preference/CarUiDialogFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_1
    return-object p1
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 181
    iget v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogLayoutRes:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 227
    iget p1, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mWhichButtonClicked:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiDialogFragment;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v1, "CarUiDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    const-string v1, "CarUiDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    const-string v1, "CarUiDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v1, "CarUiDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 104
    iget v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogLayoutRes:I

    const-string v1, "CarUiDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "CarUiDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
