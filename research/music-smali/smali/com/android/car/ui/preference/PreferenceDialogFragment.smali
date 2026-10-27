.class public abstract Lcom/android/car/ui/preference/PreferenceDialogFragment;
.super Lcom/android/car/ui/preference/CarUiDialogFragment;
.source "PreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mPreference:Landroidx/preference/DialogPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/car/ui/preference/CarUiDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/DialogPreference;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/DialogPreference$a;

    .line 100
    invoke-interface {v1, v0}, Landroidx/preference/DialogPreference$a;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DialogPreference;

    iput-object v0, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 55
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 58
    instance-of v1, v0, Landroidx/preference/DialogPreference$a;

    if-eqz v1, :cond_3

    .line 63
    check-cast v0, Landroidx/preference/DialogPreference$a;

    .line 66
    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_2

    .line 68
    invoke-interface {v0, v1}, Landroidx/preference/DialogPreference$a;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    .line 69
    iget-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->a()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    .line 70
    iget-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->d()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 71
    iget-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->e()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 72
    iget-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->b()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    .line 73
    iget-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->f()I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mDialogLayoutRes:I

    .line 75
    iget-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mPreference:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 76
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 79
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/PreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/android/car/ui/preference/PreferenceDialogFragment;->mDialogIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_2
    :goto_1
    return-void

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
