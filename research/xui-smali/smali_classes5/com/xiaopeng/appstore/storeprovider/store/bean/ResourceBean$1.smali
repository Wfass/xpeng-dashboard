.class Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean$1;
.super Ljava/lang/Object;
.source "ResourceBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
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

    .line 29
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;

    invoke-direct {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;-><init>(Landroid/os/Parcel;)V

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

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
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

    .line 41
    new-array v0, p1, [Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;

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

    .line 21
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean$1;->newArray(I)[Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;

    move-result-object p1

    return-object p1
.end method
