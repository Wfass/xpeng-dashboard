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
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

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

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .line 36
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/xui/app/XDatePickerDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;Ljava/util/Calendar;III)V

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;Ljava/util/Calendar;III)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I

    .line 42
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_date_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 47
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 48
    const-string v2, " "

    invoke-virtual {p0, v2, p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 50
    if-eqz p4, :cond_0

    .line 51
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result p5

    .line 52
    const/4 v2, 0x2

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result p6

    .line 53
    const/4 v2, 0x5

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result p7

    .line 56
    :cond_0
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_date_picker:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    iput-object v2, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 57
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v2, p5, p6, p7, p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->init(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    .line 58
    iput-object p3, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "dayOfMonth"    # I

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

    .line 32
    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "themeResId"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 91
    if-nez p1, :cond_0

    .line 95
    sget v0, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    return v0

    .line 97
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
    .locals 5
    .param p1, "dialog"    # Lcom/xiaopeng/xui/app/XDialog;
    .param p2, "which"    # I

    .line 113
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->clearFocus()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 120
    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getDayOfMonth()I

    move-result v4

    .line 119
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;->onDateSet(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 127
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateChanged(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V
    .locals 1
    .param p1, "view"    # Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->init(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    .line 109
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

    .line 78
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 73
    return-void
.end method

.method public setOnXDateSetListener(Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;)V
    .locals 0
    .param p1, "dateSetListener"    # Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDateSetListener:Lcom/xiaopeng/xui/app/XDatePickerDialog$OnXDateSetListener;

    .line 103
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

    .line 68
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1, p0}, Lcom/xiaopeng/xui/app/XDatePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 63
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XDatePickerDialog;->mDatePicker:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->updateDate(III)V

    .line 83
    return-void
.end method
