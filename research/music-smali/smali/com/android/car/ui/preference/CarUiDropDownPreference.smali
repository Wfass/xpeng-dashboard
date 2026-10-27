.class public Lcom/android/car/ui/preference/CarUiDropDownPreference;
.super Landroidx/preference/DropDownPreference;
.source "CarUiDropDownPreference.java"

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
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->b:Z

    return-void
.end method


# virtual methods
.method public P()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->ab()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->a:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 99
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-super {p0}, Landroidx/preference/DropDownPreference;->P()V

    :cond_2
    :goto_0
    return-void
.end method

.method public U()V
    .locals 2

    .line 75
    invoke-super {p0}, Landroidx/preference/DropDownPreference;->U()V

    .line 77
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/car/ui/e$b;->car_ui_preference_show_chevron:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    sget v0, Lcom/android/car/ui/e$g;->car_ui_preference_chevron:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->e(I)V

    return-void
.end method

.method public a(Landroidx/preference/g;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Landroidx/preference/DropDownPreference;->a(Landroidx/preference/g;)V

    .line 91
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->ab()Z

    move-result v0

    invoke-static {p1, v0}, Laiq;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public ab()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiDropDownPreference;->b:Z

    return v0
.end method

.method protected g()V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiDropDownPreference;->T()Landroidx/preference/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/e;->a(Landroidx/preference/Preference;)V

    return-void
.end method
