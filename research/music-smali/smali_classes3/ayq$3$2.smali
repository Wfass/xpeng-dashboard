.class Layq$3$2;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Layq$3;


# direct methods
.method constructor <init>(Layq$3;Ljava/lang/String;I)V
    .locals 0

    .line 350
    iput-object p1, p0, Layq$3$2;->c:Layq$3;

    iput-object p2, p0, Layq$3$2;->a:Ljava/lang/String;

    iput p3, p0, Layq$3$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 353
    iget-object v0, p0, Layq$3$2;->c:Layq$3;

    iget-object v0, v0, Layq$3;->b:Layq;

    invoke-virtual {v0}, Layq;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLoveTotalSync do run "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Layq$3$2;->c:Layq$3;

    iget-object v2, v2, Layq$3;->a:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Layq$3$2;->c:Layq$3;

    iget-object v0, v0, Layq$3;->b:Layq;

    iget-object v1, p0, Layq$3$2;->a:Ljava/lang/String;

    iget v2, p0, Layq$3$2;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Layq$3$2;->c:Layq$3;

    iget-object v3, v3, Layq$3;->b:Layq;

    invoke-virtual {v3}, Layq;->e()Lbae;

    move-result-object v3

    invoke-virtual {v3}, Lbae;->i()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Layq;->a(Ljava/lang/String;I)V

    return-void
.end method
