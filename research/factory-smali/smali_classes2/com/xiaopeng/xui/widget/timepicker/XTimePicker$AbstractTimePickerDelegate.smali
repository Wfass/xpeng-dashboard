.class abstract Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "XTimePicker.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$XTimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;
    }
.end annotation


# instance fields
.field protected mAutoFillChangeListener:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

.field private mAutofilledValue:J

.field protected final mContext:Landroid/content/Context;

.field protected final mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

.field protected final mLocale:Ljava/util/Locale;

.field protected mOnTimeChangedListener:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;Landroid/content/Context;)V
    .locals 2
    .param p1, "delegator"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 171
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 173
    return-void
.end method


# virtual methods
.method public final autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 5
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 187
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v0

    .line 194
    .local v0, "time":J
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 195
    .local v2, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 196
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->setDate(II)V

    .line 200
    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    .line 201
    return-void

    .line 188
    .end local v0    # "time":J
    .end local v2    # "cal":Landroid/icu/util/Calendar;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " could not be autofilled into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public final getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 4

    .line 205
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 206
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 210
    .local v0, "cal":Landroid/icu/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->getHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 211
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->getMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 212
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1
.end method

.method protected resetAutofilledValue()V
    .locals 2

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mAutofilledValue:J

    .line 221
    return-void
.end method

.method public setAutoFillChangeListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mAutoFillChangeListener:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

    .line 183
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

    .line 178
    return-void
.end method
