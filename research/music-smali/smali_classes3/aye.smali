.class public Laye;
.super Ljava/lang/Object;
.source "SongQualityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laye$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Laye$1;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Laye;-><init>()V

    return-void
.end method

.method public static a()Laye;
    .locals 1

    .line 46
    sget-object v0, Laye$a;->a:Laye;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "3-5.1\u591a\u58f0\u9053\u97f3\u8d28"

    .line 130
    invoke-static {p1}, Lbrw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "5-HIRES\u97f3\u8d28"

    .line 127
    invoke-static {p1}, Lbrw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "3-\u97f3\u4e50\u65e0\u635f\u97f3\u8d28"

    .line 124
    invoke-static {p1}, Lbrw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "2-\u97f3\u4e50\u9ad8\u54c1\u97f3\u8d28"

    .line 121
    invoke-static {p1}, Lbrw;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "1-\u97f3\u4e50\u6807\u51c6\u97f3\u8d28"

    .line 118
    invoke-static {p1}, Lbrw;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 77
    invoke-static {}, Lbev;->a()Lbev;

    move-result-object v0

    new-instance v1, Laye$1;

    invoke-direct {v1, p0, p1}, Laye$1;-><init>(Laye;I)V

    invoke-virtual {v0, p1, v1}, Lbev;->d(ILbkv;)V

    .line 96
    invoke-direct {p0, p1}, Laye;->b(I)V

    return-void
.end method

.method public b()I
    .locals 2

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lbsi;->getSongQuality()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 2

    const-string v0, "sp_song_quality_guide"

    const/4 v1, 0x0

    .line 141
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 142
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 150
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bs;->a(Ljava/util/Date;)J

    move-result-wide v0

    const-string v2, "sp_song_quality_guide_time"

    .line 151
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public e()Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "sp_song_quality_guide"

    .line 160
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    const-string v3, "sp_song_quality_guide_time"

    .line 161
    invoke-static {v3, v1, v2}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;J)J

    move-result-wide v1

    .line 162
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bs;->a(Ljava/util/Date;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v1, 0xf731400

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
