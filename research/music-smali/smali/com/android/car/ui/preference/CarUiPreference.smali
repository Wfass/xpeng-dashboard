.class public Lcom/android/car/ui/preference/CarUiPreference;
.super Landroidx/preference/Preference;
.source "CarUiPreference.java"

# interfaces
.implements Lcom/android/car/ui/preference/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    sget v0, Lcom/android/car/ui/e$a;->carUiPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 58
    sget v0, Lcom/android/car/ui/e$i;->Preference_CarUi_Preference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->d:Z

    .line 49
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->e:Z

    .line 54
    invoke-direct {p0, p2, p3, p4}, Lcom/android/car/ui/preference/CarUiPreference;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/e$j;->CarUiPreference:[I

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    sget p2, Lcom/android/car/ui/e$j;->CarUiPreference_carUiShowChevron:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiPreference;->a:Z

    .line 77
    sget p2, Lcom/android/car/ui/e$j;->CarUiPreference_car_ui_ux_restricted:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiPreference;->d:Z

    .line 78
    sget p2, Lcom/android/car/ui/e$j;->CarUiPreference_carUiClickableWhileDisabled:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/car/ui/preference/CarUiPreference;->e:Z

    .line 80
    iget-boolean p2, p0, Lcom/android/car/ui/preference/CarUiPreference;->e:Z

    if-eqz p2, :cond_0

    .line 81
    invoke-super {p0, p3}, Landroidx/preference/Preference;->b(Z)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->e:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->c:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    .line 127
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->A()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->b:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    .line 131
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-super {p0}, Landroidx/preference/Preference;->P()V

    :cond_3
    :goto_0
    return-void
.end method

.method public U()V
    .locals 2

    .line 97
    invoke-super {p0}, Landroidx/preference/Preference;->U()V

    .line 99
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/e$b;->car_ui_preference_show_chevron:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->O()Landroidx/preference/Preference$c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->q()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    :cond_1
    sget v0, Lcom/android/car/ui/e$g;->car_ui_preference_chevron:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiPreference;->e(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroidx/preference/g;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/g;)V

    .line 91
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->A()Z

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->b()Z

    move-result v1

    .line 91
    invoke-static {p1, v0, v1}, Laiq;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPreference;->P()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 140
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "android:shouldDisableView isunsupported on CarUiPreferences"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->d:Z

    return v0
.end method

.method public c()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->b:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->e:Z

    return v0
.end method

.method public e()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPreference;->c:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public k(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiPreference;->a:Z

    return-void
.end method
