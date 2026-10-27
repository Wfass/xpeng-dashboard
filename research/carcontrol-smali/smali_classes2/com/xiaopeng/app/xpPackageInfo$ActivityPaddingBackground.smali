.class public Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;
.super Ljava/lang/Object;
.source "xpPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/app/xpPackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityPaddingBackground"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public color:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 392
    new-instance v0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground$1;

    invoke-direct {v0}, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;->color:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;->activities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;->color:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;->activities:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 375
    iget p2, p0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;->color:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget-object p2, p0, Lcom/xiaopeng/app/xpPackageInfo$ActivityPaddingBackground;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
