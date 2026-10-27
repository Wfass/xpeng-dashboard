.class public Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
.super Lcom/xiaopeng/speech/jarvisproto/JarvisProto;
.source "DialogSoundAreaStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT:Ljava/lang/String; = "jarvis.dialog.sound.area.status"

.field public static final STATUS_INPUT_ACTIVE:I = 0x3

.field public static final STATUS_INPUT_WAIT:I = 0x2

.field public static final STATUS_INPUT_WAIT_AWAKE:I = 0x1

.field public static final STATUS_OTHER:I = -0x1

.field public static final STATUS_WAIT_AWAKE:I


# instance fields
.field public listeningStatus:Z

.field public reActive:Z

.field public recognizingStatus:Z

.field public screen:I

.field public soundArea:I

.field public soundAreaStatus:I

.field public ttsPlayingStatus:Z

.field public underStandingStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIZZZZ)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 44
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->screen:I

    .line 45
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundArea:I

    .line 46
    iput p3, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    .line 47
    iput-boolean p4, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    .line 48
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    .line 49
    iput-boolean p6, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    .line 50
    iput-boolean p7, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    return-void
.end method

.method public constructor <init>(IIIZZZZZ)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 57
    iput p1, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->screen:I

    .line 58
    iput p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundArea:I

    .line 59
    iput p3, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    .line 60
    iput-boolean p4, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    .line 61
    iput-boolean p5, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    .line 62
    iput-boolean p6, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    .line 63
    iput-boolean p7, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    .line 64
    iput-boolean p8, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;-><init>(IIIZZZZ)V

    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;-><init>(IIIZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/speech/jarvisproto/JarvisProto;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->screen:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundArea:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 18

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 129
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v3, p0

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "listeningStatus"

    .line 130
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string v4, "recognizingStatus"

    .line 131
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    const-string v5, "underStandingStatus"

    .line 132
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    const-string v6, "ttsPlayingStatus"

    .line 133
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v7, "soundAreaStatus"

    .line 135
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    const-string v8, "soundArea"

    .line 136
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v8, "screen"

    .line 137
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string v9, "reActive"

    .line 138
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move v8, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move v7, v1

    goto :goto_3

    :catch_3
    move-exception v0

    move v6, v1

    goto :goto_2

    :catch_4
    move-exception v0

    move v5, v1

    goto :goto_1

    :catch_5
    move-exception v0

    move v4, v1

    goto :goto_0

    :catch_6
    move-exception v0

    move v3, v1

    move v4, v3

    :goto_0
    move v5, v4

    :goto_1
    move v6, v5

    :goto_2
    move v7, v6

    :goto_3
    move v8, v7

    .line 140
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    move/from16 v17, v1

    move v11, v2

    move v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move v12, v7

    move v10, v8

    .line 142
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;-><init>(IIIZZZZZ)V

    return-object v0
.end method


# virtual methods
.method public copyState(Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget v0, p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    .line 168
    iget-boolean v0, p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    .line 169
    iget-boolean v0, p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    .line 170
    iget-boolean v0, p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    .line 171
    iget-boolean v0, p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    .line 172
    iget-boolean p1, p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    iput-boolean p1, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "jarvis.dialog.sound.area.status"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "screen"

    .line 99
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->screen:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "soundArea"

    .line 100
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "soundAreaStatus"

    .line 101
    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "listeningStatus"

    .line 102
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "recognizingStatus"

    .line 103
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "underStandingStatus"

    .line 104
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ttsPlayingStatus"

    .line 105
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "reActive"

    .line 106
    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()Z
    .locals 1

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    .line 177
    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    .line 178
    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    .line 179
    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    .line 180
    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    .line 181
    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 153
    iget p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->screen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundArea:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    iget-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    iget-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    iget-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    iget-boolean p2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
