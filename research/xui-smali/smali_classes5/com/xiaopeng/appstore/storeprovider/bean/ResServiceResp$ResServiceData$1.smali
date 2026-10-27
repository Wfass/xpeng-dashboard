.class Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData$1;
.super Ljava/lang/Object;
.source "ResServiceResp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    invoke-direct {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "in"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 59
    new-array v0, p1, [Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData$1;->newArray(I)[Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    move-result-object p1

    return-object p1
.end method
