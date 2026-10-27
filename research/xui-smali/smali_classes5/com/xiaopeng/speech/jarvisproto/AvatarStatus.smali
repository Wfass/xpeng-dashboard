.class public Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "AvatarStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT:Ljava/lang/String; = "jarvis.speech.avatar.status"


# instance fields
.field public backScreenAvatarShow:Z

.field public homeScreenAvatarShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    .line 28
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "homeScreenAvatarShow"    # Z

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    .line 18
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "homeScreenAvatarShow"    # Z
    .param p2, "backScreenAvatarShow"    # Z

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    .line 22
    iput-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    .line 23
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
    .locals 5
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "homeScreenAvatarShow":Z
    const/4 v1, 0x0

    move v2, v1

    .line 69
    .local v2, "backScreenAvatarShow":Z
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "homeScreenAvatarShow"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    .line 72
    const-string v4, "backScreenAvatarShow"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 76
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v1, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;-><init>(ZZ)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "jarvis.speech.avatar.status"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "homeScreenAvatarShow"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    const-string v1, "backScreenAvatarShow"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "reply"    # Landroid/os/Parcel;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 88
    iget-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 89
    return-void
.end method
