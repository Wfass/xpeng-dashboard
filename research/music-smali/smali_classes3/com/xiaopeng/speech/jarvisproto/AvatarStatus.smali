.class public Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
.super Lcom/xiaopeng/speech/jarvisproto/e;
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

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/e;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    .line 22
    iput-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
    .locals 3

    const/4 v0, 0x0

    .line 69
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "homeScreenAvatarShow"

    .line 70
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "backScreenAvatarShow"

    .line 72
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move p0, v0

    .line 75
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    :goto_1
    new-instance v1, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;-><init>(ZZ)V

    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "homeScreenAvatarShow"

    .line 51
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "backScreenAvatarShow"

    .line 52
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
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

    .line 87
    iget-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->homeScreenAvatarShow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 88
    iget-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;->backScreenAvatarShow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
