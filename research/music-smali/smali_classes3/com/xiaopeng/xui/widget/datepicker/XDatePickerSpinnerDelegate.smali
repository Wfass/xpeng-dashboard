.class public Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;
.super Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;
.source "XDatePickerSpinnerDelegate.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

.field private mIsEnabled:Z

.field private mMaxDate:Landroid/icu/util/Calendar;

.field private mMinDate:Landroid/icu/util/Calendar;

.field private mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Landroid/icu/util/Calendar;

.field private mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;-><init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;Landroid/content/Context;)V

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 64
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 68
    sget-object p1, Lbyg$n;->XDatePicker:[I

    invoke-virtual {p2, p3, p1, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    sget p3, Lbyg$n;->XDatePicker_dp_spinnersShown:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 72
    sget p4, Lbyg$n;->XDatePicker_dp_startYear:I

    const/16 p5, 0x76c

    invoke-virtual {p1, p4, p5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 74
    sget p5, Lbyg$n;->XDatePicker_dp_endYear:I

    const/16 v1, 0x834

    invoke-virtual {p1, p5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p5

    .line 75
    sget v1, Lbyg$n;->XDatePicker_dp_minDate:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    sget v2, Lbyg$n;->XDatePicker_dp_maxDate:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    sget v3, Lbyg$n;->XDatePicker_dp_xDatePickerLayout:I

    sget v4, Lbyg$j;->x_date_picker_layout:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const-string p1, "layout_inflater"

    .line 82
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 83
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1, v3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 86
    new-instance p1, Lcom/xiaopeng/xui/widget/datepicker/-$$Lambda$XDatePickerSpinnerDelegate$bvC71pUOc2APz4A8E3c-YsjbyLM;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/datepicker/-$$Lambda$XDatePickerSpinnerDelegate$bvC71pUOc2APz4A8E3c-YsjbyLM;-><init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;)V

    .line 118
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    sget v4, Lbyg$h;->pickers:I

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 120
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    sget v4, Lbyg$h;->picker1:I

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 121
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    sget v5, Lbyg$h;->picker2:I

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 122
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    sget v6, Lbyg$h;->picker3:I

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/4 v6, 0x3

    .line 123
    new-array v6, v6, [Lcom/xiaopeng/xui/widget/XNumberPicker;

    aput-object v3, v6, p2

    aput-object v4, v6, v0

    const/4 v3, 0x2

    aput-object v5, v6, v3

    .line 124
    invoke-direct {p0, v6}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->reorderSpinners([Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    .line 126
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-static {}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTwoDigitFormatter()Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFormatter(Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;)V

    .line 127
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 128
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 131
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v4, p2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 132
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget v7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mNumberOfMonths:I

    sub-int/2addr v7, v0

    invoke-virtual {v4, v7}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 133
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 134
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const-wide/16 v7, 0xc8

    invoke-virtual {v4, v7, v8}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 135
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 137
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 138
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 140
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clear()V

    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p4, p2, v0}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p4, p2, v0}, Landroid/icu/util/Calendar;->set(III)V

    .line 151
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setMinDate(J)V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->clear()V

    .line 155
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 p2, 0x1f

    const/16 p3, 0xb

    if-nez p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v2, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p5, p3, p2}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p5, p3, p2}, Landroid/icu/util/Calendar;->set(III)V

    .line 162
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 p4, 0x5

    .line 167
    invoke-virtual {p3, p4}, Landroid/icu/util/Calendar;->get(I)I

    move-result p3

    const/4 p4, 0x0

    .line 166
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->init(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_4

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->setImportantForAccessibility(I)V

    :cond_4
    return-void
.end method

.method private getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 486
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p1

    return-object p1

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 489
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p1

    .line 490
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method public static getDateFormatOrder(Ljava/lang/String;)[C
    .locals 12

    const/4 v0, 0x3

    .line 226
    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 231
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 232
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    const/4 v11, 0x1

    if-eq v6, v10, :cond_0

    if-eq v6, v7, :cond_0

    if-eq v6, v9, :cond_0

    if-ne v6, v8, :cond_4

    :cond_0
    if-ne v6, v10, :cond_1

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 235
    aput-char v10, v0, v2

    move v2, v3

    move v3, v11

    goto :goto_1

    :cond_1
    if-eq v6, v7, :cond_2

    if-ne v6, v9, :cond_3

    :cond_2
    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 238
    aput-char v9, v0, v2

    move v2, v4

    move v4, v11

    goto :goto_1

    :cond_3
    if-ne v6, v8, :cond_4

    if-nez v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    .line 241
    aput-char v8, v0, v2

    move v2, v5

    move v5, v11

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private isNewDate(III)Z
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v0, 0x2

    .line 358
    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 p2, 0x5

    .line 359
    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private notifyDateChanged()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->sendAccessibilityEvent(I)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 184
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;->onDateChanged(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mAutoFillChangeListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 188
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;->onDateChanged(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V

    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .locals 1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private reorderSpinners([Lcom/xiaopeng/xui/widget/XNumberPicker;)V
    .locals 4

    .line 202
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v0

    const/4 v1, 0x0

    .line 204
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 205
    aget-char v2, v0, v1

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_1

    const/16 v3, 0x79

    if-ne v2, v3, :cond_0

    .line 216
    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    goto :goto_1

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_1
    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    goto :goto_1

    .line 212
    :cond_2
    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setDate(III)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/Calendar;->set(III)V

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 11

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWrapSelectorWheel(Z)V

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v6}, Landroid/icu/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWrapSelectorWheel(Z)V

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWrapSelectorWheel(Z)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWrapSelectorWheel(Z)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWrapSelectorWheel(Z)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, v4

    .line 307
    :goto_1
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 308
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbyg$l;->x_date_picker_day:I

    new-array v8, v5, [Ljava/lang/Object;

    add-int/lit8 v9, v1, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    move v1, v9

    goto :goto_1

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 320
    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result v1

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMaxValue()I

    move-result v6

    add-int/2addr v6, v5

    .line 319
    invoke-static {v0, v1, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    const/16 v0, 0xc9

    .line 326
    new-array v0, v0, [Ljava/lang/String;

    move v1, v4

    .line 327
    :goto_2
    array-length v6, v0

    if-ge v1, v6, :cond_3

    .line 328
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lbyg$l;->x_date_picker_year:I

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v9}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result v9

    add-int/2addr v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 330
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWrapSelectorWheel(Z)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 517
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxDate()Landroid/icu/util/Calendar;
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0

    .line 431
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    const/16 v1, 0x834

    const/16 v2, 0xb

    const/16 v3, 0x1e

    .line 432
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/util/Calendar;->set(III)V

    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    if-eqz v0, :cond_0

    return-object v0

    .line 406
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    const/16 v1, 0x76c

    const/4 v2, 0x1

    .line 407
    invoke-virtual {v0, v1, v2, v2}, Landroid/icu/util/Calendar;->set(III)V

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 341
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setDate(III)V

    .line 342
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 343
    iput-object p4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public synthetic lambda$new$0$XDatePickerSpinnerDelegate(Lcom/xiaopeng/xui/widget/XNumberPicker;II)V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne p1, v0, :cond_2

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result p1

    if-ne p2, p1, :cond_0

    if-ne p3, v4, :cond_0

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v3, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v3, p3}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    if-ne p1, v0, :cond_5

    const/16 p1, 0xb

    if-ne p2, p1, :cond_3

    if-nez p3, :cond_3

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v2, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-ne p3, p1, :cond_4

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v2, p3}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    .line 106
    :cond_5
    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    if-ne p1, p2, :cond_6

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v4, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 113
    invoke-virtual {p3, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result p3

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setDate(III)V

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 115
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void

    .line 109
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 497
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public bridge synthetic onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 508
    instance-of v0, p1, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 509
    check-cast p1, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    .line 510
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setDate(III)V

    .line 511
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10

    .line 502
    new-instance v9, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getDayOfMonth()I

    move-result v4

    .line 503
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getMinDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getMaxDate()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJ)V

    return-object v9
.end method

.method public bridge synthetic setAutoFillChangeListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->setAutoFillChangeListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 467
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 474
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 475
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setEnabled(Z)V

    .line 441
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x6

    .line 415
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 420
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x6

    .line 390
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 395
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    return-void
.end method

.method public bridge synthetic setOnDateChangedListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->setOnDateChangedListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setDate(III)V

    .line 352
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 353
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->notifyDateChanged()V

    return-void
.end method
