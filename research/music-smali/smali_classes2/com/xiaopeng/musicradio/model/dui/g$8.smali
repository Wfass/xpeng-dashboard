.class Lcom/xiaopeng/musicradio/model/dui/g$8;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;I)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$8;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/dui/g$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "DuiMusicModel"

    const-string v1, "run: ============="

    .line 501
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 504
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->d()Laqt;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 506
    invoke-interface {v1}, Laqt;->getPosition()I

    move-result v2

    .line 507
    iget v3, p0, Lcom/xiaopeng/musicradio/model/dui/g$8;->a:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 508
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMusicBackward: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-interface {v1, v2}, Laqt;->seekTo(I)V

    :cond_1
    return-void
.end method
