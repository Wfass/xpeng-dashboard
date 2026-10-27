.class public Lcom/android/car/ui/preference/CarUiTwoActionPreference;
.super Lcom/android/car/ui/preference/CarUiPreference;
.source "CarUiTwoActionPreference.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 69
    sget v0, Lcom/android/car/ui/e$g;->car_ui_two_action_preference:I

    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->d(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/e$j;->CarUiTwoActionPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    sget v0, Lcom/android/car/ui/e$j;->CarUiTwoActionPreference_actionShown:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a:Z

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->k(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/g;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiPreference;->a(Landroidx/preference/g;)V

    .line 96
    iget-object v0, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v1, Lcom/android/car/ui/e$e;->car_ui_preference_container_without_widget:I

    invoke-static {v0, v1}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 98
    iget-object v1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    sget v2, Lcom/android/car/ui/e$e;->action_widget_container:I

    invoke-static {v1, v2}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 100
    iget-object v2, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    const v3, 0x1020018

    invoke-static {v2, v3}, Laiq;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 101
    iget-object p1, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 102
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/car/ui/preference/-$$Lambda$bxD3iXeY3vlmSkPYJyWMdA59Kxg;

    invoke-direct {p1, p0}, Lcom/android/car/ui/preference/-$$Lambda$bxD3iXeY3vlmSkPYJyWMdA59Kxg;-><init>(Lcom/android/car/ui/preference/CarUiTwoActionPreference;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a:Z

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 105
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a:Z

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 106
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a:Z

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 108
    iget-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->a:Z

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/car/ui/preference/CarUiTwoActionPreference;->c(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 0

    return-void
.end method
