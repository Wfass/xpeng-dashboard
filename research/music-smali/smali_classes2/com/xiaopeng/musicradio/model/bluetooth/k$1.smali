.class Lcom/xiaopeng/musicradio/model/bluetooth/k$1;
.super Ljava/lang/Object;
.source "XpMusicBluetoothModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/k;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/k;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 171
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->b(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 172
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 174
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove match history: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XpMusicBluetoothModel"

    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 177
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 182
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$j;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$j;-><init>(Ljava/util/HashSet;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
