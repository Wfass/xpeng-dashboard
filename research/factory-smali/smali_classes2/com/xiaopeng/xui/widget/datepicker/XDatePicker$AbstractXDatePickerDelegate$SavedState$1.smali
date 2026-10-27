.class final Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState$1;
.super Ljava/lang/Object;
.source "XDatePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 392
    new-instance v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 396
    new-array v0, p1, [Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState$1;->newArray(I)[Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;

    move-result-object p1

    return-object p1
.end method
