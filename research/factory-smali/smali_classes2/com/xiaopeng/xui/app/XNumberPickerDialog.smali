.class public Lcom/xiaopeng/xui/app/XNumberPickerDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "XNumberPickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


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
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "values"    # [Ljava/lang/String;

    .line 22
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 25
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_number_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 26
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 29
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 30
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 32
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_number_picker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/XNumberPicker;

    iput-object v2, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 33
    if-eqz p3, :cond_0

    .line 34
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 35
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 36
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v2, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # [Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 42
    if-nez p1, :cond_0

    .line 46
    sget v0, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    return v0

    .line 48
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
    .locals 3
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 85
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberSetListener:Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberSetListener:Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getDisplayedValueForCurrentSelection()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;->onXNumberSet(Lcom/xiaopeng/xui/widget/XNumberPicker;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberPicker:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 95
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onValueChange(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V
    .locals 0
    .param p1, "picker"    # Lcom/xiaopeng/xui/widget/XNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 100
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 65
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 66
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 70
    return-void
.end method

.method public setXNumberSetListener(Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XNumberPickerDialog;->mNumberSetListener:Lcom/xiaopeng/xui/app/XNumberPickerDialog$OnXNumberSetListener;

    .line 78
    return-void
.end method
