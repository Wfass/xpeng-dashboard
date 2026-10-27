.class Lcom/xiaopeng/musicradio/model/dui/g$25;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/g;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$25;->a:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 262
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$25;->a:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/g$a;->e()V

    goto :goto_1

    .line 266
    :cond_1
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 267
    new-instance v0, Laru$a;

    invoke-direct {v0}, Laru$a;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$25;->a:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/g$a;->e()V

    goto :goto_1

    .line 263
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/g$25;->a:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/g;->a(Lcom/xiaopeng/musicradio/model/dui/g;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/model/dui/g$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/model/dui/g$a;->e()V

    :cond_4
    :goto_1
    return-void
.end method
