.class abstract Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;
.super Ljava/lang/Object;
.source "XDatePicker.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$XDatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractXDatePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

.field private mAutofilledValue:J

.field protected mContext:Landroid/content/Context;

.field protected mCurrentDate:Landroid/icu/util/Calendar;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mOnDateChangedListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

.field protected mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;Landroid/content/Context;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 219
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public final autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p1

    .line 252
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    .line 253
    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 254
    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    .line 253
    invoke-virtual {p0, v2, v3, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->updateDate(III)V

    .line 258
    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mAutofilledValue:J

    return-void

    .line 245
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " could not be autofilled into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 4

    .line 263
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mAutofilledValue:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 265
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 266
    :goto_0
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method protected getFormattedCurrentDate()Ljava/lang/String;
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x16

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 284
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->getFormattedCurrentDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected resetAutofilledValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 274
    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mAutofilledValue:J

    return-void
.end method

.method public setAutoFillChangeListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mAutoFillChangeListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 227
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->onLocaleChanged(Ljava/util/Locale;)V

    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mOnDateChangedListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    return-void
.end method
