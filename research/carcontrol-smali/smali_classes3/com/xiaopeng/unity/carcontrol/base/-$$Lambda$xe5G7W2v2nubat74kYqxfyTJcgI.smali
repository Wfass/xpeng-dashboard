.class public final synthetic Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$xe5G7W2v2nubat74kYqxfyTJcgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$xe5G7W2v2nubat74kYqxfyTJcgI;->f$0:Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/base/-$$Lambda$xe5G7W2v2nubat74kYqxfyTJcgI;->f$0:Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;

    invoke-virtual {v0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;->observeData()V

    return-void
.end method
