.class public abstract Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;
.super Lcom/xiaopeng/musicradio/bean/BaseInfo;
.source "BaseUserMusicInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public enableLove()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract getHash()Ljava/lang/String;
.end method

.method public abstract getLogo()Ljava/lang/String;
.end method

.method public abstract getMusicFrom()I
.end method

.method public abstract getSinger()Ljava/lang/String;
.end method

.method public abstract getSong()Ljava/lang/String;
.end method

.method public abstract getTs()J
.end method

.method public abstract getUid()Ljava/lang/String;
.end method

.method public abstract setHash(Ljava/lang/String;)V
.end method

.method public abstract setLogo(Ljava/lang/String;)V
.end method

.method public abstract setMusicFrom(I)V
.end method

.method public abstract setSinger(Ljava/lang/String;)V
.end method

.method public abstract setSong(Ljava/lang/String;)V
.end method

.method public abstract setTs(J)V
.end method

.method public abstract setUid(Ljava/lang/String;)V
.end method
