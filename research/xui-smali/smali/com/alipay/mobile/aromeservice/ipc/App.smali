.class public final Lcom/alipay/mobile/aromeservice/ipc/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/aromeservice/ipc/App$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/aromeservice/ipc/App;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hostAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/alipay/mobile/aromeservice/ipc/App$1;

    invoke-direct {v0}, Lcom/alipay/mobile/aromeservice/ipc/App$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/aromeservice/ipc/App;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/aromeservice/ipc/App;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/aromeservice/ipc/App$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alipay/mobile/aromeservice/ipc/App$1;

    .line 6
    invoke-direct {p0, p1}, Lcom/alipay/mobile/aromeservice/ipc/App;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/aromeservice/ipc/App$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/aromeservice/ipc/App$1;

    .line 6
    invoke-direct {p0}, Lcom/alipay/mobile/aromeservice/ipc/App;-><init>()V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/App;->hostAppId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/App;->hostAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
