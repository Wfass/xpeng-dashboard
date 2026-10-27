.class public Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "CarUiTwoActionSwitchPreference.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field protected c:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->h()V

    return-void
.end method

.method public static synthetic lambda$D8QDdyHq3wCF3RNURUwamhe83jc(Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a(Landroid/util/AttributeSet;)V

    .line 69
    sget p1, Lcom/android/car/ui/e$g;->car_ui_preference_two_action_switch:I

    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->a(I)V

    return-void
.end method

.method public a(Landroidx/preference/g;)V
    .locals 6

    .line 83
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a(Landroidx/preference/g;)V

    .line 85
    iget-object v0, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v1, Lcom/android/car/ui/e$e;->car_ui_first_action_container:I

    invoke-static {v0, v1}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 87
    iget-object v1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v2, Lcom/android/car/ui/e$e;->car_ui_second_action_container:I

    invoke-static {v1, v2}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 89
    iget-object v2, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v3, Lcom/android/car/ui/e$e;->car_ui_secondary_action:I

    invoke-static {v2, v3}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 91
    iget-object v3, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v4, Lcom/android/car/ui/e$e;->car_ui_secondary_action_concrete:I

    invoke-static {v3, v4}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 94
    iget-object v4, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 95
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 96
    new-instance p1, Lcom/android/car/ui/preference/-$$Lambda$56uDNFK2Yubbe15_gh3QldAfWqA;

    invoke-direct {p1, p0}, Lcom/android/car/ui/preference/-$$Lambda$56uDNFK2Yubbe15_gh3QldAfWqA;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->A()Z

    move-result p1

    const/4 v4, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    .line 97
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->A()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->b()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v5

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v4

    .line 99
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 102
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->b:Z

    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_4

    :cond_4
    const/16 p1, 0x8

    :goto_4
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->d:Z

    invoke-virtual {v3, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->f()Z

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 106
    new-instance p1, Lcom/android/car/ui/preference/-$$Lambda$CarUiTwoActionSwitchPreference$D8QDdyHq3wCF3RNURUwamhe83jc;

    invoke-direct {p1, p0}, Lcom/android/car/ui/preference/-$$Lambda$CarUiTwoActionSwitchPreference$D8QDdyHq3wCF3RNURUwamhe83jc;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->f()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->b()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move p1, v5

    goto :goto_6

    :cond_6
    :goto_5
    move p1, v4

    .line 107
    :goto_6
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->f()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->b()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    move v4, v5

    .line 109
    :cond_8
    :goto_7
    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->f()Z

    move-result p1

    .line 113
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->b()Z

    move-result v0

    .line 112
    invoke-static {v2, p1, v0}, Laiq;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected l()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->d:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->i()V

    .line 76
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->c:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 77
    iget-boolean v1, p0, Lcom/android/car/ui/preference/CarUiTwoActionSwitchPreference;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
