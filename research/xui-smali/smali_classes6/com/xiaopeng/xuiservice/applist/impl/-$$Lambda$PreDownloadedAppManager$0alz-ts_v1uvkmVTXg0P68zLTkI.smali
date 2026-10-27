.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$0alz-ts_v1uvkmVTXg0P68zLTkI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/Map;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$0alz-ts_v1uvkmVTXg0P68zLTkI;->f$0:Ljava/util/Map;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$0alz-ts_v1uvkmVTXg0P68zLTkI;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$0alz-ts_v1uvkmVTXg0P68zLTkI;->f$0:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$0alz-ts_v1uvkmVTXg0P68zLTkI;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->lambda$handlePreLoadApp$6(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
