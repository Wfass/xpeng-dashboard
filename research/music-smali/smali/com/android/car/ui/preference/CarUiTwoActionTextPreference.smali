.class public Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;
.super Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.source "CarUiTwoActionTextPreference.java"


# instance fields
.field protected c:Ljava/lang/Runnable;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->h()V

    return-void
.end method

.method public static synthetic lambda$R4gIRinWnjToJI2O5s-Gh_tstJg(Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a(Landroid/util/AttributeSet;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/e$j;->CarUiTwoActionTextPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    :try_start_0
    sget v0, Lcom/android/car/ui/e$j;->CarUiTwoActionTextPreference_secondaryActionStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 74
    sget v1, Lcom/android/car/ui/e$j;->CarUiTwoActionTextPreference_secondaryActionText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->d:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_0

    .line 80
    sget p1, Lcom/android/car/ui/e$g;->car_ui_preference_two_action_text:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/car/ui/e$g;->car_ui_preference_two_action_text_borderless:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    throw v0
.end method

.method public a(Landroidx/preference/g;)V
    .locals 5

    .line 94
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a(Landroidx/preference/g;)V

    .line 96
    iget-object v0, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v1, Lcom/android/car/ui/e$e;->car_ui_first_action_container:I

    invoke-static {v0, v1}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 98
    iget-object v1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v2, Lcom/android/car/ui/e$e;->car_ui_second_action_container:I

    invoke-static {v1, v2}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 100
    iget-object v2, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v3, Lcom/android/car/ui/e$e;->car_ui_secondary_action:I

    invoke-static {v2, v3}, Laiq;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 103
    iget-object v3, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 104
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 105
    new-instance p1, Lcom/android/car/ui/preference/-$$Lambda$8ZVxF0rLR7bI5Tuka6ACrv0ywYY;

    invoke-direct {p1, p0}, Lcom/android/car/ui/preference/-$$Lambda$8ZVxF0rLR7bI5Tuka6ACrv0ywYY;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->A()Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->A()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v4

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v3

    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 109
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->b:Z

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_4

    :cond_4
    const/16 p1, 0x8

    :goto_4
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance p1, Lcom/android/car/ui/preference/-$$Lambda$CarUiTwoActionTextPreference$R4gIRinWnjToJI2O5s-Gh_tstJg;

    invoke-direct {p1, p0}, Lcom/android/car/ui/preference/-$$Lambda$CarUiTwoActionTextPreference$R4gIRinWnjToJI2O5s-Gh_tstJg;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->f()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move p1, v4

    goto :goto_6

    :cond_6
    :goto_5
    move p1, v3

    :goto_6
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->f()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    move v3, v4

    :cond_8
    :goto_7
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->f()Z

    move-result p1

    .line 116
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->b()Z

    move-result v0

    .line 115
    invoke-static {v2, p1, v0}, Laiq;->a(Landroid/view/View;ZZ)V

    return-void
.end method

.method protected l()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionTextPreference;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
