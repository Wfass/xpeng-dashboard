.class Lbja$1;
.super Lbkv;
.source "KugouReplayUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbja;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field final synthetic c:Lbja;


# direct methods
.method constructor <init>(Lbja;JLcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lbja$1;->c:Lbja;

    iput-wide p2, p0, Lbja$1;->a:J

    iput-object p4, p0, Lbja$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " s = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KugouReplayUp"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KugouReplayUp"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lbja$1;->c:Lbja;

    iget-wide v0, p0, Lbja$1;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbja;->a(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lbja$1;->c:Lbja;

    iget-object v0, p0, Lbja$1;->b:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbja;->c(Ljava/lang/String;)V

    return-void
.end method
