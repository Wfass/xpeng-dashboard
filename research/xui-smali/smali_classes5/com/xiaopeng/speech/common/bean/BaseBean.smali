.class public Lcom/xiaopeng/speech/common/bean/BaseBean;
.super Ljava/lang/Object;
.source "BaseBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/common/bean/BaseBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private outPut:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/xiaopeng/speech/common/bean/BaseBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/bean/BaseBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/common/bean/BaseBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/BaseBean;->title:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/common/bean/BaseBean;->outPut:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getOutPut()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/BaseBean;->outPut:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/BaseBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setOutPut(Ljava/lang/String;)V
    .locals 0
    .param p1, "outPut"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/BaseBean;->outPut:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/speech/common/bean/BaseBean;->title:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/BaseBean;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/speech/common/bean/BaseBean;->outPut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    return-void
.end method
