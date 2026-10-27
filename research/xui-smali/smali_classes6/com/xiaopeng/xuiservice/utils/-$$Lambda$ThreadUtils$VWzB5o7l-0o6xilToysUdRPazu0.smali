.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$VWzB5o7l-0o6xilToysUdRPazu0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$VWzB5o7l-0o6xilToysUdRPazu0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$ThreadUtils$VWzB5o7l-0o6xilToysUdRPazu0;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->lambda$scheduleAtFixedRate$1(Ljava/lang/Runnable;)V

    return-void
.end method
