.class Layj$2;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layj;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

.field final synthetic b:Layj;


# direct methods
.method constructor <init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Layj$2;->b:Layj;

    iput-object p2, p0, Layj$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1056
    iget-object v0, p0, Layj$2;->b:Layj;

    invoke-static {v0}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v0

    iget-object v1, p0, Layj$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)Z

    move-result v0

    const-string v1, "PlaybackViewModel"

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "onMetadataChanged update song info: "

    .line 1057
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Layj$2;->b:Layj;

    iget-object v1, p0, Layj$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Layj;->a(Layj;JJ)V

    .line 1059
    iget-object v0, p0, Layj$2;->b:Layj;

    invoke-static {v0}, Layj;->f(Layj;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 1060
    new-instance v2, Layj$2$1;

    invoke-direct {v2, p0, v1}, Layj$2$1;-><init>(Layj$2;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1067
    :cond_0
    iget-object v0, p0, Layj$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Layj$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Layj$2;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "onMetadataChanged update song info with current data: "

    .line 1068
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v0, p0, Layj$2;->b:Layj;

    invoke-static {v0}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a()V

    .line 1070
    iget-object v0, p0, Layj$2;->b:Layj;

    invoke-static {v0}, Layj;->f(Layj;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/model/bluetooth/i;

    .line 1071
    new-instance v2, Layj$2$2;

    invoke-direct {v2, p0, v1}, Layj$2$2;-><init>(Layj$2;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void
.end method
