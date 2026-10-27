.class public final synthetic Lcom/xiaopeng/xuiservice/bughunter/-$$Lambda$BugHunterHelper$w3E2Mj8x2ruYxSrLFOrjcIdPZyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/bughunter/Bug;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;Lcom/xiaopeng/xuiservice/bughunter/Bug;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bughunter/-$$Lambda$BugHunterHelper$w3E2Mj8x2ruYxSrLFOrjcIdPZyE;->f$0:Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/bughunter/-$$Lambda$BugHunterHelper$w3E2Mj8x2ruYxSrLFOrjcIdPZyE;->f$1:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/bughunter/-$$Lambda$BugHunterHelper$w3E2Mj8x2ruYxSrLFOrjcIdPZyE;->f$0:Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bughunter/-$$Lambda$BugHunterHelper$w3E2Mj8x2ruYxSrLFOrjcIdPZyE;->f$1:Lcom/xiaopeng/xuiservice/bughunter/Bug;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->lambda$reportBug$0(Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;Lcom/xiaopeng/xuiservice/bughunter/Bug;)V

    return-void
.end method
