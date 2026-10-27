.class public Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;
.super Ljava/lang/Object;
.source "MiniProgramData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlipayVersion:Ljava/lang/String;

.field private mContentType:I

.field private mIconName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mMiniAppId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParams:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mId:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mName:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mId:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mMiniAppId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mAlipayVersion:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mIconName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mParams:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mContentType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlipayVersion()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mAlipayVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mContentType:I

    return v0
.end method

.method public getIconName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mIconName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniAppId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mMiniAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mParams:Ljava/lang/String;

    return-object v0
.end method

.method public setAlipayVersion(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mAlipayVersion:Ljava/lang/String;

    return-void
.end method

.method public setContentType(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mContentType:I

    return-void
.end method

.method public setIconName(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mIconName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mId:Ljava/lang/String;

    return-void
.end method

.method public setMiniAppId(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mMiniAppId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mName:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mParams:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiniProgramData{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mId="

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mName=\'"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMiniAppId="

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mMiniAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlipayVersion="

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mAlipayVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconName="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mIconName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mMiniAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mAlipayVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mIconName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 72
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mParams:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 73
    iget p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramData;->mContentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
