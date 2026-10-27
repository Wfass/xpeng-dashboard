.class Lbdw$5;
.super Ljava/lang/Object;
.source "QqManagerModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdw;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbdw;


# direct methods
.method constructor <init>(Lbdw;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lbdw$5;->a:Lbdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 195
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v0}, Lbfe;->getListSign()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;)Z

    move-result v2

    .line 202
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lbdw$5;->a:Lbdw;

    invoke-virtual {v1}, Lbdw;->j()I

    move-result v1

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->d()Laqt;

    move-result-object v2

    invoke-interface {v2}, Laqt;->j()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 205
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->f()V

    .line 207
    :cond_0
    iget-object v1, p0, Lbdw$5;->a:Lbdw;

    invoke-virtual {v1}, Lbdw;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lbfe;->resetUserData(I)V

    .line 208
    iget-object v1, p0, Lbdw$5;->a:Lbdw;

    invoke-virtual {v1}, Lbdw;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lbfe;->resetPlayList(I)V

    .line 209
    iget-object v1, p0, Lbdw$5;->a:Lbdw;

    invoke-virtual {v1}, Lbdw;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lbfe;->clearUserData(I)V

    :cond_1
    return-void
.end method
