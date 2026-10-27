.class public abstract Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;
.super Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;
.source "WebSocketSubscriber2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;"
    }
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;


# instance fields
.field protected type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/WebSocketSubscriber;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->analysisType()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/gson/Gson;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private analysisType()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 39
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 42
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 43
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;->type:Ljava/lang/reflect/Type;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No generics found!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract onMessage(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;)V

    .line 51
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 61
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketSubscriber2;)V

    .line 63
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
