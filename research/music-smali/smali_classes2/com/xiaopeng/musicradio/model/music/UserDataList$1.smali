.class Lcom/xiaopeng/musicradio/model/music/UserDataList$1;
.super Ljava/lang/Object;
.source "UserDataList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/music/UserDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/UserDataList;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/UserDataList;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList$1;->a:Lcom/xiaopeng/musicradio/model/music/UserDataList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList$1;->a:Lcom/xiaopeng/musicradio/model/music/UserDataList;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList$1;->a:Lcom/xiaopeng/musicradio/model/music/UserDataList;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 72
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/UserDataList$1;->a:Lcom/xiaopeng/musicradio/model/music/UserDataList;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, "&#&#"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SP_MUSIC_LIST_SOTR_USER"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
