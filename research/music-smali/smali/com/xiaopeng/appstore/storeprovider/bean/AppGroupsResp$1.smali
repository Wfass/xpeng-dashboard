.class final Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$1;
.super Ljava/lang/Object;
.source "AppGroupsResp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    invoke-direct {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 0

    .line 39
    new-array p1, p1, [Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$1;->a(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp$1;->a(I)[Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object p1

    return-object p1
.end method
