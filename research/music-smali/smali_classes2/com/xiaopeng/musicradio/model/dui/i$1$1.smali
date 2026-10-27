.class Lcom/xiaopeng/musicradio/model/dui/i$1$1;
.super Lcom/xiaopeng/speech/protocol/node/dialog/a;
.source "DuiSpeechModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/i$1;->a(Lbun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/dui/i$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/i$1;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/i$1$1;->a:Lcom/xiaopeng/musicradio/model/dui/i$1;

    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/node/dialog/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbwl;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/protocol/node/dialog/a;->a(Lbwl;)V

    const-string p1, "DuiSpeechModel"

    const-string v0, "onDialogEnd: ====="

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/i$1$1;->a:Lcom/xiaopeng/musicradio/model/dui/i$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/dui/i$1;->a:Lcom/xiaopeng/musicradio/model/dui/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/dui/i;->a(Lcom/xiaopeng/musicradio/model/dui/i;Z)Z

    .line 52
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbwo;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/speech/protocol/node/dialog/a;->a(Lbwo;)V

    const-string p1, "DuiSpeechModel"

    const-string v0, "onDialogStart: ======"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/i$1$1;->a:Lcom/xiaopeng/musicradio/model/dui/i$1;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/model/dui/i$1;->a:Lcom/xiaopeng/musicradio/model/dui/i;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/dui/i;->a(Lcom/xiaopeng/musicradio/model/dui/i;Z)Z

    .line 44
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
