.class public final synthetic Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$iSfly4QCztco1xsm51igv7aZjNc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/ApplistManagerDumpHelper$TwoParamsCommandExecutor;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

.field private final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$iSfly4QCztco1xsm51igv7aZjNc;->f$0:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$iSfly4QCztco1xsm51igv7aZjNc;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final exec(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$iSfly4QCztco1xsm51igv7aZjNc;->f$0:Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/-$$Lambda$ApplistManagerServer$iSfly4QCztco1xsm51igv7aZjNc;->f$1:Ljava/io/PrintWriter;

    invoke-static {v0, v1, p1, p2}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->lambda$dump$4(Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
