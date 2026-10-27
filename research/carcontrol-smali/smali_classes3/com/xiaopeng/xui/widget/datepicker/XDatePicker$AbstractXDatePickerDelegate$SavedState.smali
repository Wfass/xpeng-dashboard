.class Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "XDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentView:I

.field private final mListPosition:I

.field private final mListPositionOffset:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 389
    new-instance v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState$1;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 331
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mMinDate:J

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mMaxDate:J

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mCurrentView:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mListPosition:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mListPositionOffset:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$1;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJ)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 308
    invoke-direct/range {v0 .. v11}, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJIII)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 317
    iput p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 318
    iput p3, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 319
    iput p4, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 320
    iput-wide p5, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mMinDate:J

    .line 321
    iput-wide p7, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mMaxDate:J

    .line 322
    iput p9, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mCurrentView:I

    .line 323
    iput p10, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mListPosition:I

    .line 324
    iput p11, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mListPositionOffset:I

    return-void
.end method


# virtual methods
.method public getCurrentView()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mCurrentView:I

    return v0
.end method

.method public getListPosition()I
    .locals 1

    .line 380
    iget v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mListPosition:I

    return v0
.end method

.method public getListPositionOffset()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mListPositionOffset:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 368
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedDay:I

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 344
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 345
    iget p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mSelectedDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    iget-wide v0, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    iget p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mCurrentView:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mListPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget p2, p0, Lcom/xiaopeng/xui/widget/datepicker/XDatePicker$AbstractXDatePickerDelegate$SavedState;->mListPositionOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
