.class Lazv$6;
.super Ljava/lang/Object;
.source "LocalLoveOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazv;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Lazv;


# direct methods
.method constructor <init>(Lazv;ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lazv$6;->c:Lazv;

    iput-boolean p2, p0, Lazv$6;->a:Z

    iput-object p3, p0, Lazv$6;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 194
    iget-object v0, p0, Lazv$6;->c:Lazv;

    invoke-virtual {v0}, Lazv;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLoveStatusAsync do run: force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lazv$6;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", musicInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lazv$6;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lazv$6;->c:Lazv;

    invoke-virtual {v0}, Lazv;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lazv;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lazv$6;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-boolean v3, p0, Lazv$6;->a:Z

    invoke-static {v0, v1, v2, v3}, Lazv;->a(Lazv;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lasj$q;

    iget-object v1, p0, Lazv$6;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lazv$6;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lasj$q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
