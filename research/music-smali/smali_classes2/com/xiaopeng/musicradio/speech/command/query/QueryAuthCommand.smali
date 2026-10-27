.class public Lcom/xiaopeng/musicradio/speech/command/query/QueryAuthCommand;
.super Lboz;
.source "QueryAuthCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QueryAuthCommand"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lboz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QueryAuthCommand"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/h;->a()Lcom/xiaopeng/musicradio/model/dui/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/h;->s()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/musicradio/speech/command/query/QueryAuthCommand;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "QueryAuthCommand"

    return-object v0
.end method

.method public onEvent()V
    .locals 3

    .line 17
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->c()Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryAuthCommand;->mEvent:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryAuthCommand;->mData:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryAuthCommand;->mCallback:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/musicradio/speech/command/query/QueryAuthCommand;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-super {p0}, Lboz;->onEvent()V

    :goto_0
    return-void
.end method
