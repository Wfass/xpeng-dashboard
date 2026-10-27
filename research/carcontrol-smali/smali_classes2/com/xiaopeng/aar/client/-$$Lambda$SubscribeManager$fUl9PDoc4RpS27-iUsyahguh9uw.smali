.class public final synthetic Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/aar/client/SubscribeManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aar/client/SubscribeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;->f$0:Lcom/xiaopeng/aar/client/SubscribeManager;

    iput-object p2, p0, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;->f$0:Lcom/xiaopeng/aar/client/SubscribeManager;

    iget-object v1, p0, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/aar/client/-$$Lambda$SubscribeManager$fUl9PDoc4RpS27-iUsyahguh9uw;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/aar/client/SubscribeManager;->lambda$unSubscribe$3$SubscribeManager(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
