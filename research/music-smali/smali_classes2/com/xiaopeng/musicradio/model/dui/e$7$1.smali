.class Lcom/xiaopeng/musicradio/model/dui/e$7$1;
.super Ljava/lang/Object;
.source "DuiMusicMediaModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/e$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/e$7;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/e$7;Ljava/util/List;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/e$7$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$7;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/e$7$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 173
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$7$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/e$7$1;->a:Ljava/util/List;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/aj;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/dui/e$7$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$7;

    iget v3, v3, Lcom/xiaopeng/musicradio/model/dui/e$7;->a:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/e$7$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$7;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/dui/e$7;->b:Lcom/xiaopeng/musicradio/model/dui/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/e$7$1;->b:Lcom/xiaopeng/musicradio/model/dui/e$7;

    iget v1, v1, Lcom/xiaopeng/musicradio/model/dui/e$7;->a:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/dui/e;->a(Lcom/xiaopeng/musicradio/model/dui/e;I)V

    :goto_0
    return-void
.end method
