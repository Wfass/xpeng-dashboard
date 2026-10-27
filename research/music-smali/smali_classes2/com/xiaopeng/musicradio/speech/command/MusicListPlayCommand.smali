.class public Lcom/xiaopeng/musicradio/speech/command/MusicListPlayCommand;
.super Lbox;
.source "MusicListPlayCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicListPlayCommand"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 20
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

    const-string v0, "MusicListPlayCommand"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/g;->a()Lcom/xiaopeng/musicradio/model/dui/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/dui/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "MusicListPlayCommand"

    return-object v0
.end method
