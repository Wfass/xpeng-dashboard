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

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

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

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;
    .locals 1

    .line 81
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;
    .locals 2

    .line 96
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;-><init>()V

    :try_start_0
    const-string v1, "album"

    .line 98
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->c(Ljava/lang/String;)V

    const-string v1, "artist"

    .line 99
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->b(Ljava/lang/String;)V

    const-string v1, "title"

    .line 100
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->setTitle(Ljava/lang/String;)V

    const-string v1, "module"

    .line 101
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->d(Ljava/lang/String;)V

    const-string v1, "age"

    .line 102
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->f(Ljava/lang/String;)V

    const-string v1, "gen"

    .line 103
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->e(Ljava/lang/String;)V

    const-string v1, "mood"

    .line 104
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->h(Ljava/lang/String;)V

    const-string v1, "region"

    .line 105
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->g(Ljava/lang/String;)V

    const-string v1, "theme"

    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->i(Ljava/lang/String;)V

    const-string v1, "lan"

    .line 107
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->j(Ljava/lang/String;)V

    const-string v1, "typ"

    .line 108
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->k(Ljava/lang/String;)V

    const-string v1, "mode"

    .line 109
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->l(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 116
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->g()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->j()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Album, artist, module, title and age are all empty string !"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    return-void
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
    .locals 0

    .line 383
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/speech/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 384
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->artist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->album:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->module:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->genre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->age:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->region:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mood:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->theme:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/music/bean/SearchMusic;->mode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
