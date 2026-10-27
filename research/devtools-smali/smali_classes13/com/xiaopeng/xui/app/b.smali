.class public Lcom/xiaopeng/xui/app/b;
.super Lcom/xiaopeng/xui/app/c;
.source "XDatePickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/d$a;
.implements Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/b$a;
    }
.end annotation


# instance fields
.field private final ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

.field private ZM:Lcom/xiaopeng/xui/app/b$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/b$a;Ljava/util/Calendar;III)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # Lcom/xiaopeng/xui/app/b$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/b;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;I)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 45
    sget p2, Lcom/xiaopeng/xpui/R$layout;->x_date_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/b;->qs()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/xui/app/b;->d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;

    .line 47
    const-string p2, " "

    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/b;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    .line 48
    const-string p2, " "

    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/b;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    .line 50
    if-eqz p4, :cond_0

    .line 51
    const/4 p2, 0x1

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p5

    .line 52
    const/4 p2, 0x2

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p6

    .line 53
    const/4 p2, 0x5

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p7

    .line 56
    :cond_0
    sget p2, Lcom/xiaopeng/xpui/R$id;->x_date_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    iput-object p1, p0, Lcom/xiaopeng/xui/app/b;->ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/xui/app/b;->ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1, p5, p6, p7, p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->a(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V

    .line 58
    iput-object p3, p0, Lcom/xiaopeng/xui/app/b;->ZM:Lcom/xiaopeng/xui/app/b$a;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/b$a;III)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaopeng/xui/app/b$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    sget v2, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/xui/app/b;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/b$a;Ljava/util/Calendar;III)V

    .line 32
    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    .line 91
    if-nez p1, :cond_0

    .line 95
    sget p0, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    return p0

    .line 97
    :cond_0
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/xui/app/b;->ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->a(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V

    .line 109
    return-void
.end method

.method public b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/xiaopeng/xui/app/c;I)V
    .locals 3

    .line 113
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/b;->ZM:Lcom/xiaopeng/xui/app/b$a;

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/xui/app/b;->ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->clearFocus()V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/xui/app/b;->ZM:Lcom/xiaopeng/xui/app/b$a;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/b;->ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/b;->ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/b;->ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 120
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/app/b;->ZL:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getDayOfMonth()I

    move-result v2

    .line 119
    invoke-interface {p1, p2, v0, v1, v2}, Lcom/xiaopeng/xui/app/b$a;->onDateSet(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-super {p0}, Lcom/xiaopeng/xui/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

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
