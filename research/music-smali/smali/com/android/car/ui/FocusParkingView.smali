.class public Lcom/android/car/ui/FocusParkingView;
.super Landroid/view/View;
.source "FocusParkingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/FocusParkingView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/ViewGroup;

.field private b:Lcom/android/car/ui/FocusParkingView$a;

.field private c:Landroid/view/View;

.field private d:Lcom/android/car/ui/f$c;

.field private e:Z

.field private f:Z

.field private final g:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    .line 114
    new-instance v0, Lcom/android/car/ui/-$$Lambda$FocusParkingView$4KHjenUFKjEz__WlG3RC_AcSadM;

    invoke-direct {v0, p0}, Lcom/android/car/ui/-$$Lambda$FocusParkingView$4KHjenUFKjEz__WlG3RC_AcSadM;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    iput-object v0, p0, Lcom/android/car/ui/FocusParkingView;->g:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    .line 114
    new-instance v0, Lcom/android/car/ui/-$$Lambda$FocusParkingView$4KHjenUFKjEz__WlG3RC_AcSadM;

    invoke-direct {v0, p0}, Lcom/android/car/ui/-$$Lambda$FocusParkingView$4KHjenUFKjEz__WlG3RC_AcSadM;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    iput-object v0, p0, Lcom/android/car/ui/FocusParkingView;->g:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 105
    iput-boolean p3, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    .line 114
    new-instance p3, Lcom/android/car/ui/-$$Lambda$FocusParkingView$4KHjenUFKjEz__WlG3RC_AcSadM;

    invoke-direct {p3, p0}, Lcom/android/car/ui/-$$Lambda$FocusParkingView$4KHjenUFKjEz__WlG3RC_AcSadM;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    iput-object p3, p0, Lcom/android/car/ui/FocusParkingView;->g:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 105
    iput-boolean p3, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    .line 114
    new-instance p3, Lcom/android/car/ui/-$$Lambda$FocusParkingView$4KHjenUFKjEz__WlG3RC_AcSadM;

    invoke-direct {p3, p0}, Lcom/android/car/ui/-$$Lambda$FocusParkingView$4KHjenUFKjEz__WlG3RC_AcSadM;-><init>(Lcom/android/car/ui/FocusParkingView;)V

    iput-object p3, p0, Lcom/android/car/ui/FocusParkingView;->g:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 150
    sget-object v1, Laip$d;->FocusParkingView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 151
    sget p2, Laip$d;->FocusParkingView_shouldRestoreFocus:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    .line 156
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/car/ui/FocusParkingView;->setFocusable(I)V

    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/car/ui/FocusParkingView;->setVisibility(I)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/car/ui/FocusParkingView;->setEnabled(Z)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/car/ui/FocusParkingView;->setClickable(Z)V

    const/4 p2, 0x0

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/car/ui/FocusParkingView;->setAlpha(F)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/car/ui/FocusParkingView;->setDefaultFocusHighlightEnabled(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 172
    sget p2, Laip$c;->car_ui_focus_history_cache_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 173
    sget v0, Laip$c;->car_ui_focus_history_expiration_period_ms:I

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 175
    new-instance v1, Lcom/android/car/ui/f$c;

    int-to-long v2, v0

    invoke-direct {v1, p2, v2, v3}, Lcom/android/car/ui/f$c;-><init>(IJ)V

    iput-object v1, p0, Lcom/android/car/ui/FocusParkingView;->d:Lcom/android/car/ui/f$c;

    .line 178
    sget p2, Laip$a;->car_ui_focus_area_default_focus_overrides_history:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/car/ui/FocusParkingView;->f:Z

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/car/ui/FocusParkingView;->d:Lcom/android/car/ui/f$c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/car/ui/f$c;->a(Landroid/view/View;J)V

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    .line 187
    invoke-static {p1}, Lais;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 123
    instance-of p1, p2, Lcom/android/car/ui/FocusParkingView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 124
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/view/View;)V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/android/car/ui/FocusParkingView;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/car/ui/FocusParkingView$1;

    invoke-direct {v2, p0, v0}, Lcom/android/car/ui/FocusParkingView$1;-><init>(Lcom/android/car/ui/FocusParkingView;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private a(Z)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->isInTouchMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/android/car/ui/FocusParkingView;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->d:Lcom/android/car/ui/f$c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/car/ui/f$c;->a(J)Landroid/view/View;

    move-result-object p1

    .line 333
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/car/ui/FocusParkingView;->f:Z

    .line 332
    invoke-static {v1, p1, v2}, Lais;->a(Landroid/view/View;Landroid/view/View;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/16 p1, 0x82

    const/4 v0, 0x0

    .line 339
    invoke-super {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$4KHjenUFKjEz__WlG3RC_AcSadM(Lcom/android/car/ui/FocusParkingView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 244
    const-class v0, Lcom/android/car/ui/FocusParkingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 200
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 201
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusParkingView;->g:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 203
    iget-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lais;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/FocusParkingView;->g:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 211
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x1

    .line 195
    invoke-virtual {p0, p1, p1}, Lcom/android/car/ui/FocusParkingView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The window of Activity ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lais;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "] gained"

    goto :goto_0

    :cond_0
    const-string v1, "] lost"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " focus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusParkingView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const/16 v0, 0x82

    const/4 v1, 0x0

    .line 227
    invoke-super {p0, v0, v1}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 231
    invoke-direct {p0, v1}, Lcom/android/car/ui/FocusParkingView;->a(Landroid/view/View;)V

    goto :goto_1

    .line 232
    :cond_1
    iget-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/car/ui/FocusParkingView;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 237
    invoke-direct {p0, v0}, Lcom/android/car/ui/FocusParkingView;->a(Z)Z

    .line 239
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/high16 v2, 0x4000000

    if-eq p1, v2, :cond_3

    const/high16 v2, 0x8000000

    if-eq p1, v2, :cond_2

    const/high16 v2, 0x10000000

    if-eq p1, v2, :cond_0

    .line 270
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/android/car/ui/FocusParkingView;->b:Lcom/android/car/ui/FocusParkingView$a;

    if-eqz p1, :cond_1

    .line 265
    invoke-interface {p1}, Lcom/android/car/ui/FocusParkingView$a;->a()V

    return v0

    :cond_1
    return v1

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 255
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result p1

    return p1

    .line 251
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/car/ui/FocusParkingView;->a(Z)Z

    move-result p1

    return p1

    .line 259
    :cond_4
    invoke-virtual {p0}, Lcom/android/car/ui/FocusParkingView;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0x82

    const/4 p2, 0x0

    .line 260
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    if-nez v0, :cond_0

    .line 276
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 280
    invoke-direct {p0, p1}, Lcom/android/car/ui/FocusParkingView;->a(Z)Z

    move-result p1

    return p1
.end method

.method public restoreDefaultFocus()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, v0}, Lcom/android/car/ui/FocusParkingView;->a(Z)Z

    move-result v0

    return v0
.end method

.method public setOnPopupWindowDismiss(Lcom/android/car/ui/FocusParkingView$a;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/car/ui/FocusParkingView;->b:Lcom/android/car/ui/FocusParkingView$a;

    return-void
.end method

.method public setShouldRestoreFocus(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/android/car/ui/FocusParkingView;->e:Z

    return-void
.end method
