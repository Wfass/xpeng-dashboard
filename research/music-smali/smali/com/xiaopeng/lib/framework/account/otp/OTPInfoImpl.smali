.class public Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;
.super Ljava/lang/Object;
.source "OTPInfoImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOTP:Ljava/lang/String;

.field private mUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl$1;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mUid:J

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mOTP:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mUid:J

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mOTP:Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mUid:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mOTP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOTP()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mOTP:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mUid:J

    return-wide v0
.end method

.method public setOTP(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mOTP:Ljava/lang/String;

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mUid:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OTPInfoImpl { uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mUid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; OTP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mOTP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;->mOTP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
