.class public Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;,
        Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;,
        Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 51
    sget v0, Lcom/xiaopeng/xpui/R$style;->XDatePicker:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getImportantForAutofill()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->setImportantForAutofill(I)V

    .line 61
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    new-instance p2, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$1;-><init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;)V

    invoke-interface {p1, p2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->a(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V

    .line 72
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;
    .locals 7

    .line 76
    new-instance v6, Lcom/xiaopeng/xui/widget/datepicker/a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xui/widget/datepicker/a;-><init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v6
.end method


# virtual methods
.method public a(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->a(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V

    .line 82
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 181
    const-class v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->getMaxDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->getMinDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->getMonth()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->getYear()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 167
    return-void

    .line 169
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->setEnabled(Z)V

    .line 171
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->setMaxDate(J)V

    .line 161
    return-void
.end method

.method public setMinDate(J)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->setMinDate(J)V

    .line 136
    return-void
.end method

.method public setOnDateChangedListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->ahV:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;->setOnDateChangedListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V

    .line 90
    return-void
.end method
