.class Lcom/xiaopeng/musicradio/model/dui/g$22;
.super Ljava/lang/Object;
.source "DuiMusicModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/g;->h()V
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

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/g$22;->a:Lcom/xiaopeng/musicradio/model/dui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    invoke-static {}, Laqq;->a()Laqq;

    move-result-object v0

    invoke-virtual {v0}, Laqq;->c()Laqs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v0}, Laqs;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    .line 204
    :cond_0
    invoke-interface {v0}, Laqs;->d()V

    :cond_1
    return-void
.end method
