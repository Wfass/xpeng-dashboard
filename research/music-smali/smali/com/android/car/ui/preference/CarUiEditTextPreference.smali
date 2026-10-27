.class public Lcom/android/car/ui/preference/CarUiEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source "CarUiEditTextPreference.java"

# interfaces
.implements Lcom/android/car/ui/preference/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private a:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 63
    sget v0, Lcom/android/car/ui/e$a;->editTextPreferenceStyle:I

    const v1, 0x1010092

    invoke-static {p1, v0, v1}, Laiq;->b(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/e$j;->CarUiPreference:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 78
    sget p2, Lcom/android/car/ui/e$j;->CarUiPreference_carUiShowChevron:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->c:Z

    .line 79
    sget p2, Lcom/android/car/ui/e$j;->CarUiPreference_car_ui_ux_restricted:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->b:Z

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->a:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 126
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-super {p0}, Landroidx/preference/EditTextPreference;->P()V

    :cond_2
    :goto_0
    return-void
.end method

.method public U()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroidx/preference/EditTextPreference;->U()V

    .line 100
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/e$b;->car_ui_preference_show_chevron:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    sget v0, Lcom/android/car/ui/e$g;->car_ui_preference_chevron:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->e(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroidx/preference/g;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->a(Landroidx/preference/g;)V

    .line 118
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiEditTextPreference;->m()Z

    move-result v0

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public m()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiEditTextPreference;->b:Z

    return v0
.end method
