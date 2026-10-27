.class public final synthetic Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$qZ3h3jXsT-xm4GnviXBH4K_JNBI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$qZ3h3jXsT-xm4GnviXBH4K_JNBI;->f$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$qZ3h3jXsT-xm4GnviXBH4K_JNBI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$qZ3h3jXsT-xm4GnviXBH4K_JNBI;->f$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$qZ3h3jXsT-xm4GnviXBH4K_JNBI;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->lambda$watchdogHandleMessage$0(Lcom/xiaopeng/xuiservice/debug/WatchDog;Ljava/lang/String;)V

    return-void
.end method
