.class public final synthetic Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$lo5LiohUZmmch6zgPTwAu99F1XY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/action/Action;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$lo5LiohUZmmch6zgPTwAu99F1XY;->f$0:Lcom/xiaopeng/xuiservice/smart/action/Action;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/-$$Lambda$lo5LiohUZmmch6zgPTwAu99F1XY;->f$0:Lcom/xiaopeng/xuiservice/smart/action/Action;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/smart/action/Action;->stop()V

    return-void
.end method
