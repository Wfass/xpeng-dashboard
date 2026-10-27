.class Lcom/xiaopeng/musicradio/model/dui/e$8;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e;->b(I)V
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

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$8;->b:Lcom/xiaopeng/musicradio/model/dui/e;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 203
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 204
    new-instance v0, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;-><init>()V

    const-string v1, "new_music_radio"

    .line 205
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setExtra(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listsign_collect_music_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/model/dui/e$8;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->setPrefix(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/e$8$1;

    const/16 v2, 0x32

    invoke-direct {v1, p0, v0, v2}, Lcom/xiaopeng/musicradio/model/dui/e$8$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/e$8;Ljava/lang/String;I)V

    .line 220
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/model/dui/e$8;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;I)V

    return-void
.end method
