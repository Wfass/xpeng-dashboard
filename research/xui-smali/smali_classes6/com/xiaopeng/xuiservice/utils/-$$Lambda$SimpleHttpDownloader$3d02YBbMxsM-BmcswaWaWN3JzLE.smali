.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:I

.field private final synthetic f$4:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final synthetic f$5:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$0:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$2:Ljava/util/ArrayList;

    iput p4, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$3:I

    iput-object p5, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$4:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$5:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$0:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$2:Ljava/util/ArrayList;

    iget v3, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$3:I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$4:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$3d02YBbMxsM-BmcswaWaWN3JzLE;->f$5:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->lambda$enqueueAll$1(Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$Item;Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$MultiDownloadCallback;)V

    return-void
.end method
