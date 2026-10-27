.class public Lcom/xiaopeng/lib/InitEventHolder;
.super Ljava/lang/Object;
.source "InitEventHolder.java"

# interfaces
.implements Lcom/xiaopeng/lib/HttpInitEventListener;


# static fields
.field private static volatile sHttpInitEventListener:Lcom/xiaopeng/lib/InitEventHolder;


# instance fields
.field private mProxy:Lcom/xiaopeng/lib/HttpInitEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/xiaopeng/lib/InitEventHolder;

    invoke-direct {v0}, Lcom/xiaopeng/lib/InitEventHolder;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/InitEventHolder;->sHttpInitEventListener:Lcom/xiaopeng/lib/InitEventHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/lib/HttpInitEventListener;
    .locals 1

    .line 24
    sget-object v0, Lcom/xiaopeng/lib/InitEventHolder;->sHttpInitEventListener:Lcom/xiaopeng/lib/InitEventHolder;

    return-object v0
.end method

.method public static setProxy(Lcom/xiaopeng/lib/HttpInitEventListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/xiaopeng/lib/HttpInitEventListener;

    .line 28
    sget-object v0, Lcom/xiaopeng/lib/InitEventHolder;->sHttpInitEventListener:Lcom/xiaopeng/lib/InitEventHolder;

    iput-object p0, v0, Lcom/xiaopeng/lib/InitEventHolder;->mProxy:Lcom/xiaopeng/lib/HttpInitEventListener;

    .line 29
    return-void
.end method


# virtual methods
.method public onInitException(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/lib/InitEventHolder;->mProxy:Lcom/xiaopeng/lib/HttpInitEventListener;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/lib/InitEventHolder;->mProxy:Lcom/xiaopeng/lib/HttpInitEventListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method
