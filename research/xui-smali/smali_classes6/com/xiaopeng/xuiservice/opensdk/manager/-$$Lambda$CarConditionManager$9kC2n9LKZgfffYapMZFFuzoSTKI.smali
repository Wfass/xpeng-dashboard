.class public final synthetic Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarConditionManager$9kC2n9LKZgfffYapMZFFuzoSTKI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarConditionManager$9kC2n9LKZgfffYapMZFFuzoSTKI;->f$0:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarConditionManager$9kC2n9LKZgfffYapMZFFuzoSTKI;->f$0:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->lambda$addListener$0(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    return-void
.end method
