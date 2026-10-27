.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$bWpIQWdljcjntuIqR3zId978Gb0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$bWpIQWdljcjntuIqR3zId978Gb0;->f$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$bWpIQWdljcjntuIqR3zId978Gb0;->f$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->lambda$onRelease$2(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    return-void
.end method
