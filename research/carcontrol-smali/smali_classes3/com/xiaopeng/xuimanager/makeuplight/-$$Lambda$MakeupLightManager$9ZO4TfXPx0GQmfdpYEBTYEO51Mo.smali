.class public final synthetic Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$9ZO4TfXPx0GQmfdpYEBTYEO51Mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$9ZO4TfXPx0GQmfdpYEBTYEO51Mo;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$9ZO4TfXPx0GQmfdpYEBTYEO51Mo;->f$0:Z

    check-cast p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->lambda$dispatchAvailableToClient$0(ZLcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V

    return-void
.end method
