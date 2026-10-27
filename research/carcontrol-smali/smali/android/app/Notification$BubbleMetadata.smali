.class public final Landroid/app/Notification$BubbleMetadata;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BubbleMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$BubbleMetadata$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Notification$BubbleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_EXPAND_BUBBLE:I = 0x1

.field public static final FLAG_SUPPRESSABLE_BUBBLE:I = 0x4

.field public static final FLAG_SUPPRESS_BUBBLE:I = 0x8

.field public static final FLAG_SUPPRESS_NOTIFICATION:I = 0x2


# instance fields
.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mDesiredHeight:I

.field private mDesiredHeightResId:I

.field private mFlags:I

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mShortcutId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10728
    new-instance v0, Landroid/app/Notification$BubbleMetadata$1;

    invoke-direct {v0}, Landroid/app/Notification$BubbleMetadata$1;-><init>()V

    sput-object v0, Landroid/app/Notification$BubbleMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;)V
    .locals 0

    .line 10521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10522
    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10523
    iput-object p3, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10524
    iput p4, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    .line 10525
    iput p5, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    .line 10526
    iput-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 10527
    iput-object p6, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;Landroid/app/Notification$1;)V
    .locals 0

    .line 10459
    invoke-direct/range {p0 .. p6}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;IILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 10532
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10534
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10535
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    .line 10537
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    .line 10538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    .line 10539
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 10540
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 10542
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    .line 10543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 10544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Notification$1;)V
    .locals 0

    .line 10459
    invoke-direct {p0, p1}, Landroid/app/Notification$BubbleMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoExpandBubble()Z
    .locals 2

    .line 10632
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBubbleIcon()Landroid/graphics/drawable/Icon;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10603
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getBubbleIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10575
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 10583
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 1

    .line 10613
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    return v0
.end method

.method public getDesiredHeightResId()I
    .locals 1

    .line 10623
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 10725
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 10593
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 10565
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 10555
    iget-object v0, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public isBubbleSuppressable()Z
    .locals 1

    .line 10672
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBubbleSuppressed()Z
    .locals 1

    .line 10681
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotificationSuppressed()Z
    .locals 1

    .line 10655
    iget v0, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFlags(I)V
    .locals 0

    .line 10718
    iput p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    return-void
.end method

.method public setSuppressBubble(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 10708
    iget p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    goto :goto_0

    .line 10710
    :cond_0
    iget p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    :goto_0
    return-void
.end method

.method public setSuppressNotification(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 10693
    iget p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    goto :goto_0

    .line 10695
    :cond_0
    iget p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 10749
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10750
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_1

    .line 10751
    invoke-virtual {p2, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10753
    :cond_1
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10754
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_3

    .line 10755
    invoke-virtual {p2, p1, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10757
    :cond_3
    iget p2, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10758
    iget p2, p0, Landroid/app/Notification$BubbleMetadata;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10759
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10760
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_5

    .line 10761
    invoke-virtual {p2, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10763
    :cond_5
    iget p2, p0, Landroid/app/Notification$BubbleMetadata;->mDesiredHeightResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10764
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10765
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 10766
    iget-object p2, p0, Landroid/app/Notification$BubbleMetadata;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
