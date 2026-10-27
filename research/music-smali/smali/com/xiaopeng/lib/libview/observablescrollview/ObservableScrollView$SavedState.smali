.class Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView;
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
            "Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 321
    new-instance v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState$1;

    invoke-direct {v0}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 309
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->a:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$1;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 316
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget p2, p0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableScrollView$SavedState;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
