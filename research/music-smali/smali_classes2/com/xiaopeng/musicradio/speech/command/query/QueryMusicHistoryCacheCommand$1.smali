.class Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;
.super Ljava/lang/Object;
.source "QueryMusicHistoryCacheCommand.java"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/s<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;->c:Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;->c:Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;->a(Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/speech/command/query/QueryMusicHistoryCacheCommand$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
