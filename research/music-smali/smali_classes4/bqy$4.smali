.class Lbqy$4;
.super Ljava/lang/Object;
.source "AudioParseOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqy;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lbqy;


# direct methods
.method constructor <init>(Lbqy;Ljava/util/List;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lbqy$4;->c:Lbqy;

    iput-object p2, p0, Lbqy$4;->a:Ljava/util/List;

    iput p3, p0, Lbqy$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    iget-object v0, p0, Lbqy$4;->c:Lbqy;

    invoke-static {v0}, Lbqy;->a(Lbqy;)Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->count()J

    move-result-wide v0

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbqy$4;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entityCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParseOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lbqy$4;->c:Lbqy;

    invoke-static {v0}, Lbqy;->a(Lbqy;)Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->count()J

    move-result-wide v0

    iget v2, p0, Lbqy$4;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lbqy$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lbqy$4;->c:Lbqy;

    iget-object v1, p0, Lbqy$4;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbqy;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method
