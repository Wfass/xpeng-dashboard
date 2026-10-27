.class public Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
.super Lcom/xiaopeng/speech/jarvisproto/e;
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

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    .line 18
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
    .locals 2

    const/4 v0, 0x0

    .line 62
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "sceneType"

    .line 63
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    :goto_0
    new-instance p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    invoke-direct {p0, v0}, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sceneType"

    .line 46
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 50
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 77
    iget p2, p0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;->sceneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
