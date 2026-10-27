.class public Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;,
        Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;,
        Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "XTimePicker"


# instance fields
.field private final mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 50
    sget v0, Lcom/xiaopeng/xpui/R$style;->XTimePicker:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setImportantForAutofill(I)V

    .line 61
    :cond_0
    new-instance v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    .line 64
    new-instance p1, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$1;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;)V

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->setAutoFillChangeListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->autofill(Landroid/view/autofill/AutofillValue;)V

    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;)V

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 150
    const-class v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->getHour()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->getMinute()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 143
    check-cast p1, Landroid/view/View$BaseSavedState;

    .line 144
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 137
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setHour(I)V

    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 0

    .line 102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setMinute(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setHour(I)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-static {p1, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->setHour(I)V

    return-void
.end method

.method public setMinute(I)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-static {p1, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnTimeChangedListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->mDelegate:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;->setOnTimeChangedListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;)V

    return-void
.end method
