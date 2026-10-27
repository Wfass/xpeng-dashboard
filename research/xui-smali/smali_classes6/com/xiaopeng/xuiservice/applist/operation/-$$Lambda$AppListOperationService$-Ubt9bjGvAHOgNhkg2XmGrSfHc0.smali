.class public final synthetic Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$-Ubt9bjGvAHOgNhkg2XmGrSfHc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$-Ubt9bjGvAHOgNhkg2XmGrSfHc0;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/-$$Lambda$AppListOperationService$-Ubt9bjGvAHOgNhkg2XmGrSfHc0;->f$0:Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    check-cast p1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->lambda$-Ubt9bjGvAHOgNhkg2XmGrSfHc0(Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)Lcom/xiaopeng/xuiservice/applist/operation/AppOperation;

    move-result-object p1

    return-object p1
.end method
