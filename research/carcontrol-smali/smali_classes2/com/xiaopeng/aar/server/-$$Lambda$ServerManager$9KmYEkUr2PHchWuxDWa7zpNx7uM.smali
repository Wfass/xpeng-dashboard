.class public final synthetic Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$9KmYEkUr2PHchWuxDWa7zpNx7uM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/aar/server/ServerManager;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aar/server/ServerManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$9KmYEkUr2PHchWuxDWa7zpNx7uM;->f$0:Lcom/xiaopeng/aar/server/ServerManager;

    iput-object p2, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$9KmYEkUr2PHchWuxDWa7zpNx7uM;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$9KmYEkUr2PHchWuxDWa7zpNx7uM;->f$0:Lcom/xiaopeng/aar/server/ServerManager;

    iget-object v1, p0, Lcom/xiaopeng/aar/server/-$$Lambda$ServerManager$9KmYEkUr2PHchWuxDWa7zpNx7uM;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aar/server/ServerManager;->lambda$init$0$ServerManager(Landroid/content/Context;)V

    return-void
.end method
