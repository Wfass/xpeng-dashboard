.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$1qxTP0YfqtvLgF7xGN7eQApUA0Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$1qxTP0YfqtvLgF7xGN7eQApUA0Q;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$AccessAppManager$1qxTP0YfqtvLgF7xGN7eQApUA0Q;->f$0:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/impl/AccessAppManager;->lambda$setAppAuth$2(Ljava/util/List;)V

    return-void
.end method
