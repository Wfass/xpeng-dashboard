.class Lcom/xiaopeng/musicradio/model/dui/e$7;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e;I)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$7;->b:Lcom/xiaopeng/musicradio/model/dui/e;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 163
    invoke-static {}, Lazt;->a()Lazt;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/model/dui/e$7;->a:I

    invoke-virtual {v0, v1}, Lazt;->b(I)Lazs;

    move-result-object v0

    invoke-virtual {v0}, Lazs;->f()Ljava/util/List;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 166
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    .line 167
    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v2

    .line 168
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/dui/e$7$1;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/model/dui/e$7$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/e$7;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
