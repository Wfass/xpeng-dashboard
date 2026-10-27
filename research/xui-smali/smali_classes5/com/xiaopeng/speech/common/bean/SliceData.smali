.class public Lcom/xiaopeng/speech/common/bean/SliceData;
.super Ljava/lang/Object;
.source "SliceData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/common/bean/SliceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[B

.field private totalLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/speech/common/bean/SliceData$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/bean/SliceData$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/common/bean/SliceData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->data:[B

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->totalLength:I

    .line 20
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "totalLength"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->data:[B

    .line 14
    iput p2, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->totalLength:I

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->data:[B

    return-object v0
.end method

.method public getTotalLength()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->totalLength:I

    return v0
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->data:[B

    .line 40
    return-void
.end method

.method public setTotalLength(I)V
    .locals 0
    .param p1, "totalLength"    # I

    .line 47
    iput p1, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->totalLength:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SliceData{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->data:[B

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->totalLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    .line 58
    iget v0, p0, Lcom/xiaopeng/speech/common/bean/SliceData;->totalLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
