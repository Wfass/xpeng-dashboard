.class public Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;
.super Landroidx/preference/MultiSelectListPreference;
.source "CarUiMultiSelectListPreference.java"

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 53
    sget v0, Lcom/android/car/ui/e$a;->carUiPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 57
    sget v0, Lcom/android/car/ui/e$i;->Preference_CarUi_Preference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->b:Z

    .line 63
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/e$j;->CarUiPreference:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget p2, Lcom/android/car/ui/e$j;->CarUiPreference_car_ui_ux_restricted:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->b:Z

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->a:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 112
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-super {p0}, Landroidx/preference/MultiSelectListPreference;->P()V

    :cond_2
    :goto_0
    return-void
.end method

.method public U()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroidx/preference/MultiSelectListPreference;->U()V

    .line 90
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/e$b;->car_ui_preference_show_chevron:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    sget v0, Lcom/android/car/ui/e$g;->car_ui_preference_chevron:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->e(I)V

    return-void
.end method

.method public a(Landroidx/preference/g;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreference;->a(Landroidx/preference/g;)V

    .line 104
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->p()Z

    move-result v0

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;Z)V

    return-void
.end method

.method protected o()[Z
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/preference/MultiSelectListPreference;->o()[Z

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiMultiSelectListPreference;->b:Z

    return v0
.end method
