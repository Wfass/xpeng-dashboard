.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$Wn9nDSRwYdeocY_yEO7RwJ1ICsk;->f$2:Landroid/content/Intent;

    check-cast p1, Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->lambda$dispatchBroadcast$3(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/xuiservice/utils/BroadcastManager$ListenerRecord;)V

    return-void
.end method
