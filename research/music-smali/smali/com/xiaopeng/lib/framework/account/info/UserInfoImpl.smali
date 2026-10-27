.class public Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;
.super Ljava/lang/Object;
.source "UserInfoImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRADE_DRIVER:I = 0x4

.field public static final GRADE_OWNER:I = 0x1

.field public static final GRADE_TEMP:I = -0x1

.field public static final GRADE_TENANT:I = 0x3

.field public static final GRADE_USER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "UserInfoImpl"


# instance fields
.field private mAvatar:Ljava/lang/String;

.field private mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

.field private mUserName:Ljava/lang/String;

.field private mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl$1;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    .line 41
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->UPDATE:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    .line 41
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->UPDATE:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoType()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mAvatar:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfoImpl type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserInfoImpl"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UserInfoImpl mUserType is ArrayIndexOutBoundsException"

    if-ltz v0, :cond_0

    .line 145
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 146
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-ltz p1, :cond_1

    .line 150
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 151
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    goto :goto_1

    .line 153
    :cond_1
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mAvatar:Ljava/lang/String;

    return-object p0
.end method

.method public setInfoType(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserName:Ljava/lang/String;

    return-object p0
.end method

.method public setUserType(I)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 104
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    goto :goto_0

    .line 101
    :cond_0
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->DRIVER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    goto :goto_0

    .line 98
    :cond_1
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TENANT:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    goto :goto_0

    .line 95
    :cond_2
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->USER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    goto :goto_0

    .line 92
    :cond_3
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->OWNER:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    goto :goto_0

    .line 89
    :cond_4
    sget-object p1, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->TEMP:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    :goto_0
    return-object p0
.end method

.method public setUserType(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfoImpl;{ mUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUserType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mInfoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeToParcel mUserType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";mInfoType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UserInfoImpl"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mUserType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;

    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$UserType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mAvatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;->mInfoType:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;

    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo$InfoType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
