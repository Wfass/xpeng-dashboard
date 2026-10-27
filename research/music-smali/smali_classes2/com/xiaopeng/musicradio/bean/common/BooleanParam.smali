.class public Lcom/xiaopeng/musicradio/bean/common/BooleanParam;
.super Ljava/lang/Object;
.source "BooleanParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/common/BooleanParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private param:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/common/BooleanParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;->param:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;->param:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isParam()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;->param:Z

    return v0
.end method

.method public setParam(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;->param:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/common/BooleanParam;->param:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
