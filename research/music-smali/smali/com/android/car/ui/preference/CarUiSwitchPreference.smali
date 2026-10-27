.class public Lcom/android/car/ui/preference/CarUiSwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source "CarUiSwitchPreference.java"

# interfaces
.implements Lcom/android/car/ui/preference/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
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
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->d:Z

    .line 48
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->e:Z

    .line 63
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/e$j;->CarUiPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    sget v0, Lcom/android/car/ui/e$j;->CarUiPreference_car_ui_ux_restricted:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->d:Z

    .line 74
    sget v0, Lcom/android/car/ui/e$j;->CarUiPreference_carUiClickableWhileDisabled:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->e:Z

    .line 76
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->e:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0, v1}, Landroidx/preference/SwitchPreference;->b(Z)V

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->e:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->c:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    .line 95
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->A()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->b:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    .line 99
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-super {p0}, Landroidx/preference/SwitchPreference;->P()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Landroidx/preference/g;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->a(Landroidx/preference/g;)V

    .line 86
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->A()Z

    move-result v0

    .line 87
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->h()Z

    move-result v1

    .line 86
    invoke-static {p1, v0, v1}, Laiq;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Dynamically setting shouldDisableView isunsupported in CarUiPreferences"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiSwitchPreference;->d:Z

    return v0
.end method
