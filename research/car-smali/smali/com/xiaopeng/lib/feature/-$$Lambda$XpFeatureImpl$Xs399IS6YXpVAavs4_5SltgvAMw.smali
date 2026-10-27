.class public final synthetic Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$Xs399IS6YXpVAavs4_5SltgvAMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lib/feature/XpFeatureImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$Xs399IS6YXpVAavs4_5SltgvAMw;->f$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$Xs399IS6YXpVAavs4_5SltgvAMw;->f$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->lambda$loadConfig$1(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
