.class Lbtd$1$1;
.super Ljava/lang/Object;
.source "XmlyVipModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtd$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

.field final synthetic b:Lbtd$1;


# direct methods
.method constructor <init>(Lbtd$1;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lbtd$1$1;->b:Lbtd$1;

    iput-object p2, p0, Lbtd$1$1;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    iget-object v0, p0, Lbtd$1$1;->b:Lbtd$1;

    iget-wide v0, v0, Lbtd$1;->b:J

    iget-object v2, p0, Lbtd$1$1;->b:Lbtd$1;

    iget-object v2, v2, Lbtd$1;->d:Lbtd;

    invoke-static {v2}, Lbtd;->a(Lbtd;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 103
    iget-object v0, p0, Lbtd$1$1;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lbtd$1$1;->b:Lbtd$1;

    iget-object v1, v1, Lbtd$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;->setOpenId(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lbtd$1$1;->b:Lbtd$1;

    iget-object v0, v0, Lbtd$1;->d:Lbtd;

    iget-object v1, p0, Lbtd$1$1;->a:Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    invoke-static {v0, v1}, Lbtd;->a(Lbtd;Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;)Lcom/xiaopeng/musicradio/bean/XmlyAccountInfo;

    .line 107
    iget-object v0, p0, Lbtd$1$1;->b:Lbtd$1;

    iget-boolean v0, v0, Lbtd$1;->c:Z

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
