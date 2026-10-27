.class public final synthetic Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$a_VmbiMhQDbnx7lnLfwbZPssz4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$a_VmbiMhQDbnx7lnLfwbZPssz4U;->f$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/-$$Lambda$WatchDog$a_VmbiMhQDbnx7lnLfwbZPssz4U;->f$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->lambda$dump$4(Lcom/xiaopeng/xuiservice/debug/WatchDog;)V

    return-void
.end method
