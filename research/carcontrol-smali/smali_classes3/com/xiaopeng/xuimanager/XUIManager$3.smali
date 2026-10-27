.class Lcom/xiaopeng/xuimanager/XUIManager$3;
.super Ljava/lang/Object;
.source "XUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/XUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/XUIManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/XUIManager;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager$3;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$3;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->access$800(Lcom/xiaopeng/xuimanager/XUIManager;)V

    return-void
.end method
