.class Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;
.super Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;
.source "XTimePickerSpinnerDelegate.java"


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true


# instance fields
.field private final mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

.field private final mTempCalendar:Landroid/icu/util/Calendar;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 36
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaopeng/xpui/R$styleable;->XTimePicker:[I

    invoke-virtual {v1, p3, v2, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 38
    sget p4, Lcom/xiaopeng/xpui/R$styleable;->XTimePicker_tp_xTimePickerLayout:I

    sget p5, Lcom/xiaopeng/xpui/R$layout;->x_time_picker_layout:I

    invoke-virtual {p3, p4, p5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 40
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    iget-object p3, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 43
    iget-object p5, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const/4 p4, 0x0

    .line 44
    invoke-virtual {p3, p4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 47
    sget p3, Lcom/xiaopeng/xpui/R$id;->hour:I

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XNumberPicker;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 48
    invoke-virtual {p1, p4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    const/16 p3, 0x17

    .line 49
    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    const-wide/16 v1, 0x64

    .line 50
    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    const/16 p1, 0x18

    new-array p3, p1, [Ljava/lang/String;

    move p5, p4

    :goto_0
    if-ge p5, p1, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/xpui/R$string;->x_time_picker_hour:I

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p4

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    new-instance p3, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$1;

    invoke-direct {p3, p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$1;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    sget p3, Lcom/xiaopeng/xpui/R$id;->minute:I

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XNumberPicker;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 65
    invoke-virtual {p1, p4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    const/16 p3, 0x3b

    .line 66
    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 67
    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 68
    invoke-static {}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTwoDigitFormatter()Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFormatter(Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;)V

    const/16 p1, 0x3c

    new-array p3, p1, [Ljava/lang/String;

    move p5, p4

    :goto_1
    if-ge p5, p1, :cond_1

    .line 71
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$string;->x_time_picker_minute:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    new-instance p2, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    const/16 p2, 0xb

    .line 93
    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setHour(I)V

    const/16 p2, 0xc

    .line 94
    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setMinute(I)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 97
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setImportantForAccessibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    return-object p0
.end method

.method private onTimeChanged()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->sendAccessibilityEvent(I)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getHour()I

    move-result v2

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    .line 109
    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V

    :cond_1
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    if-eqz p2, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_1
    return-void
.end method

.method private setCurrentMinute(IZ)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    if-eqz p2, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onTimeChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 202
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 213
    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x81

    .line 212
    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 193
    instance-of v0, p1, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 194
    check-cast p1, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;

    .line 195
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setHour(I)V

    .line 196
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setMinute(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3

    .line 188
    new-instance v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-object v0
.end method

.method public setDate(II)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 164
    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setCurrentMinute(IZ)V

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setEnabled(Z)V

    .line 173
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setHour(I)V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    return-void
.end method

.method public setMinute(I)V
    .locals 1

    const/4 v0, 0x1

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setCurrentMinute(IZ)V

    return-void
.end method
