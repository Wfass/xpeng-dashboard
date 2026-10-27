.class Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$2;
.super Ljava/lang/Object;
.source "KaraokeManagerServer.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 107
    if-nez p2, :cond_0

    .line 108
    const-string v0, "please input params..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xa43dfbb

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "callback"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer$2;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;->access$400(Lcom/xiaopeng/xuiservice/opensdk/manager/KaraokeManagerServer;)V

    .line 114
    nop

    .line 118
    :goto_2
    return-void
.end method
