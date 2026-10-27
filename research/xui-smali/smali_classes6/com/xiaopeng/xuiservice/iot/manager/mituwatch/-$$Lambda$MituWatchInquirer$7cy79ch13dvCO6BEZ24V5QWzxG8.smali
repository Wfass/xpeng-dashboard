.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchInquirer$7cy79ch13dvCO6BEZ24V5QWzxG8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchInquirer$7cy79ch13dvCO6BEZ24V5QWzxG8;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchInquirer$7cy79ch13dvCO6BEZ24V5QWzxG8;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->lambda$retrieveBaseInfo$1(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)V

    return-void
.end method
