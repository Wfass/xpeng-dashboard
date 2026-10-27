.class Lbri$2;
.super Ljava/lang/Object;
.source "RetrieverEngine.java"

# interfaces
.implements Lbrh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbri;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbrh;

.field final synthetic b:Lbri;


# direct methods
.method constructor <init>(Lbri;Lbrh;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lbri$2;->b:Lbri;

    iput-object p2, p0, Lbri$2;->a:Lbrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetrieverEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lbri$2;->b:Lbri;

    invoke-static {v0}, Lbri;->a(Lbri;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbri$a;

    iget-object v2, p0, Lbri$2;->a:Lbrh;

    invoke-direct {v1, v2, p2, p1}, Lbri$a;-><init>(Lbrh;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetrieverEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lbri$2;->b:Lbri;

    invoke-static {v0}, Lbri;->a(Lbri;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbri$a;

    iget-object v2, p0, Lbri$2;->a:Lbrh;

    invoke-direct {v1, v2, p2, p1}, Lbri$a;-><init>(Lbrh;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
