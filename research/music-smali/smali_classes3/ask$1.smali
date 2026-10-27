.class Lask$1;
.super Ljava/lang/Object;
.source "AudioFocusModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lask;


# direct methods
.method constructor <init>(Lask;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lask$1;->a:Lask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 91
    invoke-interface {v0, v2}, Lbfe;->isInCall(Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 93
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFocusGain, isInCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",,,,isA2dpConnect,,,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",,,AudioType,,,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v3

    invoke-virtual {v3}, Laqr;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioFocusModel"

    .line 93
    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lask$1;->a:Lask;

    invoke-static {v2, v1}, Lask;->a(Lask;Z)Z

    .line 98
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v1

    invoke-virtual {v1}, Laqr;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 99
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->o()V

    .line 102
    :cond_1
    new-instance v1, Lask$1$1;

    invoke-direct {v1, p0, v0}, Lask$1$1;-><init>(Lask$1;Z)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
