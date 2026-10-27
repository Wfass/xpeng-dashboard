.class Lbdl$b$1$1;
.super Ljava/lang/Object;
.source "AbsReissueModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdl$b$1;->a(Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

.field final synthetic b:Lbdl$b$1;


# direct methods
.method constructor <init>(Lbdl$b$1;Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lbdl$b$1$1;->b:Lbdl$b$1;

    iput-object p2, p0, Lbdl$b$1$1;->a:Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lbdl$b$1$1;->b:Lbdl$b$1;

    iget-object v1, p0, Lbdl$b$1$1;->a:Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

    iget-object v2, v0, Lbdl$b$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-static {v0, v1, v2}, Lbdl$b$1;->a(Lbdl$b$1;Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    .line 100
    iget-object v0, p0, Lbdl$b$1$1;->b:Lbdl$b$1;

    iget-object v0, v0, Lbdl$b$1;->a:Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;->getMergeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;

    .line 103
    iget-object v2, p0, Lbdl$b$1$1;->b:Lbdl$b$1;

    iget-object v3, p0, Lbdl$b$1$1;->a:Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;

    invoke-static {v2, v3, v1}, Lbdl$b$1;->a(Lbdl$b$1;Lcom/xiaopeng/musicradio/bean/user/ReissueCallbakBean;Lcom/xiaopeng/musicradio/bean/db/ReissueInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
