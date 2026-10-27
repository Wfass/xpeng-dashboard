.class public Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
.super Ljava/lang/Object;
.source "SoundEffectResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private friendlyName:Ljava/lang/String;

.field private resId:I

.field private resPath:[Ljava/lang/String;

.field private resType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resId:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resType:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->friendlyName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resPath:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resId:I

    return v0
.end method

.method public getResPath()[Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resPath:[Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resType:I

    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->friendlyName:Ljava/lang/String;

    return-void
.end method

.method public setResId(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resId:I

    return-void
.end method

.method public setResPath([Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resPath:[Ljava/lang/String;

    return-void
.end method

.method public setResourceType(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundEffectResource[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",resType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resPath:[Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget p2, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget p2, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->resPath:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
