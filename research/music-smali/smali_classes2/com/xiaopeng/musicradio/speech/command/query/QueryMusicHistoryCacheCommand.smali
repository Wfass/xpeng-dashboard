.class public Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;
.super Lboz;
.source "QueryMusicHistoryCacheCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QueryMusicHistoryCacheCommand"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lboz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
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

    const-string v0, "QueryMusicHistoryCacheCommand"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance p2, Landroidx/lifecycle/r;

    invoke-direct {p2}, Landroidx/lifecycle/r;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;-><init>(Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2, v0}, Landroidx/lifecycle/r;->a(Landroidx/lifecycle/s;)V

    .line 32
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/h;->a()Lcom/xiaopeng/musicradio/model/dui/h;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/musicradio/model/dui/h;->a(Landroidx/lifecycle/r;Landroidx/lifecycle/s;)V

    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "QueryMusicHistoryCacheCommand"

    return-object v0
.end method
