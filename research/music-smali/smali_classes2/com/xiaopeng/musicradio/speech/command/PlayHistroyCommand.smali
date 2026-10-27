.class public Lcom/xiaopeng/musicradio/speech/command/PlayHistroyCommand;
.super Lbox;
.source "PlayHistroyCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PlayHistroyCommand"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " data = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayHistroyCommand"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/g;->a()Lcom/xiaopeng/musicradio/model/dui/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/model/dui/g;->b(Lcom/xiaopeng/speech/protocol/node/music/bean/CollectHistoryMusic;)V

    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayHistroyCommand"

    return-object v0
.end method
