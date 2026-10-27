.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$X3DRK9m_yoPc6JJpB_wQN17RJ7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$X3DRK9m_yoPc6JJpB_wQN17RJ7A;->f$0:Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$MobileAppManager$X3DRK9m_yoPc6JJpB_wQN17RJ7A;->f$0:Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/MobileAppManager;->lambda$sharedAppTransfer$0(Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)Z

    move-result p1

    return p1
.end method
