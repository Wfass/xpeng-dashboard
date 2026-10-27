.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$TyJ1I8J68ku7sSc8oSTGmg8jYpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$TyJ1I8J68ku7sSc8oSTGmg8jYpw;->f$0:I

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$TyJ1I8J68ku7sSc8oSTGmg8jYpw;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$TyJ1I8J68ku7sSc8oSTGmg8jYpw;->f$0:I

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$BroadcastManager$TyJ1I8J68ku7sSc8oSTGmg8jYpw;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->lambda$sendBroadcastAsScreen$1(ILandroid/content/Intent;)V

    return-void
.end method
