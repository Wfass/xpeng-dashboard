.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;
.super Ljava/lang/Object;
.source "NetRadioTagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBizVal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bizVal"
    .end annotation
.end field

.field private mCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private mCover:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover"
    .end annotation
.end field

.field private mId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private mNightCover:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nightCover"
    .end annotation
.end field

.field private mSelect:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "select"
    .end annotation
.end field

.field private mSort:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort"
    .end annotation
.end field

.field private mType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 109
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBizVal()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mBizVal:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mCode:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mCover:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNightCover()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mNightCover:Ljava/lang/String;

    return-object v0
.end method

.method public getSort()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mSort:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mType:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mSelect:Z

    return v0
.end method

.method public setBizVal(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mBizVal:I

    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mCode:I

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mCover:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNightCover(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mNightCover:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mSelect:Z

    return-void
.end method

.method public setSort(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mSort:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioTagInfo;->mType:I

    return-void
.end method
