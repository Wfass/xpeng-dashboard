.class Lcom/xiaopeng/musicradio/model/dui/i$1;
.super Ljava/lang/Object;
.source "DuiSpeechModel.java"

# interfaces
.implements Lbuf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/i;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/i$1;->a:Lcom/xiaopeng/musicradio/model/dui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "DuiSpeechModel"

    const-string v1, "onDisconnect: ======"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/i$1;->a:Lcom/xiaopeng/musicradio/model/dui/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/dui/i;->a(Lcom/xiaopeng/musicradio/model/dui/i;Z)Z

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 2

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/i$1;->a:Lcom/xiaopeng/musicradio/model/dui/i;

    invoke-static {}, Lbus;->b()Lbus;

    move-result-object v0

    invoke-virtual {v0}, Lbus;->f()Lbxa;

    move-result-object v0

    invoke-virtual {v0}, Lbxa;->g()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/dui/i;->a(Lcom/xiaopeng/musicradio/model/dui/i;Z)Z

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DuiSpeechModel onConnect: ====="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/i$1;->a:Lcom/xiaopeng/musicradio/model/dui/i;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->a(Lcom/xiaopeng/musicradio/model/dui/i;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DuiSpeechModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/i$1;->a:Lcom/xiaopeng/musicradio/model/dui/i;

    const-class v0, Lcom/xiaopeng/speech/protocol/node/dialog/DialogNode;

    new-instance v1, Lcom/xiaopeng/musicradio/model/dui/i$1$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/dui/i$1$1;-><init>(Lcom/xiaopeng/musicradio/model/dui/i$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/model/dui/i;->a(Ljava/lang/Class;Lbuj;)V

    return-void
.end method
