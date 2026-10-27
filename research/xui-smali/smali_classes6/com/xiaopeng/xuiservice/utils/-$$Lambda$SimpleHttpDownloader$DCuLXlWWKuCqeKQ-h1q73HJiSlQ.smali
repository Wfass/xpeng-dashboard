.class public final synthetic Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/io/File;

.field private final synthetic f$2:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;->f$1:Ljava/io/File;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;->f$2:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;->f$1:Ljava/io/File;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/utils/-$$Lambda$SimpleHttpDownloader$DCuLXlWWKuCqeKQ-h1q73HJiSlQ;->f$2:Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader;->lambda$enqueue$0(Ljava/lang/String;Ljava/io/File;Lcom/xiaopeng/xuiservice/utils/SimpleHttpDownloader$DownloadCallback;)V

    return-void
.end method
