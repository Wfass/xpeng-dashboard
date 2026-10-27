.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$1$P5LI9zQRu_qB8LTYD0TBbAg37cg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;


# direct methods
.method public synthetic constructor <init>([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$1$P5LI9zQRu_qB8LTYD0TBbAg37cg;->f$0:[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$1$P5LI9zQRu_qB8LTYD0TBbAg37cg;->f$0:[Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager$1;->lambda$onCommonEvent$0([Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    return-void
.end method
