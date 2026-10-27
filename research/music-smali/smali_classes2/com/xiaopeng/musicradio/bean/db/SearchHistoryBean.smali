.class public Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;
.super Ljava/lang/Object;
.source "SearchHistoryBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/Long;

.field key:Ljava/lang/String;

.field keyPinYin:Ljava/lang/String;

.field sysUid:J

.field updateTs:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->id:Ljava/lang/Long;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->id:Ljava/lang/Long;

    .line 46
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->key:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->keyPinYin:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_1

    .line 49
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->updateTs:Ljava/lang/Long;

    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->updateTs:Ljava/lang/Long;

    .line 53
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->sysUid:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->id:Ljava/lang/Long;

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->key:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->keyPinYin:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->updateTs:Ljava/lang/Long;

    .line 37
    iput-wide p5, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->sysUid:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPinYin()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->keyPinYin:Ljava/lang/String;

    return-object v0
.end method

.method public getSysUid()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->sysUid:J

    return-wide v0
.end method

.method public getUpdateTs()Ljava/lang/Long;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->updateTs:Ljava/lang/Long;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->id:Ljava/lang/Long;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->key:Ljava/lang/String;

    return-void
.end method

.method public setKeyPinYin(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->keyPinYin:Ljava/lang/String;

    return-void
.end method

.method public setSysUid(J)V
    .locals 0

    .line 121
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->sysUid:J

    return-void
.end method

.method public setUpdateTs(Ljava/lang/Long;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->updateTs:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchHistoryBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyPinYin=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->keyPinYin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 58
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->id:Ljava/lang/Long;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->keyPinYin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->updateTs:Ljava/lang/Long;

    if-nez p2, :cond_1

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->updateTs:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    :goto_1
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/SearchHistoryBean;->sysUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
