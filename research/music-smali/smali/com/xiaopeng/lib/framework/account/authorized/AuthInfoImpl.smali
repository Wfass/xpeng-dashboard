.class public Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;
.super Ljava/lang/Object;
.source "AuthInfoImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl$1;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->authCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->authCode:Ljava/lang/String;

    return-void
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->authCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthInfoImpl;{ authCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->authCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->authCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
