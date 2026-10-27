.class public final synthetic Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/logictree/g;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/logictree/g;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;->f$0:Lcom/xiaopeng/logictree/g;

    iput-boolean p2, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;->f$1:Z

    iput-object p3, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;->f$0:Lcom/xiaopeng/logictree/g;

    iget-boolean v1, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;->f$1:Z

    iget-object v2, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/logictree/g;->lambda$XWI6atI8Q4M1K-fcz1bpVspQPGE(Lcom/xiaopeng/logictree/g;ZLjava/lang/String;)V

    return-void
.end method
