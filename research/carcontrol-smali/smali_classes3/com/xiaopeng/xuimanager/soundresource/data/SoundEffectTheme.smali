.class public Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
.super Ljava/lang/Object;
.source "SoundEffectTheme.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private friendlyName:Ljava/lang/String;

.field private playbillPath:[Ljava/lang/String;

.field private subName:Ljava/lang/String;

.field private themeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->themeId:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->friendlyName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->subName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->playbillPath:[Ljava/lang/String;

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

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybillPath()[Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->playbillPath:[Ljava/lang/String;

    return-object v0
.end method

.method public getSubName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->subName:Ljava/lang/String;

    return-object v0
.end method

.method public getThemeId()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->themeId:I

    return v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->friendlyName:Ljava/lang/String;

    return-void
.end method

.method public setPlaybillPath([Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->playbillPath:[Ljava/lang/String;

    return-void
.end method

.method public setSubName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->subName:Ljava/lang/String;

    return-void
.end method

.method public setThemeId(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->themeId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundEffectTheme[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->themeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",subName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->subName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",picPath0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->playbillPath:[Ljava/lang/String;

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

    .line 60
    iget p2, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->themeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->subName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;->playbillPath:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
