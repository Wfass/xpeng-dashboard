.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$yDOwPz4oeDIm2vHLWFn4AdNnrro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$yDOwPz4oeDIm2vHLWFn4AdNnrro;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PresetAppManager$yDOwPz4oeDIm2vHLWFn4AdNnrro;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PresetAppManager;->lambda$handleApplistChanged$7(Ljava/util/Map;Lcom/xiaopeng/xuimanager/applist/data/InnerAppInfo;)V

    return-void
.end method
