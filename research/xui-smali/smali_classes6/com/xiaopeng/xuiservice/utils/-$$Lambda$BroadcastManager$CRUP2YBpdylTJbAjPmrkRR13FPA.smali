.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$CRUP2YBpdylTJbAjPmrkRR13FPA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$CRUP2YBpdylTJbAjPmrkRR13FPA;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$CRUP2YBpdylTJbAjPmrkRR13FPA;->f$0:Landroid/content/Intent;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->lambda$sendBroadcast$2(Landroid/content/Intent;)V

    return-void
.end method
