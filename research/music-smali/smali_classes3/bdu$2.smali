.class Lbdu$2;
.super Lbkv;
.source "MusicAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdu;->a(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbdu;


# direct methods
.method constructor <init>(Lbdu;I)V
    .locals 0

    .line 145
    iput-object p1, p0, Lbdu$2;->b:Lbdu;

    iput p2, p0, Lbdu$2;->a:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicAccountManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p1, p0, Lbdu$2;->b:Lbdu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbdu;->a(Lbdu;I)I

    const/4 p1, 0x0

    const-string v0, "SP_IS_INIT_BOOLEAN"

    .line 163
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Z)Z

    move-result v1

    .line 164
    iget-object v2, p0, Lbdu$2;->b:Lbdu;

    invoke-virtual {v2}, Lbdu;->c()V

    if-eqz v1, :cond_0

    .line 166
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p1, "error: switch_error"

    .line 169
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->switch_error:I

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 171
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    sget p2, Lcom/xiaopeng/musicradio/common/k$g;->switch_error:I

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 2

    const-string p1, "MusicAccountManager"

    const-string v0, "response: "

    .line 148
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "switchAccount"

    .line 149
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    const-string v0, "SP_IS_INIT_BOOLEAN"

    const/4 v1, 0x0

    .line 150
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 151
    iget-object v0, p0, Lbdu$2;->b:Lbdu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbdu;->a(Lbdu;I)I

    .line 152
    iget-object v0, p0, Lbdu$2;->b:Lbdu;

    iget v1, p0, Lbdu$2;->a:I

    invoke-static {v0, v1}, Lbdu;->b(Lbdu;I)I

    .line 153
    iget-object v0, p0, Lbdu$2;->b:Lbdu;

    invoke-static {v0}, Lbdu;->a(Lbdu;)I

    move-result v0

    const-string v1, "MUSIC_ACCOUNT_TYPE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 154
    iget-object v0, p0, Lbdu$2;->b:Lbdu;

    invoke-static {v0}, Lbdu;->a(Lbdu;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/common/m;->a(I)V

    .line 155
    iget-object v0, p0, Lbdu$2;->b:Lbdu;

    invoke-virtual {v0}, Lbdu;->c()V

    const-string v0, "response: switch_success"

    .line 156
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
