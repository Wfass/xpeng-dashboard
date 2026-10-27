.class Lbaj$1;
.super Ljava/lang/Object;
.source "MusicRadioOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaj;->b(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

.field final synthetic c:Lbaj;


# direct methods
.method constructor <init>(Lbaj;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lbaj$1;->c:Lbaj;

    iput-object p2, p0, Lbaj$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lbaj$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 52
    iget-object v0, p0, Lbaj$1;->c:Lbaj;

    iget-object v1, p0, Lbaj$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lbaj$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-static {v0, v1, v2}, Lbaj;->a(Lbaj;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordItem run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " categoryItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbaj$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicRadioOperation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 55
    instance-of v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lbaj$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 58
    :cond_0
    instance-of v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lbaj$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 60
    :cond_1
    instance-of v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lbaj$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 64
    :cond_2
    iget-object v0, p0, Lbaj$1;->c:Lbaj;

    iget-object v1, p0, Lbaj$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0, v1}, Lbaj;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 65
    iget-object v0, p0, Lbaj$1;->c:Lbaj;

    invoke-static {v0}, Lbaj;->a(Lbaj;)V

    .line 66
    new-instance v0, Lase$b;

    invoke-direct {v0}, Lase$b;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
