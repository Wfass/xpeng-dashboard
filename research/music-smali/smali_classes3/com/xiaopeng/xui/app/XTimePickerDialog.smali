.class public Lcom/xiaopeng/xui/app/XTimePickerDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "XTimePickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;
.implements Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;


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
    .locals 1

    .line 30
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p3, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimeSetListener:Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 34
    sget p2, Lbyg$j;->x_time_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    const-string p2, " "

    .line 37
    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 38
    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 40
    sget p2, Lbyg$h;->x_time_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setOnTimeChangedListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;II)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xui/app/XTimePickerDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;II)V

    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    if-nez p1, :cond_0

    .line 52
    sget p0, Lbyg$m;->XDialogView_Large:I

    return p0

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
    .locals 2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimeSetListener:Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;

    if-eqz p1, :cond_2

    .line 102
    iget-object p2, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 103
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xui/app/XTimePickerDialog$OnXTimeSetListener;->onTimeSet(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTimeChanged(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V
    .locals 0

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XTimePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public updateTime(II)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XTimePickerDialog;->mTimePicker:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
