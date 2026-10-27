.class interface abstract Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$b;
.super Ljava/lang/Object;
.source "XTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/timepicker/XTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;)V
.end method

.method public abstract autofill(Landroid/view/autofill/AutofillValue;)V
.end method

.method public abstract getAutofillValue()Landroid/view/autofill/AutofillValue;
.end method

.method public abstract getBaseline()I
.end method

.method public abstract getHour()I
.end method

.method public abstract getMinute()I
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
.end method

.method public abstract setDate(II)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setHour(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param
.end method

.method public abstract setMinute(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param
.end method

.method public abstract setOnTimeChangedListener(Lcom/xiaopeng/xui/widget/timepicker/XTimePicker$a;)V
.end method
