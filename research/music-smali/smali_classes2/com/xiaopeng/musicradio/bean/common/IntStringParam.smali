.class public Lcom/xiaopeng/musicradio/bean/common/IntStringParam;
.super Ljava/lang/Object;
.source "IntStringParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/common/IntStringParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private param:I

.field private paramStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/common/IntStringParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->param:I

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->paramStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->param:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->paramStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParam()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->param:I

    return v0
.end method

.method public getParamStr()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->paramStr:Ljava/lang/String;

    return-object v0
.end method

.method public setParam(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->param:I

    return-void
.end method

.method public setParamStr(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->paramStr:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 45
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->param:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/common/IntStringParam;->paramStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
