.class public Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;
.super Ljava/lang/Object;
.source "ResServiceResp.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceContent;,
        Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceBean;,
        Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:J

.field public data:Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

.field public msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->code:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->msg:Ljava/lang/String;

    .line 21
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->data:Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 43
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->code:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp;->data:Lcom/xiaopeng/appstore/storeprovider/bean/ResServiceResp$ResServiceData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 46
    return-void
.end method
