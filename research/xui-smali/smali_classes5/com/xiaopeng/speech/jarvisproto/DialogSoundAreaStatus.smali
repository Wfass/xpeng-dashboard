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
    .param p1, "screen"    # I
    .param p2, "soundArea"    # I
    .param p3, "soundAreaStatus"    # I
    .param p4, "listeningStatus"    # Z
    .param p5, "recognizingStatus"    # Z
    .param p6, "underStandingStatus"    # Z
    .param p7, "ttsPlayingStatus"    # Z

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

    .line 51
    return-void
.end method

.method public constructor <init>(IIIZZZZZ)V
    .locals 0
    .param p1, "screen"    # I
    .param p2, "soundArea"    # I
    .param p3, "soundAreaStatus"    # I
    .param p4, "listeningStatus"    # Z
    .param p5, "recognizingStatus"    # Z
    .param p6, "underStandingStatus"    # Z
    .param p7, "ttsPlayingStatus"    # Z
    .param p8, "reActive"    # Z

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

    .line 65
    return-void
.end method

.method public constructor <init>(IIZZZZ)V
    .locals 8
    .param p1, "screen"    # I
    .param p2, "soundArea"    # I
    .param p3, "listeningStatus"    # Z
    .param p4, "recognizingStatus"    # Z
    .param p5, "underStandingStatus"    # Z
    .param p6, "ttsPlayingStatus"    # Z

    .line 37
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;-><init>(IIIZZZZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 8
    .param p1, "soundArea"    # I
    .param p2, "listeningStatus"    # Z
    .param p3, "recognizingStatus"    # Z
    .param p4, "underStandingStatus"    # Z
    .param p5, "ttsPlayingStatus"    # Z

    .line 31
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;-><init>(IIIZZZZ)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

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

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    .line 76
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 20
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "screen":I
    const/4 v2, 0x0

    .line 122
    .local v2, "soundAreaStatus":I
    const/4 v3, 0x0

    .line 123
    .local v3, "listeningStatus":Z
    const/4 v4, 0x0

    .line 124
    .local v4, "recognizingStatus":Z
    const/4 v5, 0x0

    .line 125
    .local v5, "underStandingStatus":Z
    const/4 v6, 0x0

    .line 126
    .local v6, "ttsPlayingStatus":Z
    const/4 v7, -0x1

    .line 127
    .local v7, "soundArea":I
    const/4 v0, 0x0

    move v8, v0

    .line 129
    .local v8, "reActive":Z
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p0

    :try_start_1
    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v11, "listeningStatus"

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move v3, v11

    .line 131
    const-string v11, "recognizingStatus"

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move v4, v11

    .line 132
    const-string v11, "underStandingStatus"

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move v5, v11

    .line 133
    const-string v11, "ttsPlayingStatus"

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move v6, v11

    .line 135
    const-string v11, "soundAreaStatus"

    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 136
    const-string v0, "soundArea"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 137
    const-string v0, "screen"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .line 138
    const-string v0, "reActive"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v0

    .line 141
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 142
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    new-instance v0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    move-object v11, v0

    move v12, v1

    move v13, v7

    move v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    invoke-direct/range {v11 .. v19}, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;-><init>(IIIZZZZZ)V

    return-object v0
.end method


# virtual methods
.method public copyState(Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    .line 164
    if-nez p1, :cond_0

    .line 165
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
    iget-boolean v0, p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    iput-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    .line 173
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "jarvis.dialog.sound.area.status"

    return-object v0
.end method

.method public getJsonData()Ljava/lang/String;
    .locals 3

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "screen"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->screen:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v1, "soundArea"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundArea:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v1, "soundAreaStatus"

    iget v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v1, "listeningStatus"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 103
    const-string v1, "recognizingStatus"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 104
    const-string v1, "underStandingStatus"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 105
    const-string v1, "ttsPlayingStatus"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 106
    const-string v1, "reActive"

    iget-boolean v2, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reset()Z
    .locals 1

    .line 176
    const/4 v0, 0x0

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

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->screen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundArea:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->soundAreaStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->listeningStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    iget-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->recognizingStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    iget-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->underStandingStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 159
    iget-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->ttsPlayingStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    iget-boolean v0, p0, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;->reActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 161
    return-void
.end method
