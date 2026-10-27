.class public Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.super Ljava/lang/Object;
.source "BaseBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I

.field private fromCache:Z

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->code:I

    .line 25
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->msg:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->code:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->msg:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->fromCache:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->fromCache:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->code:I

    return-void
.end method

.method public setFromCache(Z)Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->fromCache:Z

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 36
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->fromCache:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
