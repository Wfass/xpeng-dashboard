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
    .locals 19
    .param p1, "delegate"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v0, p0

    .line 34
    invoke-direct/range {p0 .. p2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;Landroid/content/Context;)V

    .line 28
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 36
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/xiaopeng/xpui/R$styleable;->XTimePicker:[I

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 38
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XTimePicker_tp_xTimePickerLayout:I

    sget v7, Lcom/xiaopeng/xpui/R$layout;->x_time_picker_layout:I

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 40
    .local v3, "layoutResourceId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    iget-object v7, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 43
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget-object v8, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v7, v3, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 44
    .local v8, "view":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 47
    sget v10, Lcom/xiaopeng/xpui/R$id;->hour:I

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/xui/widget/XNumberPicker;

    iput-object v10, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 48
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v10, v9}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 49
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/16 v12, 0x17

    invoke-virtual {v10, v12}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 50
    iget-object v10, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const-wide/16 v12, 0x64

    invoke-virtual {v10, v12, v13}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 51
    const/16 v10, 0x18

    new-array v10, v10, [Ljava/lang/String;

    .line 52
    .local v10, "hourDisplayValues":[Ljava/lang/String;
    move v14, v9

    .local v14, "i":I
    :goto_0
    array-length v15, v10

    if-ge v14, v15, :cond_0

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget v12, Lcom/xiaopeng/xpui/R$string;->x_time_picker_hour:I

    new-array v13, v1, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v13, v9

    invoke-virtual {v15, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v14

    .line 52
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v12, 0x64

    goto :goto_0

    .line 56
    .end local v14    # "i":I
    :cond_0
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v12, v10}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 57
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    new-instance v13, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$1;

    invoke-direct {v13, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$1;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 64
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    sget v13, Lcom/xiaopeng/xpui/R$id;->minute:I

    invoke-virtual {v12, v13}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/xui/widget/XNumberPicker;

    iput-object v12, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 65
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v12, v9}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 66
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/16 v13, 0x3b

    invoke-virtual {v12, v13}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 67
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const-wide/16 v13, 0x64

    invoke-virtual {v12, v13, v14}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 68
    iget-object v12, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTwoDigitFormatter()Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFormatter(Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;)V

    .line 69
    const/16 v12, 0x3c

    new-array v12, v12, [Ljava/lang/String;

    .line 70
    .local v12, "minuteDisplayValues":[Ljava/lang/String;
    move v13, v9

    .local v13, "i":I
    :goto_1
    array-length v14, v12

    if-ge v13, v14, :cond_1

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/xiaopeng/xpui/R$string;->x_time_picker_minute:I

    move-object/from16 v18, v2

    new-array v2, v1, [Ljava/lang/Object;

    .end local v2    # "a":Landroid/content/res/TypedArray;
    .local v18, "a":Landroid/content/res/TypedArray;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v9

    invoke-virtual {v14, v15, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v13

    .line 70
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v18

    goto :goto_1

    .line 74
    .end local v13    # "i":I
    .end local v18    # "a":Landroid/content/res/TypedArray;
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    :cond_1
    move-object/from16 v18, v2

    .end local v2    # "a":Landroid/content/res/TypedArray;
    .restart local v18    # "a":Landroid/content/res/TypedArray;
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v2, v12}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 75
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    new-instance v13, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;

    invoke-direct {v13, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate$2;-><init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V

    invoke-virtual {v2, v13}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 92
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 93
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setHour(I)V

    .line 94
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v2, v13}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setMinute(I)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 97
    invoke-virtual {v0, v9}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 101
    :cond_2
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 102
    iget-object v2, v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mDelegator:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->setImportantForAccessibility(I)V

    .line 104
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;)Lcom/xiaopeng/xui/widget/XNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    return-object v0
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

    .line 115
    :cond_1
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 1
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 130
    if-eqz p2, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onTimeChanged()V

    .line 133
    :cond_1
    return-void
.end method

.method private setCurrentMinute(IZ)V
    .locals 1
    .param p1, "minute"    # I
    .param p2, "notifyTimeChanged"    # Z

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 151
    if-eqz p2, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onTimeChanged()V

    .line 154
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 202
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 203
    const/4 v0, 0x1

    return v0
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
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 208
    const/4 v0, 0x1

    .line 209
    .local v0, "flags":I
    or-int/lit16 v0, v0, 0x80

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getHour()I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mTempCalendar:Landroid/icu/util/Calendar;

    .line 213
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 212
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 193
    instance-of v0, p1, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 194
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;

    .line 195
    .local v0, "ss":Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setHour(I)V

    .line 196
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setMinute(I)V

    .line 198
    .end local v0    # "ss":Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3
    .param p1, "superState"    # Landroid/os/Parcelable;

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
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 164
    invoke-direct {p0, p2, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setCurrentMinute(IZ)V

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->onTimeChanged()V

    .line 166
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mHourSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setEnabled(Z)V

    .line 173
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 174
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 120
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/timepicker/XTimePickerSpinnerDelegate;->setCurrentMinute(IZ)V

    .line 143
    return-void
.end method
