.class final Lcom/xiaopeng/privacyservice/ProtocolInfo$1;
.super Ljava/lang/Object;
.source "ProtocolInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/privacyservice/ProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/privacyservice/ProtocolInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/privacyservice/ProtocolInfo;
    .locals 1

    .line 14
    new-instance v0, Lcom/xiaopeng/privacyservice/ProtocolInfo;

    invoke-direct {v0, p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/privacyservice/ProtocolInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/privacyservice/ProtocolInfo;
    .locals 0

    .line 19
    new-array p1, p1, [Lcom/xiaopeng/privacyservice/ProtocolInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/xiaopeng/privacyservice/ProtocolInfo$1;->newArray(I)[Lcom/xiaopeng/privacyservice/ProtocolInfo;

    move-result-object p1

    return-object p1
.end method
