.class abstract Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "XTimePicker.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$b;


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
.field private aia:J

.field protected final akR:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

.field protected akS:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;

.field protected akT:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;

.field protected final mContext:Landroid/content/Context;

.field protected final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->akR:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;

    .line 171
    iput-object p2, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    .line 173
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->akT:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;

    .line 183
    return-void
.end method

.method public final autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 4

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
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object p1

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 196
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->setDate(II)V

    .line 200
    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->aia:J

    .line 201
    return-void

    .line 188
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " could not be autofilled into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public final getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 4

    .line 205
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->aia:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 206
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->aia:J

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 210
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

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method protected resetAutofilledValue()V
    .locals 2

    .line 220
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->aia:J

    .line 221
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$AbstractTimePickerDelegate;->akS:Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;

    .line 178
    return-void
.end method
