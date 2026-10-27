.class public Lcom/android/car/ui/preference/CarUiRadioButtonPreference;
.super Landroidx/preference/TwoStatePreference;
.source "CarUiRadioButtonPreference.java"

# interfaces
.implements Lcom/android/car/ui/preference/c;


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

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    sget v0, Lcom/android/car/ui/e$a;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Laiq;->b(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->c:Z

    .line 48
    invoke-direct {p0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .line 67
    sget v0, Lcom/android/car/ui/e$g;->car_ui_preference:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->d(I)V

    .line 68
    sget v0, Lcom/android/car/ui/e$g;->car_ui_radio_button_preference_widget:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->e(I)V

    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->b:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->P()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroidx/preference/g;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->a(Landroidx/preference/g;)V

    .line 87
    iget-object v0, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v1, Lcom/android/car/ui/e$e;->radio_button:I

    invoke-static {v0, v1}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 89
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->c:Z

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiRadioButtonPreference;->c:Z

    return v0
.end method
