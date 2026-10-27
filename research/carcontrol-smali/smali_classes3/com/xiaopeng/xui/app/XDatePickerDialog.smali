.class public Lcom/xiaopeng/xui/app/XDatePickerDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "XDatePickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;
.implements Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;
    }
.end annotation


# instance fields
.field private final mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

.field private mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 22
    sget v2, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XDatePickerDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XDatePickerDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;III)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XDatePickerDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;Ljava/util/Calendar;III)V
    .locals 2

    .line 42
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 45
    sget p2, Lcom/xiaopeng/xpui/R$layout;->x_date_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    const-string p2, " "

    .line 47
    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 48
    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 51
    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 p2, 0x2

    .line 52
    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p6

    const/4 p2, 0x5

    .line 53
    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p7

    .line 56
    :cond_0
    sget p2, Lcom/xiaopeng/xpui/R$id;->x_date_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 57
    invoke-virtual {p1, p5, p6, p7, p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->init(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    .line 58
    iput-object p3, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;III)V
    .locals 8

    .line 31
    sget v2, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XDatePickerDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;Ljava/util/Calendar;III)V

    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    if-nez p1, :cond_0

    .line 95
    sget p0, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public getXDatePicker()Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    return-object v0
.end method

.method public onClick(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 3

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    if-eqz p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->clearFocus()V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 120
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getDayOfMonth()I

    move-result v2

    .line 119
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;->onDateSet(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDateChanged(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->init(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public setOnXDateSetListener(Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->updateDate(III)V

    return-void
.end method
