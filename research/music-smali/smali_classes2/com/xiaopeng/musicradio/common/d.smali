.class public Lcom/xiaopeng/musicradio/common/d;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:J

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->location_province_default_value:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->a:Ljava/lang/String;

    const-wide/32 v0, 0x5265c00

    .line 88
    sput-wide v0, Lcom/xiaopeng/musicradio/common/d;->b:J

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/albums/detail"

    .line 249
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->c:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/albums/trackList"

    .line 250
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->d:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/albums/specTrackList"

    .line 251
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->e:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v2/reading/albums/search"

    .line 252
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->f:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/albums/daily"

    .line 253
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->g:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v2/reading/categories/list"

    .line 254
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->h:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/categories/albumList"

    .line 255
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->i:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/ranks/totalAlbumList"

    .line 256
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->j:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/albums/guessLike"

    .line 257
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->k:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com/media/v3/reading/albums/voiceNewsTrackList"

    .line 258
    sput-object v1, Lcom/xiaopeng/musicradio/common/d;->l:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com/media/v3/reading/track/listDetail"

    .line 259
    sput-object v1, Lcom/xiaopeng/musicradio/common/d;->m:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com/media/v2/reading/radios/recommendList"

    .line 262
    sput-object v1, Lcom/xiaopeng/musicradio/common/d;->n:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com/media/v2/reading/radios/list"

    .line 263
    sput-object v1, Lcom/xiaopeng/musicradio/common/d;->o:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com/media/v2/reading/radios/trackList"

    .line 264
    sput-object v1, Lcom/xiaopeng/musicradio/common/d;->p:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com/media/v3/reading/categories/list"

    .line 266
    sput-object v1, Lcom/xiaopeng/musicradio/common/d;->q:Ljava/lang/String;

    const-string v1, "https://xmart.xiaopeng.com/media/v3/reading/albums/todayNewsChannels"

    .line 267
    sput-object v1, Lcom/xiaopeng/musicradio/common/d;->r:Ljava/lang/String;

    .line 268
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->s:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/ranks/hotRanks"

    .line 269
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->t:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/ranks/albumList"

    .line 270
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->u:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/play/record"

    .line 271
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->v:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/track/playInfo"

    .line 272
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->w:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/track/detail"

    .line 273
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->x:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/user/favourite/sync/result"

    .line 274
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->y:Ljava/lang/String;

    const-string v0, "https://xmart.xiaopeng.com/media/v3/reading/user/favourite/sync/apply"

    .line 275
    sput-object v0, Lcom/xiaopeng/musicradio/common/d;->z:Ljava/lang/String;

    return-void
.end method
