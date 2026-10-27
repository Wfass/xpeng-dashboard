.class Lcom/xiaopeng/xui/app/XPopPanel$2;
.super Ljava/lang/Object;
.source "XPopPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XPopPanel;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XPopPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPopPanel;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$2;->this$0:Lcom/xiaopeng/xui/app/XPopPanel;

    invoke-static {v0}, Lcom/xiaopeng/xui/app/XPopPanel;->access$400(Lcom/xiaopeng/xui/app/XPopPanel;)Lcom/xiaopeng/xui/app/XPopPanel$TN;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$TN;->access$300(Lcom/xiaopeng/xui/app/XPopPanel$TN;I)V

    return-void
.end method
