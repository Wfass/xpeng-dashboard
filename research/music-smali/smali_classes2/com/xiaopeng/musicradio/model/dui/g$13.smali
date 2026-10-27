.class Lcom/xiaopeng/musicradio/model/dui/g$13;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;F)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$13;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/dui/g$13;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "DuiMusicModel"

    const-string v1, "run: onMusicSpeedSet"

    .line 575
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/dui/g$13;->b:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/dui/g$13;->a:F

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/dui/g$a;->a(F)V

    :cond_1
    return-void
.end method
