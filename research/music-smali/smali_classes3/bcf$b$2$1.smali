.class Lbcf$b$2$1;
.super Ljava/lang/Object;
.source "KugouFetchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcf$b$2;->c(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lbcf$b$2;


# direct methods
.method constructor <init>(Lbcf$b$2;Ljava/util/List;II)V
    .locals 0

    .line 187
    iput-object p1, p0, Lbcf$b$2$1;->d:Lbcf$b$2;

    iput-object p2, p0, Lbcf$b$2$1;->a:Ljava/util/List;

    iput p3, p0, Lbcf$b$2$1;->b:I

    iput p4, p0, Lbcf$b$2$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 190
    iget-object v0, p0, Lbcf$b$2$1;->d:Lbcf$b$2;

    iget-object v1, v0, Lbcf$b$2;->a:Lbcf$b;

    iget-object v2, p0, Lbcf$b$2$1;->a:Ljava/util/List;

    iget-object v0, p0, Lbcf$b$2$1;->d:Lbcf$b$2;

    iget-object v0, v0, Lbcf$b$2;->a:Lbcf$b;

    invoke-static {v0}, Lbcf$b;->g(Lbcf$b;)J

    move-result-wide v3

    iget v5, p0, Lbcf$b$2$1;->b:I

    iget v6, p0, Lbcf$b$2$1;->c:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lbcf$b;->a(Lbcf$b;Ljava/util/List;JIIZZ)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lbcf$b$2$1;->d:Lbcf$b$2;

    iget-object v0, v0, Lbcf$b$2;->a:Lbcf$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbcf$b;->f(Lbcf$b;Z)V

    :goto_0
    return-void
.end method
