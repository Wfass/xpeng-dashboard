.class public Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;
.super Lcom/xiaopeng/speech/common/bean/BaseBean;
.source "SearchMusic.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:Ljava/lang/String;

.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private genre:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private mood:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private theme:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>(Landroid/os/Parcel;)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;
    .locals 2
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 83
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 86
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .line 96
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;-><init>()V

    .line 98
    .local v0, "searchMusic":Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;
    :try_start_0
    const-string v1, "album"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setAlbum(Ljava/lang/String;)V

    .line 99
    const-string v1, "artist"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setArtist(Ljava/lang/String;)V

    .line 100
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setTitle(Ljava/lang/String;)V

    .line 101
    const-string v1, "module"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setModule(Ljava/lang/String;)V

    .line 102
    const-string v1, "age"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setAge(Ljava/lang/String;)V

    .line 103
    const-string v1, "gen"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setGenre(Ljava/lang/String;)V

    .line 104
    const-string v1, "mood"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setMood(Ljava/lang/String;)V

    .line 105
    const-string v1, "region"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setRegion(Ljava/lang/String;)V

    .line 106
    const-string v1, "theme"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setTheme(Ljava/lang/String;)V

    .line 107
    const-string v1, "lan"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setLanguage(Ljava/lang/String;)V

    .line 108
    const-string v1, "typ"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setType(Ljava/lang/String;)V

    .line 109
    const-string v1, "mode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setMode(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getModule()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getMood()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getTheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Album, artist, module, title and age are all empty string !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 127
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getMood()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "age"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0
    .param p1, "genre"    # Ljava/lang/String;

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 297
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 328
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/String;

    .line 207
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setMood(Ljava/lang/String;)V
    .locals 0
    .param p1, "mood"    # Ljava/lang/String;

    .line 271
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setTheme(Ljava/lang/String;)V
    .locals 0
    .param p1, "theme"    # Ljava/lang/String;

    .line 284
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 337
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 339
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "title"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v1, "artist"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v1, "album"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    const-string v1, "module"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v1, "gen"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v1, "age"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v1, "mood"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v1, "region"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v1, "theme"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v1, "lan"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v1, "typ"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v1, "mode"

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-object v0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 354
    const/4 v2, 0x0

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchMusic{artist=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", album=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", module=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", genre=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", language=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", age=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", region=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mood=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", theme=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 383
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    return-void
.end method
