.class public final synthetic Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$lU_zUdA6hhhbgJVjP8rZp7M9uj4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$lU_zUdA6hhhbgJVjP8rZp7M9uj4;->f$0:Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;

    return-void
.end method


# virtual methods
.method public final debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$lU_zUdA6hhhbgJVjP8rZp7M9uj4;->f$0:Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/ScreenTaskManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method
