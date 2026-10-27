.class public Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
.super Ljava/lang/Object;
.source "ShareDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ShareDevice"


# instance fields
.field private connectStatus:I

.field private deviceId:Ljava/lang/String;

.field private deviceMac:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private lastConnectTime:J

.field private lastProtocolType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 215
    new-instance v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastConnectTime:J

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastProtocolType:I

    .line 46
    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->connectStatus:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceMac:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastConnectTime:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastProtocolType:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->connectStatus:I

    return-void
.end method

.method public static buildArrayFromJsonStr(Ljava/lang/String;)[Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 4

    .line 202
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    .line 204
    new-array v1, p0, [Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 206
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->buildFromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 210
    sget-object v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildArrayFromJsonStr e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static buildFromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 4

    .line 155
    new-instance v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;-><init>()V

    const-string v1, "deviceId"

    const-string v2, "unknown"

    .line 156
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    const-string v1, "deviceName"

    .line 157
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceName:Ljava/lang/String;

    const-string v1, "deviceMac"

    .line 158
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceMac:Ljava/lang/String;

    const-string v1, "lastConnectTime"

    const-wide/16 v2, 0x0

    .line 159
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastConnectTime:J

    const-string v1, "lastProtocolType"

    const/4 v2, -0x1

    .line 160
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastProtocolType:I

    const-string v1, "connectStatus"

    .line 161
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->connectStatus:I

    return-object v0
.end method

.method public static buildFromJsonStr(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;
    .locals 1

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->buildFromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private toJson()Lorg/json/JSONObject;
    .locals 4

    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "deviceId"

    .line 168
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceName"

    .line 169
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceMac"

    .line 170
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceMac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastConnectTime"

    .line 171
    iget-wide v2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastConnectTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "lastProtocolType"

    .line 172
    iget v2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastProtocolType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "connectStatus"

    .line 173
    iget v2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->connectStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 177
    sget-object v1, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toJsonStr e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static toJsonArrayStr([Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)Ljava/lang/String;
    .locals 4

    .line 188
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 191
    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 192
    invoke-direct {v3}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 251
    instance-of v0, p1, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    check-cast p1, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    if-eq p0, p1, :cond_2

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceMac:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 257
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->getDeviceMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getConnectStatus()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->connectStatus:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastConnectTime()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastConnectTime:J

    return-wide v0
.end method

.method public getLastProtocolType()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastProtocolType:I

    return v0
.end method

.method public setConnectStatus(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->connectStatus:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceMac(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceMac:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setLastConnectTime(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastConnectTime:J

    return-void
.end method

.method public setLastProtocolType(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastProtocolType:I

    return-void
.end method

.method public toJsonStr()Ljava/lang/String;
    .locals 1

    .line 183
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceMac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",protocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastProtocolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->connectStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 234
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->deviceMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastConnectTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->lastProtocolType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget p2, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;->connectStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
