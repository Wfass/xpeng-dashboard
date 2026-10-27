.class public Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "SwitchStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT:Ljava/lang/String; = "jarvis.speech.switch.status"


# instance fields
.field public sceneType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "sceneType"    # I

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 18
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    .line 23
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
    .locals 4
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    move v1, v0

    .line 62
    .local v1, "dialogType":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "sceneType"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 66
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "jarvis.speech.switch.status"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "sceneType"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 50
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "reply"    # Landroid/os/Parcel;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    .line 82
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget v0, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
