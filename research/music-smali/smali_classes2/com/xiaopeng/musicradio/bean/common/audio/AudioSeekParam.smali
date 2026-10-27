.class public Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;
.super Ljava/lang/Object;
.source "AudioSeekParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private seek:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->type:I

    .line 15
    iput p2, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->seek:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->type:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->seek:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSeek()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->seek:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->type:I

    return v0
.end method

.method public setSeek(I)Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;
    .locals 0

    .line 32
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->seek:I

    return-object p0
.end method

.method public setType(I)Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->type:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 60
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/common/audio/AudioSeekParam;->seek:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
