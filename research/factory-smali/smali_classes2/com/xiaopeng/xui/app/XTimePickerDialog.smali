.class public Lcom/xiaopeng/xui/app/XTimePickerDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "XTimePickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;
    }
.end annotation


# instance fields
.field private final mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

.field private final mTimeSetListener:Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .line 30
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p3, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimeSetListener:Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_time_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 37
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 38
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 40
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_time_picker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    iput-object v2, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 41
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 42
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 43
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v2, p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setOnTimeChangedListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I

    .line 25
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xui/app/XTimePickerDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;II)V

    .line 26
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 48
    if-nez p1, :cond_0

    .line 52
    sget v0, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    return v0

    .line 54
    :cond_0
    return p1
.end method


# virtual methods
.method public getXTimePicker()Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    return-object v0
.end method

.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 4
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 96
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimeSetListener:Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimeSetListener:Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 103
    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 102
    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;->onTimeSet(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 110
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTimeChanged(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 91
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

    .line 79
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 74
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

    .line 69
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 64
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 85
    return-void
.end method
