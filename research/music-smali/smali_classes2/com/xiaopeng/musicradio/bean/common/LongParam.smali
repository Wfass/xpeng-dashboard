.class public Lcom/xiaopeng/musicradio/bean/common/LongParam;
.super Ljava/lang/Object;
.source "LongParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/common/LongParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private param:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/LongParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/common/LongParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/common/LongParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/common/LongParam;->param:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/common/LongParam;->param:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParam()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/common/LongParam;->param:J

    return-wide v0
.end method

.method public setParam(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/common/LongParam;->param:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/common/LongParam;->param:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
