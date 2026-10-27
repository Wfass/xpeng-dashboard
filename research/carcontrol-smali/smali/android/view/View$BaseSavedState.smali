.class public Landroid/view/View$BaseSavedState;
.super Landroid/view/AbsSavedState;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseSavedState"
.end annotation


# static fields
.field static final AUTOFILL_ID:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/View$BaseSavedState;",
            ">;"
        }
    .end annotation
.end field

.field static final IS_AUTOFILLED:I = 0x2

.field static final START_ACTIVITY_REQUESTED_WHO_SAVED:I = 0x1


# instance fields
.field mAutofillViewId:I

.field mHideHighlight:Z

.field mIsAutofilled:Z

.field mSavedData:I

.field mStartActivityRequestWhoSaved:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29403
    new-instance v0, Landroid/view/View$BaseSavedState$1;

    invoke-direct {v0}, Landroid/view/View$BaseSavedState$1;-><init>()V

    sput-object v0, Landroid/view/View$BaseSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    .line 29364
    invoke-direct {p0, p1, v0}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 29375
    invoke-direct {p0, p1, p2}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 29376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/view/View$BaseSavedState;->mSavedData:I

    .line 29377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/view/View$BaseSavedState;->mStartActivityRequestWhoSaved:Ljava/lang/String;

    .line 29378
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    iput-boolean p2, p0, Landroid/view/View$BaseSavedState;->mIsAutofilled:Z

    .line 29379
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p2

    iput-boolean p2, p0, Landroid/view/View$BaseSavedState;->mHideHighlight:Z

    .line 29380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/View$BaseSavedState;->mAutofillViewId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 29389
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 29394
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 29396
    iget p2, p0, Landroid/view/View$BaseSavedState;->mSavedData:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29397
    iget-object p2, p0, Landroid/view/View$BaseSavedState;->mStartActivityRequestWhoSaved:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29398
    iget-boolean p2, p0, Landroid/view/View$BaseSavedState;->mIsAutofilled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 29399
    iget-boolean p2, p0, Landroid/view/View$BaseSavedState;->mHideHighlight:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 29400
    iget p2, p0, Landroid/view/View$BaseSavedState;->mAutofillViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
