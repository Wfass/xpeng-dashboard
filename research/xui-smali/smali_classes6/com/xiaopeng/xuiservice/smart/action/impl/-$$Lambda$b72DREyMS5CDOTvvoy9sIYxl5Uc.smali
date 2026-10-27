.class public final synthetic Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$b72DREyMS5CDOTvvoy9sIYxl5Uc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$b72DREyMS5CDOTvvoy9sIYxl5Uc;->f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$b72DREyMS5CDOTvvoy9sIYxl5Uc;->f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionToast;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->stop()V

    return-void
.end method
