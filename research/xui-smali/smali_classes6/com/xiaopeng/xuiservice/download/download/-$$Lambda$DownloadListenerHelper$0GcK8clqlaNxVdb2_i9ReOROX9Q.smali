.class public final synthetic Lcom/xiaopeng/xuiservice/download/download/-$$Lambda$DownloadListenerHelper$0GcK8clqlaNxVdb2_i9ReOROX9Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Landroid/app/DownloadManager$Request;


# direct methods
.method public synthetic constructor <init>(Landroid/app/DownloadManager$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/download/download/-$$Lambda$DownloadListenerHelper$0GcK8clqlaNxVdb2_i9ReOROX9Q;->f$0:Landroid/app/DownloadManager$Request;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/download/download/-$$Lambda$DownloadListenerHelper$0GcK8clqlaNxVdb2_i9ReOROX9Q;->f$0:Landroid/app/DownloadManager$Request;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/xuiservice/download/download/DownloadListenerHelper;->lambda$0GcK8clqlaNxVdb2_i9ReOROX9Q(Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    return-void
.end method
