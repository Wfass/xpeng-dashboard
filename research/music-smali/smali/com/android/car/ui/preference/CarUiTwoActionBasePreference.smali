.class public abstract Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;
.super Lcom/android/car/ui/preference/CarUiPreference;
.source "CarUiTwoActionBasePreference.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/preference/CarUiPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a:Z

    .line 46
    iput-boolean p1, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->b:Z

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static varargs a(Landroid/content/res/TypedArray;[I)V
    .locals 4

    .line 167
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 168
    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting this attribute is not allowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Lcom/android/car/ui/preference/CarUiPreference;->d(I)V

    return-void
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->k(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->Q()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/car/ui/e$j;->CarUiTwoActionBasePreference:[I

    .line 75
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x4

    .line 77
    :try_start_0
    new-array v2, v2, [I

    sget v3, Lcom/android/car/ui/e$j;->CarUiTwoActionBasePreference_carUiLayout:I

    aput v3, v2, v0

    sget v0, Lcom/android/car/ui/e$j;->CarUiTwoActionBasePreference_android_layout:I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x2

    sget v4, Lcom/android/car/ui/e$j;->CarUiTwoActionBasePreference_widgetLayout:I

    aput v4, v2, v0

    const/4 v0, 0x3

    sget v4, Lcom/android/car/ui/e$j;->CarUiTwoActionBasePreference_android_widgetLayout:I

    aput v4, v2, v0

    invoke-static {v1, v2}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a(Landroid/content/res/TypedArray;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/car/ui/e$j;->CarUiTwoActionPreference:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 90
    :try_start_1
    sget v0, Lcom/android/car/ui/e$j;->CarUiTwoActionPreference_actionShown:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->b:Z

    .line 92
    sget v0, Lcom/android/car/ui/e$j;->CarUiTwoActionPreference_actionEnabled:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    throw v0

    :catchall_1
    move-exception p1

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    throw p1
.end method

.method public d(I)V
    .locals 0

    .line 158
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e(I)V
    .locals 0

    .line 163
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public f()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->c()Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->l()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->e()Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p0}, Lcom/android/car/ui/preference/CarUiTwoActionBasePreference;->e()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract l()V
.end method
