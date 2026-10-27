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
    .locals 23
    .param p1, "delegator"    # Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 61
    invoke-direct/range {p0 .. p2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;-><init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;Landroid/content/Context;)V

    .line 47
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mIsEnabled:Z

    .line 63
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 64
    iput-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 68
    sget-object v4, Lcom/xiaopeng/xpui/R$styleable;->XDatePicker:[I

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 70
    .local v4, "attributesArray":Landroid/content/res/TypedArray;
    sget v8, Lcom/xiaopeng/xpui/R$styleable;->XDatePicker_dp_spinnersShown:I

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 72
    .local v8, "spinnersShown":Z
    sget v9, Lcom/xiaopeng/xpui/R$styleable;->XDatePicker_dp_startYear:I

    const/16 v10, 0x76c

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 74
    .local v9, "startYear":I
    sget v10, Lcom/xiaopeng/xpui/R$styleable;->XDatePicker_dp_endYear:I

    const/16 v11, 0x834

    invoke-virtual {v4, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 75
    .local v10, "endYear":I
    sget v11, Lcom/xiaopeng/xpui/R$styleable;->XDatePicker_dp_minDate:I

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, "minDate":Ljava/lang/String;
    sget v12, Lcom/xiaopeng/xpui/R$styleable;->XDatePicker_dp_maxDate:I

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "maxDate":Ljava/lang/String;
    sget v13, Lcom/xiaopeng/xpui/R$styleable;->XDatePicker_dp_xDatePickerLayout:I

    sget v14, Lcom/xiaopeng/xpui/R$layout;->x_date_picker_layout:I

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 79
    .local v13, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    const-string v14, "layout_inflater"

    .line 82
    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 83
    .local v14, "inflater":Landroid/view/LayoutInflater;
    iget-object v15, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v14, v13, v15, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 84
    .local v15, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 86
    new-instance v2, Lcom/xiaopeng/xui/widget/datepicker/-$$Lambda$XDatePickerSpinnerDelegate$bvC71pUOc2APz4A8E3c-YsjbyLM;

    .local v2, "onChangeListener":Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;
    invoke-direct {v2, v0}, Lcom/xiaopeng/xui/widget/datepicker/-$$Lambda$XDatePickerSpinnerDelegate$bvC71pUOc2APz4A8E3c-YsjbyLM;-><init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;)V

    .line 118
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    sget v3, Lcom/xiaopeng/xpui/R$id;->pickers:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    .line 120
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    sget v3, Lcom/xiaopeng/xpui/R$id;->picker1:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 121
    .local v1, "spinner1":Lcom/xiaopeng/xui/widget/XNumberPicker;
    iget-object v3, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    move-object/from16 v18, v4

    sget v4, Lcom/xiaopeng/xpui/R$id;->picker2:I

    .end local v4    # "attributesArray":Landroid/content/res/TypedArray;
    .local v18, "attributesArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 122
    .local v3, "spinner2":Lcom/xiaopeng/xui/widget/XNumberPicker;
    iget-object v4, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    sget v5, Lcom/xiaopeng/xpui/R$id;->picker3:I

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 123
    .local v4, "spinner3":Lcom/xiaopeng/xui/widget/XNumberPicker;
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/16 v17, 0x0

    aput-object v1, v5, v17

    const/16 v16, 0x1

    aput-object v3, v5, v16

    move-object/from16 v19, v1

    const/4 v1, 0x2

    .end local v1    # "spinner1":Lcom/xiaopeng/xui/widget/XNumberPicker;
    .local v19, "spinner1":Lcom/xiaopeng/xui/widget/XNumberPicker;
    aput-object v4, v5, v1

    .line 124
    .local v5, "pickers":[Lcom/xiaopeng/xui/widget/XNumberPicker;
    invoke-direct {v0, v5}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->reorderSpinners([Lcom/xiaopeng/xui/widget/XNumberPicker;)V

    .line 126
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-object/from16 v20, v3

    invoke-static {}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getTwoDigitFormatter()Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;

    move-result-object v3

    .end local v3    # "spinner2":Lcom/xiaopeng/xui/widget/XNumberPicker;
    .local v20, "spinner2":Lcom/xiaopeng/xui/widget/XNumberPicker;
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setFormatter(Lcom/xiaopeng/xui/widget/XNumberPicker$Formatter;)V

    .line 127
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    move-object/from16 v21, v4

    const-wide/16 v3, 0x64

    .end local v4    # "spinner3":Lcom/xiaopeng/xui/widget/XNumberPicker;
    .local v21, "spinner3":Lcom/xiaopeng/xui/widget/XNumberPicker;
    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 128
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 131
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 132
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget v3, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mNumberOfMonths:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 133
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 134
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 135
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 137
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 138
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setOnValueChangedListener(Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;)V

    .line 140
    invoke-virtual {v0, v8}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setSpinnersShown(Z)V

    .line 143
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    .line 144
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v11, v1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v9, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_0

    .line 149
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v9, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    .line 151
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setMinDate(J)V

    .line 154
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->clear()V

    .line 155
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x1f

    const/16 v4, 0xb

    if-nez v1, :cond_2

    .line 156
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-direct {v0, v12, v1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v10, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v10, v4, v3}, Landroid/icu/util/Calendar;->set(III)V

    .line 162
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setMaxDate(J)V

    .line 165
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 166
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    move-object/from16 v22, v2

    const/4 v2, 0x5

    .line 167
    .end local v2    # "onChangeListener":Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;
    .local v22, "onChangeListener":Lcom/xiaopeng/xui/widget/XNumberPicker$OnValueChangeListener;
    invoke-virtual {v4, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    .line 166
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->init(IIILcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    .line 173
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 174
    iget-object v1, v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mXDelegator:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;->setImportantForAccessibility(I)V

    .line 176
    :cond_4
    return-void
.end method

.method private getCalendarForLocale(Landroid/icu/util/Calendar;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 485
    if-nez p1, :cond_0

    .line 486
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 489
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v2

    .line 490
    .local v2, "newCalendar":Landroid/icu/util/Calendar;
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 491
    return-object v2
.end method

.method public static getDateFormatOrder(Ljava/lang/String;)[C
    .locals 11
    .param p0, "pattern"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 227
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 228
    .local v1, "resultIndex":I
    const/4 v2, 0x0

    .line 229
    .local v2, "sawDay":Z
    const/4 v3, 0x0

    .line 230
    .local v3, "sawMonth":Z
    const/4 v4, 0x0

    .line 231
    .local v4, "sawYear":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 232
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 233
    .local v6, "ch":C
    const/16 v7, 0x4c

    const/16 v8, 0x79

    const/16 v9, 0x4d

    const/16 v10, 0x64

    if-eq v6, v10, :cond_0

    if-eq v6, v7, :cond_0

    if-eq v6, v9, :cond_0

    if-ne v6, v8, :cond_4

    .line 234
    :cond_0
    if-ne v6, v10, :cond_1

    if-nez v2, :cond_1

    .line 235
    add-int/lit8 v7, v1, 0x1

    .local v7, "resultIndex":I
    aput-char v10, v0, v1

    .line 236
    .end local v1    # "resultIndex":I
    const/4 v1, 0x1

    .line 231
    .end local v2    # "sawDay":Z
    .local v1, "sawDay":Z
    move v2, v1

    .end local v6    # "ch":C
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v2    # "sawDay":Z
    :goto_1
    move v1, v7

    goto :goto_2

    .line 237
    .restart local v6    # "ch":C
    :cond_1
    if-eq v6, v7, :cond_2

    if-ne v6, v9, :cond_3

    :cond_2
    if-nez v3, :cond_3

    .line 238
    add-int/lit8 v7, v1, 0x1

    .restart local v7    # "resultIndex":I
    aput-char v9, v0, v1

    .line 239
    .end local v1    # "resultIndex":I
    const/4 v1, 0x1

    .line 231
    .end local v3    # "sawMonth":Z
    .local v1, "sawMonth":Z
    move v3, v1

    goto :goto_1

    .line 240
    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v3    # "sawMonth":Z
    :cond_3
    if-ne v6, v8, :cond_4

    if-nez v4, :cond_4

    .line 241
    add-int/lit8 v7, v1, 0x1

    .restart local v7    # "resultIndex":I
    aput-char v8, v0, v1

    .line 242
    .end local v1    # "resultIndex":I
    const/4 v1, 0x1

    .line 231
    .end local v4    # "sawYear":Z
    .end local v6    # "ch":C
    .local v1, "sawYear":Z
    move v4, v1

    goto :goto_1

    .end local v7    # "resultIndex":I
    .local v1, "resultIndex":I
    .restart local v4    # "sawYear":Z
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    .end local v5    # "i":I
    :cond_5
    return-object v0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x2

    .line 358
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    const/4 v2, 0x5

    .line 359
    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 357
    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;Lcom/xiaopeng/xui/widget/XNumberPicker;II)V
    .locals 6
    .param p1, "picker"    # Lcom/xiaopeng/xui/widget/XNumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 91
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v3, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    .line 93
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 94
    iget-object v5, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v5, v3, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    sub-int v5, p3, p2

    invoke-virtual {v1, v3, v5}, Landroid/icu/util/Calendar;->add(II)V

    .line 98
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    if-ne p1, v0, :cond_5

    .line 99
    const/16 v0, 0xb

    if-ne p2, v0, :cond_3

    if-nez p3, :cond_3

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2, v4}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_1

    .line 101
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    sub-int v1, p3, p2

    invoke-virtual {v0, v2, v1}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_1

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    if-ne p1, v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v4, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    .line 113
    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 112
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setDate(III)V

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 115
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->notifyDateChanged()V

    .line 116
    return-void

    .line 109
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
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

    .line 191
    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Landroid/icu/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Landroid/icu/util/Calendar;

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    const/4 v0, 0x1

    return v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 271
    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners([Lcom/xiaopeng/xui/widget/XNumberPicker;)V
    .locals 6
    .param p1, "pickers"    # [Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 202
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v1

    .line 204
    .local v1, "order":[C
    const/4 v2, 0x0

    .line 204
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 205
    aget-char v3, v1, v2

    .line 206
    .local v3, "c":C
    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-ne v3, v4, :cond_0

    .line 216
    aget-object v4, p1, v2

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 218
    goto :goto_1

    .line 220
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_1
    aget-object v4, p1, v2

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 210
    goto :goto_1

    .line 212
    :cond_2
    aget-object v4, p1, v2

    iput-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 214
    nop

    .line 204
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/util/Calendar;->set(III)V

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->resetAutofilledValue()V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 257
    :cond_1
    :goto_0
    return-void
.end method

.method private updateSpinners()V
    .locals 12

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

    .line 307
    .local v0, "dayDisplayedValues":[Ljava/lang/String;
    move v1, v4

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v6, v3}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 308
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/xiaopeng/xpui/R$string;->x_date_picker_day:I

    new-array v8, v5, [Ljava/lang/Object;

    add-int v9, v5, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 311
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    .line 320
    invoke-virtual {v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v7}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMaxValue()I

    move-result v7

    add-int/2addr v7, v5

    .line 319
    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 321
    .local v1, "displayedValues":[Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v6, v1}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 324
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMinValue(I)V

    .line 325
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setMaxValue(I)V

    .line 326
    const/16 v6, 0xc9

    new-array v6, v6, [Ljava/lang/String;

    .line 327
    .local v6, "yearDisplayValues":[Ljava/lang/String;
    move v7, v4

    .local v7, "i":I
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_3

    .line 328
    iget-object v8, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/xiaopeng/xpui/R$string;->x_date_picker_year:I

    new-array v10, v5, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v11}, Lcom/xiaopeng/xui/widget/XNumberPicker;->getMinValue()I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 327
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 330
    .end local v7    # "i":I
    :cond_3
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v7, v6}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 331
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    invoke-virtual {v7, v4}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setWrapSelectorWheel(Z)V

    .line 334
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mYearSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 335
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMonthSpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v5, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 336
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mDaySpinner:Lcom/xiaopeng/xui/widget/XNumberPicker;

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {v4, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XNumberPicker;->setValue(I)V

    .line 337
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 517
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 518
    const/4 v0, 0x1

    return v0
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

    .line 383
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

    .line 432
    .local v0, "maxDate":Landroid/icu/util/Calendar;
    const/16 v1, 0x834

    const/16 v2, 0xb

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/util/Calendar;->set(III)V

    .line 433
    return-object v0
.end method

.method public getMinDate()Landroid/icu/util/Calendar;
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    return-object v0

    .line 406
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    .line 407
    .local v0, "minDate":Landroid/icu/util/Calendar;
    const/16 v1, 0x76c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/icu/util/Calendar;->set(III)V

    .line 408
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
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    .line 341
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setDate(III)V

    .line 342
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 343
    iput-object p4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mOnDateChangedListener:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;

    .line 344
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 497
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 498
    return-void
.end method

.method public bridge synthetic onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 508
    instance-of v0, p1, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    if-eqz v0, :cond_0

    .line 509
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    .line 510
    .local v0, "ss":Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->getSelectedYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->getSelectedMonth()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->getSelectedDay()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setDate(III)V

    .line 511
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 513
    .end local v0    # "ss":Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 10
    .param p1, "superState"    # Landroid/os/Parcelable;

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

    .line 502
    return-object v9
.end method

.method public bridge synthetic setAutoFillChangeListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->setAutoFillChangeListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

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

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mTempDate:Landroid/icu/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mNumberOfMonths:I

    .line 475
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

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

    .line 442
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0
    .param p1, "firstDayOfWeek"    # I

    .line 379
    return-void
.end method

.method public setMaxDate(J)V
    .locals 3
    .param p1, "maxDate"    # J

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

    .line 415
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 417
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMaxDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 424
    return-void
.end method

.method public setMinDate(J)V
    .locals 3
    .param p1, "minDate"    # J

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

    .line 390
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v2, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 392
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mMinDate:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 399
    return-void
.end method

.method public bridge synthetic setOnDateChangedListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->setOnDateChangedListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->setDate(III)V

    .line 352
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->updateSpinners()V

    .line 353
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePickerSpinnerDelegate;->notifyDateChanged()V

    .line 354
    return-void
.end method
