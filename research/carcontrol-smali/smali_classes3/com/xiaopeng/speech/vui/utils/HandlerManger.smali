.class public Lcom/xiaopeng/speech/vui/utils/HandlerManger;
.super Ljava/lang/Object;
.source "HandlerManger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerManger"

.field private static mHandlerManager:Lcom/xiaopeng/speech/vui/utils/HandlerManger;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/HandlerManger;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/utils/HandlerManger;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->mHandlerManager:Lcom/xiaopeng/speech/vui/utils/HandlerManger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/speech/vui/utils/HandlerManger;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->mHandlerManager:Lcom/xiaopeng/speech/vui/utils/HandlerManger;

    return-object v0
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;J)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HandlerManger"

    const-string v1, "removeCallbacks === "

    .line 22
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
