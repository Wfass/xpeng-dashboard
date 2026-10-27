.class public Lcom/xiaopeng/devtools/view/DigitsEditText;
.super Landroid/widget/EditText;
.source "DigitsEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/DigitsEditText;->getInputType()I

    move-result p1

    const/high16 p2, 0x80000

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/DigitsEditText;->setInputType(I)V

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 23
    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 26
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    .line 27
    invoke-virtual {p0, p2}, Lcom/xiaopeng/devtools/view/DigitsEditText;->setShowSoftInputOnFocus(Z)V

    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 35
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 38
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/DigitsEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/DigitsEditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 49
    :cond_0
    return p1
.end method
