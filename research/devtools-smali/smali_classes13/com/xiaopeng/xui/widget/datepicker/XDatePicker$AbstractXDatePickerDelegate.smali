.class abstract Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;
.super Ljava/lang/Object;
.source "XDatePicker.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$b;


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
.field protected ahX:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

.field protected ahY:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;

.field protected ahZ:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;

.field private aia:J

.field protected mContext:Landroid/content/Context;

.field protected mCurrentDate:Landroid/icu/util/Calendar;

.field protected mCurrentLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;Landroid/content/Context;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->ahX:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker;

    .line 219
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 222
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->ahZ:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;

    .line 239
    return-void
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    .line 280
    return-void
.end method

.method protected resetAutofilledValue()V
    .locals 2

    .line 274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->aia:J

    .line 275
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

    .line 229
    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;->ahY:Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$a;

    .line 234
    return-void
.end method
