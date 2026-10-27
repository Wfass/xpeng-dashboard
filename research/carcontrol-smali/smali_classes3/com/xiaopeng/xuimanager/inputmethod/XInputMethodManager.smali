.class public Lcom/xiaopeng/xuimanager/inputmethod/XInputMethodManager;
.super Ljava/lang/Object;
.source "XInputMethodManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceHideSoftInputMethod(Landroid/content/Context;)V
    .locals 1

    const-string v0, "input_method"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 23
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInputMethod()V

    return-void
.end method

.method public static getInputShown(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "input_method"

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getInputShown()Z

    move-result p0

    return p0
.end method
