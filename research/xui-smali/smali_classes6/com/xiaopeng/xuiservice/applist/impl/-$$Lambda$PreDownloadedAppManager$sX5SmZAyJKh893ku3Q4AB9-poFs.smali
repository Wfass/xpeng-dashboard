.class public final synthetic Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$sX5SmZAyJKh893ku3Q4AB9-poFs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$sX5SmZAyJKh893ku3Q4AB9-poFs;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$sX5SmZAyJKh893ku3Q4AB9-poFs;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$sX5SmZAyJKh893ku3Q4AB9-poFs;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/impl/-$$Lambda$PreDownloadedAppManager$sX5SmZAyJKh893ku3Q4AB9-poFs;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/applist/impl/PreDownloadedAppManager;->lambda$handlePreLoadApp$5(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
