.class Lcom/xiaopeng/musicradio/model/dui/g$5;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->b(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$5;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/g$5;->a:Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$5;->a:Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$5;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/g$a;->b()V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$5;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/g$a;->b()V

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$5;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/g$a;->a()V

    :goto_0
    return-void
.end method
