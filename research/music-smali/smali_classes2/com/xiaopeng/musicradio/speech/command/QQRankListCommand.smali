.class public Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;
.super Lbox;
.source "QQRankListCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QQRankListCommand"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;->getCommand()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " account = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v1

    invoke-virtual {v1}, Lbdu;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p1, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand$1;-><init>(Lcom/xiaopeng/musicradio/speech/command/QQRankListCommand;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b()Lbaj;
    .locals 1

    .line 54
    invoke-static {}, Lbai;->a()Lbai;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "QQRankListCommand"

    return-object v0
.end method
