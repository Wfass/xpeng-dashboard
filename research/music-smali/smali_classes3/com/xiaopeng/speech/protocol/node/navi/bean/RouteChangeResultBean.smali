.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;
.super Ljava/lang/Object;
.source "RouteChangeResultBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# static fields
.field protected static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private detail:Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->code:I

    .line 78
    const-class v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->detail:Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;
    .locals 4

    const-string v0, "detail"

    const-string v1, "code"

    .line 60
    :try_start_0
    new-instance v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;

    invoke-direct {v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;-><init>()V

    .line 61
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->code:I

    .line 66
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 67
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    move-result-object p0

    iput-object p0, v2, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->detail:Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->code:I

    return v0
.end method

.method public getDetail()Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->detail:Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->code:I

    return-void
.end method

.method public setDetail(Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->detail:Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 90
    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->code:I

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->detail:Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "detail"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RouteChangeResultBean{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->detail:Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 129
    iget p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->code:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeResultBean;->detail:Lcom/xiaopeng/speech/protocol/node/navi/bean/RouteChangeDetailBean;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
