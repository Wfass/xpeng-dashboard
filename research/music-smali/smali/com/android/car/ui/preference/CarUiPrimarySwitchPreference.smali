.class public Lcom/android/car/ui/preference/CarUiPrimarySwitchPreference;
.super Lcom/android/car/ui/preference/CarUiSwitchPreference;
.source "CarUiPrimarySwitchPreference.java"


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0}, Lcom/android/car/ui/preference/CarUiPrimarySwitchPreference;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    .line 57
    sget v0, Lcom/android/car/ui/e$g;->car_ui_preference_primary_switch:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiPrimarySwitchPreference;->d(I)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/g;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->a(Landroidx/preference/g;)V

    .line 63
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/car/ui/preference/CarUiPrimarySwitchPreference;->b:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiPrimarySwitchPreference;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiPrimarySwitchPreference;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiSwitchPreference;->k(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiPrimarySwitchPreference;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method
