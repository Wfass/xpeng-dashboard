.class public Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
.super Ljava/lang/Object;
.source "MiniProgramResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private isLogin:Z

.field private mMiniProgramGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mParams:Ljava/util/Map;

.field private message:Ljava/lang/String;

.field private miniAppId:Ljava/lang/String;

.field private userAvatar:Ljava/lang/String;

.field private userKey:Ljava/lang/String;

.field private userNick:Ljava/lang/String;

.field private userRoute:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->miniAppId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->isLogin:Z

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userAvatar:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userKey:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userNick:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userRoute:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->message:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mParams:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mMiniProgramGroups:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->miniAppId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->isLogin:Z

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userAvatar:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userKey:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userNick:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userRoute:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->message:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mParams:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mMiniProgramGroups:Ljava/util/List;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->code:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->miniAppId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->isLogin:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userAvatar:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userKey:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userNick:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userRoute:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->message:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mMiniProgramGroups:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mParams:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniAppId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->miniAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniProgramGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mMiniProgramGroups:Ljava/util/List;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getUserAvatar()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getUserKey()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRoute()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userRoute:Ljava/lang/String;

    return-object v0
.end method

.method public isLogin()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->isLogin:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->code:I

    return-void
.end method

.method public setLogin(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->isLogin:Z

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setMiniAppId(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->miniAppId:Ljava/lang/String;

    return-void
.end method

.method public setMiniProgramGroups(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/xapp/MiniProgramGroup;",
            ">;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mMiniProgramGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mMiniProgramGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mParams:Ljava/util/Map;

    return-void
.end method

.method public setUserAvatar(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userAvatar:Ljava/lang/String;

    return-void
.end method

.method public setUserKey(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userKey:Ljava/lang/String;

    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userNick:Ljava/lang/String;

    return-void
.end method

.method public setUserRoute(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userRoute:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiniProgramResponse{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "code="

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", miniAppId=\'"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->miniAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isLogin="

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->isLogin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userAvatar="

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userAvatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userKey="

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userNick="

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userNick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userRoute="

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userRoute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    iget p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->miniAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 84
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->isLogin:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 85
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userAvatar:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userNick:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->userRoute:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mMiniProgramGroups:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 91
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->mParams:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
