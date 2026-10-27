.class Lask$1$1;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lask$1;


# direct methods
.method constructor <init>(Lask$1;Z)V
    .locals 0

    .line 102
    iput-object p1, p0, Lask$1$1;->b:Lask$1;

    iput-boolean p2, p0, Lask$1$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    iget-boolean v0, p0, Lask$1$1;->a:Z

    const-string v1, "AudioFocusModel"

    if-nez v0, :cond_1

    .line 107
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/g;->c()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const-string v0, "pauseByVolume when audio gain, because [mute]"

    .line 109
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lask$1$1;->b:Lask$1;

    iget-object v0, v0, Lask$1;->a:Lask;

    invoke-static {v0}, Lask;->a(Lask;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lask$1$1;->b:Lask$1;

    iget-object v0, v0, Lask$1;->a:Lask;

    invoke-static {v0, v2}, Lask;->a(Lask;I)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 120
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fgn run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lask$1$1;->b:Lask$1;

    iget-object v0, v0, Lask$1;->a:Lask;

    invoke-static {v0}, Lask;->b(Lask;)Laqt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v1, p0, Lask$1$1;->b:Lask$1;

    iget-object v1, v1, Lask$1;->a:Lask;

    invoke-static {v1}, Lask;->c(Lask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lask$a;

    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0}, Lask$a;->riseVolume()V

    :cond_2
    return-void
.end method
