.class public Lbsw;
.super Ljava/lang/Object;
.source "SongQualityModelBase.java"


# instance fields
.field protected a:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lbsw;->b()Lben;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Lben;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 2

    .line 64
    iget-object v0, p0, Lbsw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 65
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbsw;->a:Ljava/lang/Integer;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbsw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 67
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;

    invoke-direct {p1, p3, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;-><init>(ZI)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbsw;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "SongQualityModelBase"

    const-string v2, "setSongQuality: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-direct {p0}, Lbsw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lbsw;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method protected b()Lben;
    .locals 1

    .line 55
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "key_song_quality_"

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 4

    .line 71
    invoke-direct {p0}, Lbsw;->a()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 75
    :cond_0
    iget-object v1, p0, Lbsw;->a:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbsw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbsw;->a:Ljava/lang/Integer;

    .line 78
    :cond_1
    iget-object v0, p0, Lbsw;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onVipChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVipChangeEvent: ======== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SongQualityModelBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsw;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bb;->b()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 37
    invoke-direct {p0}, Lbsw;->a()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onVipChangeEvent: openid is empty"

    .line 39
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lbsw;->e()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, v0, p1}, Lbsw;->a(IZ)V

    :cond_1
    return-void
.end method
