.class public Lcom/xiaopeng/xui/app/f;
.super Lcom/xiaopeng/xui/app/c;
.source "XTimePickerDialog.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/d$a;
.implements Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/f$a;
    }
.end annotation


# instance fields
.field private final aar:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

.field private final aas:Lcom/xiaopeng/xui/app/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/f$a;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # Lcom/xiaopeng/xui/app/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 30
    invoke-static {p1, p2}, Lcom/xiaopeng/xui/app/f;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p3, p0, Lcom/xiaopeng/xui/app/f;->aas:Lcom/xiaopeng/xui/app/f$a;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 34
    sget p2, Lcom/xiaopeng/xpui/R$layout;->x_time_picker:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/f;->qs()Landroid/view/ViewGroup;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/app/f;->d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;

    .line 37
    const-string p2, " "

    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/f;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    .line 38
    const-string p2, " "

    invoke-virtual {p0, p2, p0}, Lcom/xiaopeng/xui/app/f;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    .line 40
    sget p2, Lcom/xiaopeng/xpui/R$id;->x_time_picker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    iput-object p1, p0, Lcom/xiaopeng/xui/app/f;->aar:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/xui/app/f;->aar:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/xui/app/f;->aar:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/xui/app/f;->aar:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setOnTimeChangedListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/f$a;II)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaopeng/xui/app/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xui/app/f;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/f$a;II)V

    .line 26
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0

    .line 48
    if-nez p1, :cond_0

    .line 52
    sget p0, Lcom/xiaopeng/xpui/R$style;->XDialogView_Large:I

    return p0

    .line 54
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

    .line 69
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V
    .locals 0

    .line 91
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

    .line 79
    invoke-super {p0, p1, p0}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/xiaopeng/xui/app/c;I)V
    .locals 2

    .line 96
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/f;->aas:Lcom/xiaopeng/xui/app/f$a;

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/xui/app/f;->aas:Lcom/xiaopeng/xui/app/f$a;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/f;->aar:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/f;->aar:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/f;->aar:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 103
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    invoke-interface {p1, p2, v0, v1}, Lcom/xiaopeng/xui/app/f$a;->onTimeSet(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-super {p0}, Lcom/xiaopeng/xui/app/c;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

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
