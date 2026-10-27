.class public final Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;
.super Ljava/lang/Object;
.source "CommonEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/event/common/CommonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateSongLogo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 855
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;->list:Ljava/util/List;

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;->success:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/musicradio/event/common/CommonEvent$1;)V
    .locals 0

    .line 833
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p1, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 895
    iget-object p2, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;->list:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 896
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$UpdateSongLogo;->success:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
