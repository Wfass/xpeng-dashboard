.class public Lcom/xiaopeng/musicradio/bean/common/FloatParam;
.super Ljava/lang/Object;
.source "FloatParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/common/FloatParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private param:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/FloatParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/common/FloatParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/common/FloatParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/FloatParam;->param:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/FloatParam;->param:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParam()F
    .locals 1

    .line 19
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/common/FloatParam;->param:F

    return v0
.end method

.method public setParam(F)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/common/FloatParam;->param:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 33
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/common/FloatParam;->param:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
