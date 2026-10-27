.class Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$2;
.super Ljava/lang/Object;
.source "XpIcmAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->handleIGON()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;)V

    .line 113
    return-void
.end method
