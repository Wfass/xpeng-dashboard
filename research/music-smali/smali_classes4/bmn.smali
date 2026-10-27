.class public Lbmn;
.super Ljava/lang/Object;
.source "ProgramCollectManager.java"

# interfaces
.implements Lbds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmn$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lbee;->a()Lbee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbee;->a(Lbds;)V

    return-void
.end method

.method public static a()Lbmn;
    .locals 1

    .line 53
    sget-object v0, Lbmn$a;->a:Lbmn;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 274
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbmo;->b(J)V

    return-void
.end method

.method public a(Lbdo;Ljava/lang/String;I)V
    .locals 1

    const-string p3, "ProgramCollectManager"

    const-string v0, "playReadingTrackList"

    .line 122
    invoke-static {p3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget p3, Lbue$a;->program_xmly_login_txt:I

    invoke-static {p3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/xiaopeng/musicradio/utils/v;->a(Ljava/lang/String;Ljava/lang/String;Lbdo;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
    .locals 2

    const-string v0, "ProgramCollectManager"

    const-string v1, "readCancelLove"

    .line 204
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    new-instance v1, Lbmn$3;

    invoke-direct {v1, p0, p1}, Lbmn$3;-><init>(Lbmn;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    invoke-virtual {v0, v1}, Lbdx;->a(Lbdo;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V
    .locals 3

    .line 86
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbmp;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbmn;->b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;ILjava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/xiaopeng/musicradio/bean/db/ReadingInfo$SORT;
        .end annotation
    .end param

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveReadHistory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramCollectManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;ILjava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object p2

    .line 247
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object p3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lbmq;->c(J)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "saveReadHistory news , may delay a little "

    .line 253
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v0

    new-instance p3, Lbmn$4;

    invoke-direct {p3, p0, p2}, Lbmn$4;-><init>(Lbmn;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    new-instance v2, Lbmn$5;

    invoke-direct {v2, p0, p2}, Lbmn$5;-><init>(Lbmn;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    invoke-virtual {p1, v0, v1, p3, v2}, Lbmq;->a(JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 248
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result p1

    if-lez p1, :cond_2

    .line 249
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbmq;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    .line 251
    :cond_2
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbmo;->a(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ProgramCollectManager"

    const-string v1, "playReadingTrack"

    .line 98
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget v0, Lbue$a;->program_xmly_login_txt:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lbmn$1;

    invoke-direct {v1, p0, p2}, Lbmn$1;-><init>(Lbmn;I)V

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/musicradio/utils/v;->a(Ljava/lang/String;Ljava/lang/String;Lbdo;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ProgramCollectManager"

    const-string v1, "clearUserData: =========="

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    invoke-virtual {v0}, Lbmp;->e()V

    const-string v0, "should_down_read_love"

    const/4 v1, 0x1

    .line 64
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 65
    invoke-static {}, Laze;->a()Laze;

    move-result-object v0

    invoke-virtual {v0}, Laze;->b()V

    .line 66
    new-instance v0, Lasj$f;

    invoke-direct {v0}, Lasj$f;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V
    .locals 3

    const-string v0, "ProgramCollectManager"

    const-string v1, "readLove"

    .line 134
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget v0, Lbue$a;->program_xmly_login_txt:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v2, Lbue$a;->title_dialog_program_login:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbmn$2;

    invoke-direct {v2, p0, p1, p2}, Lbmn$2;-><init>(Lbmn;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/v;->a(Ljava/lang/String;Ljava/lang/String;Lbdo;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 71
    invoke-static {}, Laze;->a()Laze;

    move-result-object v0

    invoke-virtual {v0}, Laze;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 283
    invoke-static {}, Laze;->a()Laze;

    move-result-object v0

    invoke-virtual {v0}, Laze;->d()V

    return-void
.end method

.method public e()V
    .locals 0

    .line 279
    invoke-virtual {p0}, Lbmn;->d()V

    return-void
.end method
