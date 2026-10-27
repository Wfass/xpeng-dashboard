.class public Lcom/xiaopeng/musicradio/utils/q;
.super Ljava/lang/Object;
.source "DataHolder.java"


# static fields
.field private static volatile a:Lcom/xiaopeng/musicradio/utils/q;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/q;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/utils/q;
    .locals 2

    .line 17
    sget-object v0, Lcom/xiaopeng/musicradio/utils/q;->a:Lcom/xiaopeng/musicradio/utils/q;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/xiaopeng/musicradio/utils/q;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/xiaopeng/musicradio/utils/q;->a:Lcom/xiaopeng/musicradio/utils/q;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/xiaopeng/musicradio/utils/q;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/utils/q;-><init>()V

    sput-object v1, Lcom/xiaopeng/musicradio/utils/q;->a:Lcom/xiaopeng/musicradio/utils/q;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/q;->a:Lcom/xiaopeng/musicradio/utils/q;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    iget-object p2, p0, Lcom/xiaopeng/musicradio/utils/q;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
