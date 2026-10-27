.class public Lcom/alipay/mobile/aromeservice/ipc/InitOptions;
.super Ljava/lang/Object;
.source "InitOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/aromeservice/ipc/InitOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceConfig:Landroid/os/Bundle;

.field public hardwareName:Ljava/lang/String;

.field public hardwareType:I

.field public loginMode:I

.field public themeConfig:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$1;

    invoke-direct {v0}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alipay/mobile/aromeservice/ipc/InitOptions$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alipay/mobile/aromeservice/ipc/InitOptions$1;

    .line 7
    invoke-direct {p0, p1}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/aromeservice/ipc/InitOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/aromeservice/ipc/InitOptions$1;

    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->loginMode:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->hardwareType:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->hardwareName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->themeConfig:Landroid/os/Bundle;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->deviceConfig:Landroid/os/Bundle;

    .line 46
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 33
    iget v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->loginMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->hardwareType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->hardwareName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->themeConfig:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->deviceConfig:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
