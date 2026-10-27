.class Layq$3$1;
.super Ljava/lang/Object;
.source "MusicCollectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq$3;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Layq$3;


# direct methods
.method constructor <init>(Layq$3;)V
    .locals 0

    .line 343
    iput-object p1, p0, Layq$3$1;->a:Layq$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 346
    iget-object v0, p0, Layq$3$1;->a:Layq$3;

    iget-object v0, v0, Layq$3;->b:Layq;

    invoke-virtual {v0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicLove do run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Layq$3$1;->a:Layq$3;

    iget-object v2, v2, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Layq$3$1;->a:Layq$3;

    invoke-static {v0}, Layq$3;->a(Layq$3;)V

    return-void
.end method
