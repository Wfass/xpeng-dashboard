.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 91
    sget v0, Landroidx/preference/h$a;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Ldt;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    sget-object v0, Landroidx/preference/h$h;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 57
    sget p2, Landroidx/preference/h$h;->DialogPreference_dialogTitle:I

    sget p3, Landroidx/preference/h$h;->DialogPreference_android_dialogTitle:I

    invoke-static {p1, p2, p3}, Ldt;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    .line 59
    iget-object p2, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 62
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->y()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    .line 65
    :cond_0
    sget p2, Landroidx/preference/h$h;->DialogPreference_dialogMessage:I

    sget p3, Landroidx/preference/h$h;->DialogPreference_android_dialogMessage:I

    invoke-static {p1, p2, p3}, Ldt;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    .line 68
    sget p2, Landroidx/preference/h$h;->DialogPreference_dialogIcon:I

    sget p3, Landroidx/preference/h$h;->DialogPreference_android_dialogIcon:I

    invoke-static {p1, p2, p3}, Ldt;->a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    .line 71
    sget p2, Landroidx/preference/h$h;->DialogPreference_positiveButtonText:I

    sget p3, Landroidx/preference/h$h;->DialogPreference_android_positiveButtonText:I

    invoke-static {p1, p2, p3}, Ldt;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->d:Ljava/lang/CharSequence;

    .line 75
    sget p2, Landroidx/preference/h$h;->DialogPreference_negativeButtonText:I

    sget p3, Landroidx/preference/h$h;->DialogPreference_android_negativeButtonText:I

    invoke-static {p1, p2, p3}, Ldt;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    .line 79
    sget p2, Landroidx/preference/h$h;->DialogPreference_dialogLayout:I

    sget p3, Landroidx/preference/h$h;->DialogPreference_android_dialogLayout:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Ldt;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/DialogPreference;->f:I

    .line 83
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 162
    iput-object p1, p0, Landroidx/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 105
    iput-object p1, p0, Landroidx/preference/DialogPreference;->a:Ljava/lang/CharSequence;

    return-void
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 223
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroidx/preference/DialogPreference;->b:Ljava/lang/CharSequence;

    return-void
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/preference/DialogPreference;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 243
    iput p1, p0, Landroidx/preference/DialogPreference;->f:I

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0

    .line 189
    iput-object p1, p0, Landroidx/preference/DialogPreference;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/preference/DialogPreference;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 215
    iput-object p1, p0, Landroidx/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/preference/DialogPreference;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 252
    iget v0, p0, Landroidx/preference/DialogPreference;->f:I

    return v0
.end method

.method protected g()V
    .locals 1

    .line 257
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->T()Landroidx/preference/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/e;->a(Landroidx/preference/Preference;)V

    return-void
.end method
