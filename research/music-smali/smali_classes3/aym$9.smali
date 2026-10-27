.class Laym$9;
.super Ljava/lang/Object;
.source "BluetoothServiceNforeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

.field final synthetic b:Laym;


# direct methods
.method constructor <init>(Laym;Lcom/xiaopeng/musicradio/model/bluetooth/e;)V
    .locals 0

    .line 986
    iput-object p1, p0, Laym$9;->b:Laym;

    iput-object p2, p0, Laym$9;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 989
    iget-object v0, p0, Laym$9;->b:Laym;

    invoke-static {v0}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v0

    iget-object v1, p0, Laym$9;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Laym$9;->b:Laym;

    iget-object v3, p0, Laym$9;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Laym;->a(Laym;JJ)V

    .line 991
    iget-object v0, p0, Laym$9;->b:Laym;

    invoke-static {v0}, Laym;->n(Laym;)Ljava/util/Set;

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

    .line 992
    new-instance v2, Laym$9$1;

    invoke-direct {v2, p0, v1}, Laym$9$1;-><init>(Laym$9;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 999
    :cond_0
    iget-object v0, p0, Laym$9;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->d()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Laym$9;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laym$9;->a:Lcom/xiaopeng/musicradio/model/bluetooth/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1000
    :cond_1
    iget-object v0, p0, Laym$9;->b:Laym;

    invoke-static {v0}, Laym;->i(Laym;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a()V

    .line 1001
    iget-object v0, p0, Laym$9;->b:Laym;

    invoke-static {v0}, Laym;->n(Laym;)Ljava/util/Set;

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

    .line 1002
    new-instance v2, Laym$9$2;

    invoke-direct {v2, p0, v1}, Laym$9$2;-><init>(Laym$9;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V

    invoke-static {v2}, Lbql;->j(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void
.end method
