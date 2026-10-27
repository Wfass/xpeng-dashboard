.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Red6CjctiE-5NWdgf_PkRyXqNK0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Red6CjctiE-5NWdgf_PkRyXqNK0;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$ThirdAppManager$Red6CjctiE-5NWdgf_PkRyXqNK0;->f$0:Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;->lambda$registerBroadCast$6(Lcom/xiaopeng/xuiservice/applist/impl/ThirdAppManager;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
