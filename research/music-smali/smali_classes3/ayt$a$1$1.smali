.class Layt$a$1$1;
.super Ljava/lang/Object;
.source "MusicFetchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layt$a$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SongListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Layt$a$1;


# direct methods
.method constructor <init>(Layt$a$1;Ljava/util/List;II)V
    .locals 0

    .line 407
    iput-object p1, p0, Layt$a$1$1;->d:Layt$a$1;

    iput-object p2, p0, Layt$a$1$1;->a:Ljava/util/List;

    iput p3, p0, Layt$a$1$1;->b:I

    iput p4, p0, Layt$a$1$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 410
    iget-object v0, p0, Layt$a$1$1;->d:Layt$a$1;

    iget-object v1, v0, Layt$a$1;->a:Layt$a;

    iget-object v2, p0, Layt$a$1$1;->a:Ljava/util/List;

    iget-object v0, p0, Layt$a$1$1;->d:Layt$a$1;

    iget-object v0, v0, Layt$a$1;->a:Layt$a;

    iget-wide v3, v0, Layt$a;->c:J

    iget v5, p0, Layt$a$1$1;->b:I

    iget v6, p0, Layt$a$1$1;->c:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Layt$a;->a(Ljava/util/List;JIIZZ)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Layt$a$1$1;->d:Layt$a$1;

    iget-object v0, v0, Layt$a$1;->a:Layt$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Layt$a;->a(Z)V

    :goto_0
    return-void
.end method
