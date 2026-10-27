.class Lbuf$4;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbuf;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbuf;


# direct methods
.method constructor <init>(Lbuf;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lbuf$4;->a:Lbuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 176
    iget-object v0, p0, Lbuf$4;->a:Lbuf;

    const/16 v1, 0x5dc

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Lbuf;->a(Lbuf;II)J

    move-result-wide v0

    .line 177
    iget-object v2, p0, Lbuf$4;->a:Lbuf;

    invoke-static {v2}, Lbuf;->f(Lbuf;)Lcom/xiaopeng/speech/common/util/f;

    move-result-object v2

    iget-object v3, p0, Lbuf$4;->a:Lbuf;

    invoke-static {v3}, Lbuf;->e(Lbuf;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/speech/common/util/f;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v2, p0, Lbuf$4;->a:Lbuf;

    invoke-static {v2}, Lbuf;->f(Lbuf;)Lcom/xiaopeng/speech/common/util/f;

    move-result-object v2

    iget-object v3, p0, Lbuf$4;->a:Lbuf;

    invoke-static {v3}, Lbuf;->e(Lbuf;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaopeng/speech/common/util/f;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    .line 179
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "reconnect delay:%d"

    invoke-static {p0, v0, v2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
