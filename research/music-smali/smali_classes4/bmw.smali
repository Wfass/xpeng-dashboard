.class public Lbmw;
.super Ljava/lang/Object;
.source "ProgramMediaCon.java"

# interfaces
.implements Lazo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 16
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loveOrNot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " programBean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgramMediaCon"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 23
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p1

    .line 24
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getChannelId()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1, v1, v0}, Lbmn;->b(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    goto :goto_1

    .line 26
    :cond_2
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p1

    .line 27
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    :goto_1
    return-void
.end method
