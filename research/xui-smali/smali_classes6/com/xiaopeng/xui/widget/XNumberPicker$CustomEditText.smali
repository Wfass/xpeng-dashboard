.class public Lcom/xiaopeng/xui/widget/XNumberPicker$CustomEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "XNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 1949
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1950
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .line 1954
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onEditorAction(I)V

    .line 1955
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1956
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XNumberPicker$CustomEditText;->clearFocus()V

    .line 1958
    :cond_0
    return-void
.end method
