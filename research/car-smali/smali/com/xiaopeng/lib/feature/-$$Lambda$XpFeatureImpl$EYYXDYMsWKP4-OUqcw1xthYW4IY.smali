.class public final synthetic Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$EYYXDYMsWKP4-OUqcw1xthYW4IY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

.field private final synthetic f$1:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$EYYXDYMsWKP4-OUqcw1xthYW4IY;->f$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    iput-object p2, p0, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$EYYXDYMsWKP4-OUqcw1xthYW4IY;->f$1:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$EYYXDYMsWKP4-OUqcw1xthYW4IY;->f$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/-$$Lambda$XpFeatureImpl$EYYXDYMsWKP4-OUqcw1xthYW4IY;->f$1:Landroid/content/IntentFilter;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->lambda$init$0(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Landroid/content/IntentFilter;)V

    return-void
.end method
