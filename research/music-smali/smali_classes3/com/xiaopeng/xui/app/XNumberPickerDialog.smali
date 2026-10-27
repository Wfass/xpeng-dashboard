.class public Lcom/xiaopeng/xui/app/XNumberPickerDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "XNumberPickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
.implements Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;
    }
.end annotation


# instance fields
.field private final mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

.field private mNumberSetListener:Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 25
    sget p2, Lbyg$j;->x_number_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    const-string p2, " "

    .line 29
    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 30
    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 32
    sget p2, Lbyg$h;->x_number_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XNumberPicker;

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    if-eqz p3, :cond_0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    array-length p2, p3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    if-nez p1, :cond_0

    .line 46
    sget p0, Lbyg$m;->XDialogView_Large:I

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getXNumberPicker()Lcom/xiaopeng/xui/widget/XNumberPicker;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    return-object v0
.end method

.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberSetListener:Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;

    if-eqz p1, :cond_2

    .line 88
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;->onXNumberSet(Lcom/xiaopeng/xui/widget/XNumberPicker;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onValueChange(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V
    .locals 0

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public setXNumberSetListener(Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberSetListener:Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;

    return-void
.end method
